/*
 * File: measurement_eq.c
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

/* Function Definitions */

/*
 * Arguments    : const double x[32]
 * Return Type  : double
 */
double measurement_eq(const double x[32])
{
  return x[0];
}

/*
 * File trailer for measurement_eq.c
 *
 * [EOF]
 */
