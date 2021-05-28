/*
 * Cholesky.c
 *
 * Code generation for function 'Cholesky'
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
#include "error.h"
#include "Cholesky_mex_emxutil.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 14, "Cholesky",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\Cholesky.m" };

static emlrtRSInfo b_emlrtRSI = { 12, "sqrt",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\elfun\\sqrt.m" };

static emlrtRTEInfo c_emlrtRTEI = { 1, 12, "Cholesky",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\Cholesky.m" };

static emlrtECInfo e_emlrtECI = { -1, 17, 9, "Cholesky",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\Cholesky.m" };

static emlrtECInfo f_emlrtECI = { -1, 17, 18, "Cholesky",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\Cholesky.m" };

static emlrtBCInfo emlrtBCI = { 1, 32, 17, 24, "A", "Cholesky",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\Cholesky.m", 0 };

static emlrtECInfo g_emlrtECI = { -1, 15, 5, "Cholesky",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\Cholesky.m" };

static emlrtBCInfo b_emlrtBCI = { 1, 32, 15, 7, "A", "Cholesky",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\Cholesky.m", 0 };

static emlrtBCInfo c_emlrtBCI = { 1, 32, 15, 18, "A", "Cholesky",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\Cholesky.m", 0 };

/* Function Definitions */
void Cholesky(const emlrtStack *sp, real_T A[1024])
{
  int32_T k;
  emxArray_real_T *y;
  int32_T i12;
  int32_T i13;
  int32_T i14;
  int32_T i15;
  int32_T loop_ub;
  int32_T i16;
  real_T b_A;
  int8_T tmp_data[32];
  int32_T tmp_size[1];
  int32_T iv20[1];
  real_T b_tmp_data[32];
  int32_T j;
  int32_T b_j;
  int32_T iv21[1];
  int8_T c_tmp_data[31];
  int32_T c_A[1];
  real_T A_data[31];
  emlrtStack st;
  emlrtStack b_st;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b(sp);
  covrtLogFcn(&emlrtCoverageInstance, 0U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 0U, 0);

  /*  Cholesky Factorization for symmetric positive definite matrix */
  /*  Algorithm 2.7 Heath, p.86 */
  /*  Factorize A such that A = L*L', */
  /*  where L is a lower triangular matrix whose diagonal entries are not */
  /*  necessarily unity */
  /*  In the output the lower triangular part of A is over-written by L */
  /*  The upper triangular part of A is left unchanged and  */
  /*  has no significance */
  /*  K. Ming Leung, 01/25/03 */
  k = 0;
  emxInit_real_T(sp, &y, 1, &c_emlrtRTEI, true);
  while (k < 32) {
    covrtLogFor(&emlrtCoverageInstance, 0U, 0U, 0, 1);
    covrtLogBasicBlock(&emlrtCoverageInstance, 0U, 1);
    st.site = &emlrtRSI;
    if (A[k + (k << 5)] < 0.0) {
      b_st.site = &b_emlrtRSI;
      error(&b_st);
    }

    A[k + (k << 5)] = muDoubleScalarSqrt(A[k + (k << 5)]);
    if (2 + k > 32) {
      i12 = 0;
      i13 = -1;
    } else {
      i12 = 2 + k;
      if (!(i12 <= 32)) {
        emlrtDynamicBoundsCheckR2012b(33, 1, 32, &c_emlrtBCI, sp);
      }

      i12--;
      i13 = 31;
    }

    if (2 + k > 32) {
      i14 = 0;
      i15 = -1;
    } else {
      i14 = 2 + k;
      if (!(i14 <= 32)) {
        emlrtDynamicBoundsCheckR2012b(33, 1, 32, &b_emlrtBCI, sp);
      }

      i14--;
      i15 = 31;
    }

    loop_ub = i15 - i14;
    for (i16 = 0; i16 <= loop_ub; i16++) {
      tmp_data[i16] = (int8_T)(i14 + i16);
    }

    b_A = A[k + (k << 5)];
    tmp_size[0] = (i13 - i12) + 1;
    loop_ub = i13 - i12;
    for (i13 = 0; i13 <= loop_ub; i13++) {
      b_tmp_data[i13] = A[(i12 + i13) + (k << 5)] / b_A;
    }

    iv20[0] = (i15 - i14) + 1;
    emlrtSubAssignSizeCheckR2012b(iv20, 1, tmp_size, 1, &g_emlrtECI, sp);
    loop_ub = tmp_size[0];
    for (i12 = 0; i12 < loop_ub; i12++) {
      A[tmp_data[i12] + (k << 5)] = b_tmp_data[i12];
    }

    j = 0;
    while (j <= 30 - k) {
      b_j = (k + j) + 2;
      covrtLogFor(&emlrtCoverageInstance, 0U, 0U, 1, 1);
      covrtLogBasicBlock(&emlrtCoverageInstance, 0U, 2);
      if (b_j > 32) {
        i12 = 0;
        i13 = 0;
      } else {
        i12 = b_j - 1;
        i13 = 32;
      }

      if (b_j > 32) {
        i14 = 0;
        i15 = -1;
      } else {
        i14 = b_j - 1;
        i15 = 31;
      }

      i16 = b_j;
      if (!(i16 <= 32)) {
        emlrtDynamicBoundsCheckR2012b(i16, 1, 32, &emlrtBCI, sp);
      }

      b_A = A[(b_j + (k << 5)) - 1];
      i16 = y->size[0];
      y->size[0] = (i15 - i14) + 1;
      emxEnsureCapacity(sp, (emxArray__common *)y, i16, (int32_T)sizeof(real_T),
                        &c_emlrtRTEI);
      loop_ub = i15 - i14;
      for (i15 = 0; i15 <= loop_ub; i15++) {
        y->data[i15] = b_A * A[(i14 + i15) + (k << 5)];
      }

      i14 = i13 - i12;
      i15 = y->size[0];
      if (i14 != i15) {
        emlrtSizeEqCheck1DR2012b(i14, i15, &f_emlrtECI, sp);
      }

      loop_ub = -b_j;
      for (i14 = 0; i14 <= loop_ub + 32; i14++) {
        c_tmp_data[i14] = (int8_T)((b_j + i14) - 1);
      }

      iv21[0] = 33 - b_j;
      c_A[0] = i13 - i12;
      emlrtSubAssignSizeCheckR2012b(iv21, 1, c_A, 1, &e_emlrtECI, sp);
      loop_ub = i13 - i12;
      for (i14 = 0; i14 < loop_ub; i14++) {
        A_data[i14] = A[(i12 + i14) + ((b_j - 1) << 5)] - y->data[i14];
      }

      loop_ub = i13 - i12;
      for (i12 = 0; i12 < loop_ub; i12++) {
        A[c_tmp_data[i12] + ((b_j - 1) << 5)] = A_data[i12];
      }

      j++;
      if (*emlrtBreakCheckR2012bFlagVar != 0) {
        emlrtBreakCheckR2012b(sp);
      }
    }

    covrtLogFor(&emlrtCoverageInstance, 0U, 0U, 1, 0);
    k++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(sp);
    }
  }

  emxFree_real_T(&y);
  covrtLogFor(&emlrtCoverageInstance, 0U, 0U, 0, 0);
  emlrtHeapReferenceStackLeaveFcnR2012b(sp);
}

/* End of code generation (Cholesky.c) */
