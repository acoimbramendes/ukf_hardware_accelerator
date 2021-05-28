/*
 * File: inv.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 07-Nov-2018 20:16:33
 */

/* Include Files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "example.h"
#include "measurement_eq.h"
#include "nonlinear_state_eq.h"
#include "sigmas.h"
#include "ukf.h"
#include "ut.h"
#include "inv.h"

/* Function Definitions */

/*
 * Arguments    : double x
 * Return Type  : double
 */
double inv(double x)
{
  return 1.0 / x;
}

/*
 * File trailer for inv.c
 *
 * [EOF]
 */
