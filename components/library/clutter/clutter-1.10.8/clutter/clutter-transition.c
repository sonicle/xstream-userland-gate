/*
 * Clutter.
 *
 * An OpenGL based 'interactive canvas' library.
 *
 * Copyright (C) 2012 Intel Corporation
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Author: Emmanuele Bassi <ebassi@linux.intel.com>
 */

/**
 * SECTION:clutter-transition
 * @Title: ClutterTransition
 * @Short_Description: Transition between two values
 *
 * #ClutterTransition is a subclass of #ClutterTimeline that computes
 * the interpolation between two values, stored by a #ClutterInterval.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "clutter-transition.h"

#include "clutter-animatable.h"
#include "clutter-debug.h"
#include "clutter-interval.h"
#include "clutter-private.h"
#include "clutter-timeline.h"

struct _ClutterTransitionPrivate
{
  ClutterInterval *interval;
  ClutterAnimatable *animatable;

  guint remove_on_complete : 1;
};

enum
{
  PROP_0,

  PROP_INTERVAL,
  PROP_ANIMATABLE,
  PROP_REMOVE_ON_COMPLETE,

  PROP_LAST
};

static GParamSpec *obj_props[PROP_LAST] = { NULL, };

static GQuark quark_animatable_set = 0;

G_DEFINE_ABSTRACT_TYPE (ClutterTransition, clutter_transition, CLUTTER_TYPE_TIMELINE)

static void
clutter_transition_attach (ClutterTransition *transition,
                           ClutterAnimatable *animatable)
{
  CLUTTER_TRANSITION_GET_CLASS (transition)->attached (transition, animatable);
}

static void
clutter_transition_detach (ClutterTransition *transition,
                           ClutterAnimatable *animatable)
{
  CLUTTER_TRANSITION_GET_CLASS (transition)->detached (transition, animatable);
}

static void
clutter_transition_real_compute_value (ClutterTransition *transition,
                                       ClutterAnimatable *animatable,
                                       ClutterInterval   *interval,
                                       gdouble            progress)
{
}

static void
clutter_transition_real_attached (ClutterTransition *transition,
                                  ClutterAnimatable *animatable)
{
}

static void
clutter_transition_real_detached (ClutterTransition *transition,
                                  ClutterAnimatable *animatable)
{
}

static void
clutter_transition_new_frame (ClutterTimeline *timeline,
                              gint             elapsed G_GNUC_UNUSED)
{
  ClutterTransition *transition = CLUTTER_TRANSITION (timeline);
  ClutterTransitionPrivate *priv = transition->priv;
  gdouble progress;

  if (priv->interval == NULL ||
      priv->animatable == NULL)
    return;

  progress = clutter_timeline_get_progress (timeline);

  CLUTTER_TRANSITION_GET_CLASS (timeline)->compute_value (transition,
                                                          priv->animatable,
                                                          priv->interval,
                                                          progress);
}

static void
clutter_transition_completed (ClutterTimeline *timeline)
{
  ClutterTransitionPrivate *priv = CLUTTER_TRANSITION (timeline)->priv;

  if (priv->animatable != NULL && priv->remove_on_complete)
    {
      int n_repeats, cur_repeat;

      n_repeats = clutter_timeline_get_repeat_count (timeline);
      cur_repeat = clutter_timeline_get_current_repeat (timeline);

      if (n_repeats == 0 || cur_repeat == n_repeats)
        {
          clutter_transition_detach (CLUTTER_TRANSITION (timeline),
                                     priv->animatable);
          g_clear_object (&priv->animatable);
          g_object_unref (timeline);
        }
    }
}

static void
clutter_transition_set_property (GObject      *gobject,
                                 guint         prop_id,
                                 const GValue *value,
                                 GParamSpec   *pspec)
{
  ClutterTransition *transition = CLUTTER_TRANSITION (gobject);

  switch (prop_id)
    {
    case PROP_INTERVAL:
      clutter_transition_set_interval (transition, g_value_get_object (value));
      break;

    case PROP_ANIMATABLE:
      clutter_transition_set_animatable (transition, g_value_get_object (value));
      break;

    case PROP_REMOVE_ON_COMPLETE:
      clutter_transition_set_remove_on_complete (transition, g_value_get_boolean (value));
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (gobject, prop_id, pspec);
      break;
    }
}

static void
clutter_transition_get_property (GObject    *gobject,
                                 guint       prop_id,
                                 GValue     *value,
                                 GParamSpec *pspec)
{
  ClutterTransitionPrivate *priv = CLUTTER_TRANSITION (gobject)->priv;

  switch (prop_id)
    {
    case PROP_INTERVAL:
      g_value_set_object (value, priv->interval);
      break;

    case PROP_ANIMATABLE:
      g_value_set_object (value, priv->animatable);
      break;

    case PROP_REMOVE_ON_COMPLETE:
      g_value_set_boolean (value, priv->remove_on_complete);
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (gobject, prop_id, pspec);
      break;
    }
}

static void
clutter_transition_dispose (GObject *gobject)
{
  ClutterTransitionPrivate *priv = CLUTTER_TRANSITION (gobject)->priv;

  if (priv->animatable != NULL)
    clutter_transition_detach (CLUTTER_TRANSITION (gobject),
                               priv->animatable);

  g_clear_object (&priv->interval);
  g_clear_object (&priv->animatable);

  G_OBJECT_CLASS (clutter_transition_parent_class)->dispose (gobject);
}

static void
clutter_transition_class_init (ClutterTransitionClass *klass)
{
  ClutterTimelineClass *timeline_class = CLUTTER_TIMELINE_CLASS (klass);
  GObjectClass *gobject_class = G_OBJECT_CLASS (klass);

  quark_animatable_set =
    g_quark_from_static_string ("-clutter-transition-animatable-set");

  g_type_class_add_private (klass, sizeof (ClutterTransitionPrivate));

  klass->compute_value = clutter_transition_real_compute_value;
  klass->attached = clutter_transition_real_attached;
  klass->detached = clutter_transition_real_detached;

  timeline_class->new_frame = clutter_transition_new_frame;
  timeline_class->completed = clutter_transition_completed;

  gobject_class->set_property = clutter_transition_set_property;
  gobject_class->get_property = clutter_transition_get_property;
  gobject_class->dispose = clutter_transition_dispose;

  /**
   * ClutterTransition:interval:
   *
   * The #ClutterInterval used to describe the initial and final states
   * of the transition.
   *
   * Since: 1.10
   */
  obj_props[PROP_INTERVAL] =
    g_param_spec_object ("interval",
                         P_("Interval"),
                         P_("The interval of values to transition"),
                         CLUTTER_TYPE_INTERVAL,
                         G_PARAM_READWRITE |
                         G_PARAM_STATIC_STRINGS);

  /**
   * ClutterTransition:animatable:
   *
   * The #ClutterAnimatable instance currently being animated.
   *
   * Since: 1.10
   */
  obj_props[PROP_ANIMATABLE] =
    g_param_spec_object ("animatable",
                         P_("Animatable"),
                         P_("The animatable object"),
                         CLUTTER_TYPE_ANIMATABLE,
                         G_PARAM_READWRITE |
                         G_PARAM_STATIC_STRINGS);

  /**
   * ClutterTransition:remove-on-complete:
   *
   * Whether the #ClutterTransition should be automatically detached
   * from the #ClutterTransition:animatable instance whenever the
   * #ClutterTimeline::completed signal is emitted.
   *
   * The #ClutterTransition:remove-on-complete property takes into
   * account the value of the #ClutterTimeline:repeat-count property,
   * and it only detaches the transition if the transition is not
   * repeating.
   *
   * Since: 1.10
   */
  obj_props[PROP_REMOVE_ON_COMPLETE] =
    g_param_spec_boolean ("remove-on-complete",
                          P_("Remove on Complete"),
                          P_("Detach the transition when completed"),
                          FALSE,
                          G_PARAM_READWRITE | G_PARAM_STATIC_STRINGS);

  g_object_class_install_properties (gobject_class, PROP_LAST, obj_props);
}

