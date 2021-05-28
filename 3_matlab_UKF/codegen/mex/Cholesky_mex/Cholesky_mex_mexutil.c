/*
 * Cholesky_mex_mexutil.c
 *
 * Code generation for function 'Cholesky_mex_mexutil'
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
#include "Cholesky_mex_mexutil.h"
#include "blas.h"

/* Function Definitions */
const mxArray *emlrt_marshallOut(const real_T u)
{
  const mxArray *y;
  const mxArray *m2;
  y = NULL;
  m2 = emlrtCreateDoubleScalar(u);
  emlrtAssign(&y, m2);
  return y;
}

/* End of code generation (Cholesky_mex_mexutil.c) */
