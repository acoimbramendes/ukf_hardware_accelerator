/*
 * randn.c
 *
 * Code generation for function 'randn'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "example.h"
#include "measurement_eq.h"
#include "nonlinear_state_eq.h"
#include "sigmas.h"
#include "ukf.h"
#include "ut.h"
#include "randn.h"
#include "blas.h"

/* Function Definitions */
real_T b_randn(void)
{
  real_T r;
  emlrtRandn(&r, 1);
  return r;
}

void randn(real_T r[32])
{
  emlrtRandn(r, 32);
}

/* End of code generation (randn.c) */