static void
clutter_transition_init (ClutterTransition *self)
{
  self->priv = G_TYPE_INSTANCE_GET_PRIVATE (self, CLUTTER_TYPE_TRANSITION,
                                            ClutterTransitionPrivate);
}

/**
 * clutter_transition_set_interval:
 * @transition: a #ClutterTransition
 * @interval: (allow-none): a #ClutterInterval, or %NULL
 *
 * Sets the #ClutterTransition:interval property using @interval.
 *
 * The @transition will acquire a reference on the @interval, sinking
 * the floating flag on it if necessary.
 *
 * Since: 1.10
 */
void
clutter_transition_set_interval (ClutterTransition *transition,
                                 ClutterInterval   *interval)
{
  ClutterTransitionPrivate *priv;

  g_return_if_fail (CLUTTER_IS_TRANSITION (transition));
  g_return_if_fail (interval == NULL || CLUTTER_IS_INTERVAL (interval));

  priv = transition->priv;

  g_clear_object (&priv->interval);

  if (interval != NULL)
    priv->interval = g_object_ref_sink (interval);

  g_object_notify_by_pspec (G_OBJECT (transition), obj_props[PROP_INTERVAL]);
}

/**
 * clutter_transition_get_interval:
 * @transition: a #ClutterTransition
 *
 * Retrieves the interval set using clutter_transition_set_interval()
 *
 * Return value: (transfer none): a #ClutterInterval, or %NULL; the returned
 *   interval is owned by the #ClutterTransition and it should not be freed
 *   directly
 *
 * Since: 1.10
 */
