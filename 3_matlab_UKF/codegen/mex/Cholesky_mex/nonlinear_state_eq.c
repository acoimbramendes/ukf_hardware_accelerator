/*
 * nonlinear_state_eq.c
 *
 * Code generation for function 'nonlinear_state_eq'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "measurement_eq.h"
#include "nonlinear_state_eq.h"
#include "sigmas.h"
#include "ukf.h"
#include "ut.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Function Definitions */
void nonlinear_state_eq(const emlrtStack *sp, const real_T x[3], real_T f[3])
{
  (void)sp;
  covrtLogFcn(&emlrtCoverageInstance, 2U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 2U, 0);
  f[0] = x[1];
  f[1] = x[2];
  f[2] = 0.05 * x[0] * (x[1] + x[2]);
}

/* End of code generation (nonlinear_state_eq.c) */
