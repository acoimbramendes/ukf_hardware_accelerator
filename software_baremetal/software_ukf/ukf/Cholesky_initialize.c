/*
 * File: Cholesky_initialize.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 03-Oct-2018 20:41:13
 */

/* Include Files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "measurement_eq.h"
#include "nonlinear_state_eq.h"
#include "sigmas.h"
#include "ukf.h"
#include "ut.h"
#include "Cholesky_initialize.h"

/* Function Definitions */

/*
 * Arguments    : void
 * Return Type  : void
 */
void Cholesky_initialize(void)
{
  rt_InitInfAndNaN(8U);
}

/*
 * File trailer for Cholesky_initialize.c
 *
 * [EOF]
 */
