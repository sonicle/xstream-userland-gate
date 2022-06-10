#include <glib.h>
#include <clutter/clutter.h>
#include "test-conform-common.h"

void
actor_iter_traverse_children (TestConformSimpleFixture *fixture G_GNUC_UNUSED,
                              gconstpointer dummy G_GNUC_UNUSED)
{
  ClutterActorIter iter;
  ClutterActor *actor;
  ClutterActor *child;
  int i, n_actors;

  actor = clutter_actor_new ();
  clutter_actor_set_name (actor, "root");
  g_object_ref_sink (actor);

  n_actors = g_random_int_range (10, 50);
  for (i = 0; i < n_actors; i++)
    {
      char *name;

      name = g_strdup_printf ("actor%d", i);
      child = clutter_actor_new ();
      clutter_actor_set_name (child, name);

      clutter_actor_add_child (actor, child);

      g_free (name);
    }

  g_assert_cmpint (clutter_actor_get_n_children (actor), ==, n_actors);

  i = 0;
  clutter_actor_iter_init (&iter, actor);
  while (clutter_actor_iter_next (&iter, &child))
    {
      g_assert (CLUTTER_IS_ACTOR (child));
      g_assert (clutter_actor_get_parent (child) == actor);

      if (g_test_verbose ())
        g_print ("actor %d = '%s'\n", i, clutter_actor_get_name (child));

      if (i == 0)
        g_assert (child == clutter_actor_get_first_child (actor));

      if (i == (n_actors - 1))
        g_assert (child == clutter_actor_get_last_child (actor));

      i += 1;
    }

  g_assert_cmpint (i, ==, n_actors);

  i = 0;
  clutter_actor_iter_init (&iter, actor);
  while (clutter_actor_iter_prev (&iter, &child))
    {
      g_assert (CLUTTER_IS_ACTOR (child));
      g_assert (clutter_actor_get_parent (child) == actor);

      if (g_test_verbose ())
        g_print ("actor %d = '%s'\n", i, clutter_actor_get_name (child));

      if (i == 0)
        g_assert (child == clutter_actor_get_last_child (actor));

      if (i == (n_actors - 1))
        g_assert (child == clutter_actor_get_first_child (actor));

      i += 1;
    }

  g_object_unref (actor);
}

void
actor_iter_traverse_remove (TestConformSimpleFixture *fixture G_GNUC_UNUSED,
                            gconstpointer dummy G_GNUC_UNUSED)
{
  ClutterActorIter iter;
  ClutterActor *actor;
  ClutterActor *child;
  int i, n_actors;

  actor = clutter_actor_new ();
  clutter_actor_set_name (actor, "root");
  g_object_ref_sink (actor);

  n_actors = g_random_int_range (10, 50);
  for (i = 0; i < n_actors; i++)
    {
      char *name;

      name = g_strdup_printf ("actor%d", i);
      child = clutter_actor_new ();
      clutter_actor_set_name (child, name);

      clutter_actor_add_child (actor, child);

      g_free (name);
    }

  g_assert_cmpint (clutter_actor_get_n_children (actor), ==, n_actors);

  i = 0;
  clutter_actor_iter_init (&iter, actor);
  while (clutter_actor_iter_next (&iter, &child))
    {
      g_assert (CLUTTER_IS_ACTOR (child));
      g_assert (clutter_actor_get_parent (child) == actor);

      if (g_test_verbose ())
        g_print ("actor %d = '%s'\n", i, clutter_actor_get_name (child));

      if (i == 0)
        g_assert (child == clutter_actor_get_first_child (actor));

      if (i == (n_actors - 1))
        g_assert (child == clutter_actor_get_last_child (actor));

      clutter_actor_iter_remove (&iter);

      i += 1;
    }

  g_assert_cmpint (i, ==, n_actors);
  g_assert_cmpint (0, ==, clutter_actor_get_n_children (actor));
}
