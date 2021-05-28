/*
 * error.c
 *
 * Code generation for function 'error'
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
#include "error.h"
#include "blas.h"

/* Variable Definitions */
static emlrtRTEInfo d_emlrtRTEI = { 17, 9, "error",
  "D:\\matlab\\R2016a\\toolbox\\eml\\eml\\+coder\\+internal\\error.m" };

/* Function Definitions */
void error(const emlrtStack *sp)
{
  emlrtErrorWithMessageIdR2012b(sp, &d_emlrtRTEI,
    "Coder:toolbox:ElFunDomainError", 3, 4, 4, "sqrt");
}

/* End of code generation (error.c) */
