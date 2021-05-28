/*
 * Cholesky_mex_data.c
 *
 * Code generation for function 'Cholesky_mex_data'
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

/* Variable Definitions */
emlrtCTX emlrtRootTLSGlobal = NULL;
const volatile char_T *emlrtBreakCheckR2012bFlagVar = NULL;
covrtInstance emlrtCoverageInstance;
emlrtContext emlrtContextGlobal = { true, false, 131434U, NULL, "Cholesky_mex",
  NULL, false, { 2045744189U, 2170104910U, 2743257031U, 4284093946U }, NULL };

emlrtRSInfo c_emlrtRSI = { 10, "sigmas", "D:\\TCC\\UKF_matlab\\sigmas.m" };

emlrtRSInfo h_emlrtRSI = { 21, "ut", "D:\\TCC\\UKF_matlab\\ut.m" };

emlrtRSInfo i_emlrtRSI = { 23, "ut", "D:\\TCC\\UKF_matlab\\ut.m" };

emlrtRSInfo o_emlrtRSI = { 85, "xgemm",
  "D:\\matlab\\R2016a\\toolbox\\eml\\eml\\+coder\\+internal\\+blas\\xgemm.m" };

/* End of code generation (Cholesky_mex_data.c) */
