/*
 * measurement_eq.c
 *
 * Code generation for function 'measurement_eq'
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
real_T measurement_eq(const emlrtStack *sp, const real_T x[3])
{
  (void)sp;
  covrtLogFcn(&emlrtCoverageInstance, 1U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 1U, 0);
  return x[0];
}

/* End of code generation (measurement_eq.c) */
