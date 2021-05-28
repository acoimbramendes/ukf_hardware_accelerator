/*
 * File: eye.c
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
#include "eye.h"

/* Function Definitions */

/*
 * Arguments    : double I[1024]
 * Return Type  : void
 */
void eye(double I[1024])
{
  int k;
  memset(&I[0], 0, sizeof(double) << 10);
  for (k = 0; k < 32; k++) {
    I[k + (k << 5)] = 1.0;
  }
}

/*
 * File trailer for eye.c
 *
 * [EOF]
 */
