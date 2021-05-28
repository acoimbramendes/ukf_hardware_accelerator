/*
 * Cholesky_mex_data.c
 *
 * Code generation for function 'Cholesky_mex_data'
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
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Variable Definitions */
emlrtCTX emlrtRootTLSGlobal = NULL;
const volatile char_T *emlrtBreakCheckR2012bFlagVar = NULL;
covrtInstance emlrtCoverageInstance;
emlrtContext emlrtContextGlobal = { true, false, 131434U, NULL, "Cholesky_mex",
  NULL, false, { 2045744189U, 2170104910U, 2743257031U, 4284093946U }, NULL };

emlrtRSInfo c_emlrtRSI = { 25, "example",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\example.m" };

emlrtRSInfo j_emlrtRSI = { 70, "ukf", "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ukf.m"
};

emlrtRSInfo p_emlrtRSI = { 85, "xgemm",
  "D:\\matlab\\R2016a\\toolbox\\eml\\eml\\+coder\\+internal\\+blas\\xgemm.m" };

/* End of code generation (Cholesky_mex_data.c) */
