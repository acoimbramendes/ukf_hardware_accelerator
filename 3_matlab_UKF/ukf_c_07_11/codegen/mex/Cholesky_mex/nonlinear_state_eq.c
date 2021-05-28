/*
 * nonlinear_state_eq.c
 *
 * Code generation for function 'nonlinear_state_eq'
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

/* Function Definitions */
void nonlinear_state_eq(const emlrtStack *sp, const real_T x[32], real_T f[32])
{
  (void)sp;
  covrtLogFcn(&emlrtCoverageInstance, 6U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 6U, 0);

  /* 6 */
  /* 12 */
  /* 18 */
  /* 24 */
  /* 30 */
  /* 32 */
  f[0] = x[1];
  f[1] = x[2];
  f[2] = 0.5 * x[0];
  f[3] = x[4];
  f[4] = x[5];
  f[5] = x[0] + x[5];
  f[6] = x[7];
  f[7] = x[8];
  f[8] = 0.5 * x[6];
  f[9] = x[10];
  f[10] = x[11];
  f[11] = x[9] + x[11];
  f[12] = x[13];
  f[13] = x[14];
  f[14] = 0.5 * x[12];
  f[15] = x[16];
  f[16] = x[17];
  f[17] = x[15] + x[17];
  f[18] = x[19];
  f[19] = x[20];
  f[20] = 0.5 * x[18];
  f[21] = x[22];
  f[22] = x[23];
  f[23] = x[21] + x[23];
  f[24] = x[25];
  f[25] = x[26];
  f[26] = 0.5 * x[24];
  f[27] = x[28];
  f[28] = x[29];
  f[29] = x[27] + x[29];
  f[30] = x[30];
  f[31] = x[31];
}

/* End of code generation (nonlinear_state_eq.c) */