ClutterInterval *
clutter_transition_get_interval (ClutterTransition *transition)
{
  g_return_val_if_fail (CLUTTER_IS_TRANSITION (transition), NULL);

  return transition->priv->interval;
}

/**
 * clutter_transition_set_animatable:
 * @transition: a #ClutterTransition
 * @animatable: (allow-none): a #ClutterAnimatable, or %NULL
 *
 * Sets the #ClutterTransition:animatable property.
 *
 * The @transition will acquire a reference to the @animatable instance,
 * and will call the #ClutterTransitionClass.attached() virtual function.
 *
 * If an existing #ClutterAnimatable is attached to @transition, the
 * reference will be released, and the #ClutterTransitionClass.detached()
 * virtual function will be called.
 *
 * Since: 1.10
 */
void
clutter_transition_set_animatable (ClutterTransition *transition,
                                   ClutterAnimatable *animatable)
{
  ClutterTransitionPrivate *priv;

  g_return_if_fail (CLUTTER_IS_TRANSITION (transition));
  g_return_if_fail (animatable == NULL || CLUTTER_IS_ANIMATABLE (animatable));

  priv = transition->priv;

  if (priv->animatable == animatable)
    return;

  if (priv->animatable != NULL)
    clutter_transition_detach (transition, priv->animatable);

  g_clear_object (&priv->animatable);

  if (animatable != NULL)
    {
      priv->animatable = g_object_ref (animatable);
      clutter_transition_attach (transition, priv->animatable);
    }
}

/**
 * clutter_transition_get_animatable:
 * @transition: a #ClutterTransition
 *
 * Retrieves the #ClutterAnimatable set using clutter_transition_set_animatable().
 *
 * Return value: (transfer none): a #ClutterAnimatable, or %NULL; the returned
 *   animatable is owned by the #ClutterTransition, and it should not be freed
 *   directly.
 *
 * Since: 1.10
 */
ClutterAnimatable *
clutter_transition_get_animatable (ClutterTransition *transition)
{
  g_return_val_if_fail (CLUTTER_IS_TRANSITION (transition), NULL);

  return transition->priv->animatable;
}

/**
 * clutter_transition_set_remove_on_complete:
 * @transition: a #ClutterTransition
 * @remove_complete: whether to detach @transition when complete
 *
 * Sets whether @transition should be detached from the #ClutterAnimatable
 * set using clutter_transition_set_animatable() when the
 * #ClutterTimeline::completed signal is emitted.
 *
 * Since: 1.10
 */
void
clutter_transition_set_remove_on_complete (ClutterTransition *transition,
                                           gboolean           remove_complete)
{
  g_return_if_fail (CLUTTER_IS_TRANSITION (transition));

  remove_complete = !!remove_complete;

  if (transition->priv->remove_on_complete == remove_complete)
    return;

  transition->priv->remove_on_complete = remove_complete;

  g_object_notify_by_pspec (G_OBJECT (transition),
                            obj_props[PROP_REMOVE_ON_COMPLETE]);
}

/**
 * clutter_transition_get_remove_on_complete:
 * @transition: a #ClutterTransition
 *
 * Retrieves the value of the #ClutterTransition:remove-on-complete property.
 *
 * Return value: %TRUE if the @transition should be detached when complete,
 *   and %FALSE otherwise
 *
 * Since: 1.10
 */
gboolean
clutter_transition_get_remove_on_complete (ClutterTransition *transition)
{
  g_return_val_if_fail (CLUTTER_IS_TRANSITION (transition), FALSE);

  return transition->priv->remove_on_complete;
}
