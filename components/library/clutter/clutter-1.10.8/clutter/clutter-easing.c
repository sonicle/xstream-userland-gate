#include "config.h"

#include "clutter-easing.h"

#include <math.h>

double
clutter_linear (double t,
                double d)
{
  return t / d;
}

double
clutter_ease_in_quad (double t,
                      double d)
{
  double p = t / d;

  return p * p;
}

double
clutter_ease_out_quad (double t,
                       double d)
{
  double p = t / d;

  return -1.0 * p * (p - 2);
}

double
clutter_ease_in_out_quad (double t,
                          double d)
{
  double p = t / (d / 2);

  if (p < 1)
    return 0.5 * p * p;

  p -= 1;

  return -0.5 * (p * (p - 2) - 1);
}

double
clutter_ease_in_cubic (double t,
                       double d)
{
  double p = t / d;

  return p * p * p;
}

double
clutter_ease_out_cubic (double t,
                        double d)
{
  double p = t / d - 1;

  return p * p * p + 1;
}

double
clutter_ease_in_out_cubic (double t,
                           double d)
{
  double p = t / (d / 2);

  if (p < 1)
    return 0.5 * p * p * p;

  p -= 2;

  return 0.5 * (p * p * p + 2);
}

double
clutter_ease_in_quart (double t,
                       double d)
{
  double p = t / d;

  return p * p * p * p;
}

double
clutter_ease_out_quart (double t,
                        double d)
{
  double p = t / d - 1;

  return -1.0 * (p * p * p * p - 1);
}

double
clutter_ease_in_out_quart (double t,
                           double d)
{
  double p = t / (d / 2);

  if (p < 1)
    return 0.5 * p * p * p * p;

  p -= 2;

  return -0.5 * (p * p * p * p - 2);
}

double
clutter_ease_in_quint (double t,
                       double d)
 {
  double p = t / d;

  return p * p * p * p * p;
}

double
clutter_ease_out_quint (double t,
                        double d)
{
  double p = t / d - 1;

  return p * p * p * p * p + 1;
}

double
clutter_ease_in_out_quint (double t,
                           double d)
{
  double p = t / (d / 2);

  if (p < 1)
    return 0.5 * p * p * p * p * p;

  p -= 2;

  return 0.5 * (p * p * p * p * p + 2);
}

double
clutter_ease_in_sine (double t,
                      double d)
{
  return -1.0 * cos (t / d * G_PI_2) + 1.0;
}

double
clutter_ease_out_sine (double t,
                       double d)
{
  return sin (t / d * G_PI_2);
}

double
clutter_ease_in_out_sine (double t,
                          double d)
{
  return -0.5 * (cos (G_PI * t / d) - 1);
}

double
clutter_ease_in_expo (double t,
                      double d)
{
  return (t == 0) ? 0.0 : pow (2, 10 * (t / d - 1));
}

double
clutter_ease_out_expo (double t,
                       double d)
{
  return (t == d) ? 1.0 : -pow (2, -10 * t / d) + 1;
}

double
clutter_ease_in_out_expo (double t,
                          double d)
{
  double p;

  if (t == 0)
    return 0.0;

  if (t == d)
    return 1.0;

  p = t / (d / 2);

  if (p < 1)
    return 0.5 * pow (2, 10 * (p - 1));

  p -= 1;

  return 0.5 * (-pow (2, -10 * p) + 2);
}

double
clutter_ease_in_circ (double t,
                      double d)
{
  double p = t / d;

  return -1.0 * (sqrt (1 - p * p) - 1);
}

double
clutter_ease_out_circ (double t,
                       double d)
{
  double p = t / d - 1;

  return sqrt (1 - p * p);
}

double
clutter_ease_in_out_circ (double t,
                          double d)
{
  double p = t / (d / 2);

  if (p < 1)
    return -0.5 * (sqrt (1 - p * p) - 1);

  p -= 2;

  return 0.5 * (sqrt (1 - p * p) + 1);
}

double
clutter_ease_in_elastic (double t,
                         double d)
{
  double p = d * .3;
  double s = p / 4;
  double q = t / d;

  if (q == 1)
    return 1.0;

  q -= 1;

  return -(pow (2, 10 * q) * sin ((q * d - s) * (2 * G_PI) / p));
}

double
clutter_ease_out_elastic (double t,
                          double d)
{
  double p = d * .3;
  double s = p / 4;
  double q = t / d;

  if (q == 1)
    return 1.0;

  return pow (2, -10 * q) * sin ((q * d - s) * (2 * G_PI) / p) + 1.0;
}

double
clutter_ease_in_out_elastic (double t,
                             double d)
{
  double p = d * (.3 * 1.5);
  double s = p / 4;
  double q = t / (d / 2);

  if (q == 2)
    return 1.0;

  if (q < 1)
    {
      q -= 1;

      return -.5 * (pow (2, 10 * q) * sin ((q * d - s) * (2 * G_PI) / p));
    }
  else
    {
      q -= 1;

      return pow (2, -10 * q)
           * sin ((q * d - s) * (2 * G_PI) / p)
           * .5 + 1.0;
    }
}

double
clutter_ease_in_back (double t,
                      double d)
{
  double p = t / d;

  return p * p * ((1.70158 + 1) * p - 1.70158);
}

double
clutter_ease_out_back (double t,
                       double d)
{
  double p = t / d - 1;

  return p * p * ((1.70158 + 1) * p + 1.70158) + 1;
}

double
clutter_ease_in_out_back (double t,
                          double d)
{
  double p = t / (d / 2);
  double s = 1.70158 * 1.525;

  if (p < 1)
    return 0.5 * (p * p * ((s + 1) * p - s));

  p -= 2;

  return 0.5 * (p * p * ((s + 1) * p + s) + 2);
}

static inline double
ease_out_bounce_internal (double t,
                          double d)
{
  double p = t / d;

  if (p < (1 / 2.75))
    {
      return 7.5625 * p * p;
    }
  else if (p < (2 / 2.75))
    {
      p -= (1.5 / 2.75);

      return 7.5625 * p * p + .75;
    }
  else if (p < (2.5 / 2.75))
    {
      p -= (2.25 / 2.75);

      return 7.5625 * p * p + .9375;
    }
  else
    {
      p -= (2.625 / 2.75);

      return 7.5625 * p * p + .984375;
    }
}

static inline double
ease_in_bounce_internal (double t,
                         double d)
{
  return 1.0 - ease_out_bounce_internal (d - t, d);
}

double
clutter_ease_in_bounce (double t,
                        double d)
{
  return ease_in_bounce_internal (t, d);
}

double
clutter_ease_out_bounce (double t,
                         double d)
{
  return ease_out_bounce_internal (t, d);
}

double
clutter_ease_in_out_bounce (double t,
                            double d)
{
  if (t < d / 2)
    return ease_in_bounce_internal (t * 2, d) * 0.5;
  else
    return ease_out_bounce_internal (t * 2 - d, d) * 0.5 + 1.0 * 0.5;
}
