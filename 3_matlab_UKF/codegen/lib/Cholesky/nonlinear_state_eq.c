/*
 * File: nonlinear_state_eq.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 27-Oct-2018 21:12:24
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

/* Function Definitions */

/*
 * Arguments    : const double x[3]
 *                double f[3]
 * Return Type  : void
 */
void nonlinear_state_eq(const double x[3], double f[3])
{
  f[0] = x[1];
  f[1] = x[2];
  f[2] = 0.05 * x[0] * (x[1] + x[2]);
}

/*
 * File trailer for nonlinear_state_eq.c
 *
 * [EOF]
 */
