/*
 * Cholesky.c
 *
 * Code generation for function 'Cholesky'
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
#include "Cholesky_mex_emxutil.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 14, "Cholesky",
  "D:\\TCC\\UKF_matlab\\Cholesky.m" };

static emlrtRSInfo b_emlrtRSI = { 12, "sqrt",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\elfun\\sqrt.m" };

static emlrtRTEInfo c_emlrtRTEI = { 1, 12, "Cholesky",
  "D:\\TCC\\UKF_matlab\\Cholesky.m" };

static emlrtECInfo e_emlrtECI = { -1, 17, 9, "Cholesky",
  "D:\\TCC\\UKF_matlab\\Cholesky.m" };

static emlrtECInfo f_emlrtECI = { -1, 17, 18, "Cholesky",
  "D:\\TCC\\UKF_matlab\\Cholesky.m" };

static emlrtBCInfo emlrtBCI = { 1, 3, 17, 24, "A", "Cholesky",
  "D:\\TCC\\UKF_matlab\\Cholesky.m", 0 };

static emlrtECInfo g_emlrtECI = { -1, 15, 5, "Cholesky",
  "D:\\TCC\\UKF_matlab\\Cholesky.m" };

static emlrtBCInfo b_emlrtBCI = { 1, 3, 15, 7, "A", "Cholesky",
  "D:\\TCC\\UKF_matlab\\Cholesky.m", 0 };

static emlrtBCInfo c_emlrtBCI = { 1, 3, 15, 18, "A", "Cholesky",
  "D:\\TCC\\UKF_matlab\\Cholesky.m", 0 };

/* Function Definitions */
void Cholesky(const emlrtStack *sp, real_T A[9])
{
  int32_T k;
  emxArray_real_T *y;
  int32_T i6;
  int32_T i7;
  int32_T i8;
  int32_T i9;
  int32_T loop_ub;
  int32_T i10;
  real_T b_A;
  int8_T tmp_data[3];
  int32_T tmp_size[1];
  int32_T iv19[1];
  real_T b_tmp_data[3];
  int32_T j;
  int32_T b_j;
  int32_T iv20[1];
  int8_T c_tmp_data[2];
  int32_T c_A[1];
  real_T A_data[2];
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
  while (k < 3) {
    covrtLogFor(&emlrtCoverageInstance, 0U, 0U, 0, 1);
    covrtLogBasicBlock(&emlrtCoverageInstance, 0U, 1);
    st.site = &emlrtRSI;
    if (A[k + 3 * k] < 0.0) {
      b_st.site = &b_emlrtRSI;
      error(&b_st);
    }

    A[k + 3 * k] = muDoubleScalarSqrt(A[k + 3 * k]);
    if (2 + k > 3) {
      i6 = 0;
      i7 = -1;
    } else {
      i6 = 2 + k;
      if (!(i6 <= 3)) {
        emlrtDynamicBoundsCheckR2012b(4, 1, 3, &c_emlrtBCI, sp);
      }

      i6--;
      i7 = 2;
    }

    if (2 + k > 3) {
      i8 = 0;
      i9 = -1;
    } else {
      i8 = 2 + k;
      if (!(i8 <= 3)) {
        emlrtDynamicBoundsCheckR2012b(4, 1, 3, &b_emlrtBCI, sp);
      }

      i8--;
      i9 = 2;
    }

    loop_ub = i9 - i8;
    for (i10 = 0; i10 <= loop_ub; i10++) {
      tmp_data[i10] = (int8_T)(i8 + i10);
    }

    b_A = A[k + 3 * k];
    tmp_size[0] = (i7 - i6) + 1;
    loop_ub = i7 - i6;
    for (i7 = 0; i7 <= loop_ub; i7++) {
      b_tmp_data[i7] = A[(i6 + i7) + 3 * k] / b_A;
    }

    iv19[0] = (i9 - i8) + 1;
    emlrtSubAssignSizeCheckR2012b(iv19, 1, tmp_size, 1, &g_emlrtECI, sp);
    loop_ub = tmp_size[0];
    for (i6 = 0; i6 < loop_ub; i6++) {
      A[tmp_data[i6] + 3 * k] = b_tmp_data[i6];
    }

    j = 0;
    while (j <= 1 - k) {
      b_j = (k + j) + 2;
      covrtLogFor(&emlrtCoverageInstance, 0U, 0U, 1, 1);
      covrtLogBasicBlock(&emlrtCoverageInstance, 0U, 2);
      if (b_j > 3) {
        i6 = 0;
        i7 = 0;
      } else {
        i6 = b_j - 1;
        i7 = 3;
      }

      if (b_j > 3) {
        i8 = 0;
        i9 = -1;
      } else {
        i8 = b_j - 1;
        i9 = 2;
      }

      i10 = b_j;
      if (!(i10 <= 3)) {
        emlrtDynamicBoundsCheckR2012b(i10, 1, 3, &emlrtBCI, sp);
      }

      b_A = A[(b_j + 3 * k) - 1];
      i10 = y->size[0];
      y->size[0] = (i9 - i8) + 1;
      emxEnsureCapacity(sp, (emxArray__common *)y, i10, (int32_T)sizeof(real_T),
                        &c_emlrtRTEI);
      loop_ub = i9 - i8;
      for (i9 = 0; i9 <= loop_ub; i9++) {
        y->data[i9] = b_A * A[(i8 + i9) + 3 * k];
      }

      i8 = i7 - i6;
      i9 = y->size[0];
      if (i8 != i9) {
        emlrtSizeEqCheck1DR2012b(i8, i9, &f_emlrtECI, sp);
      }

      loop_ub = -b_j;
      for (i8 = 0; i8 <= loop_ub + 3; i8++) {
        c_tmp_data[i8] = (int8_T)((b_j + i8) - 1);
      }

      iv20[0] = 4 - b_j;
      c_A[0] = i7 - i6;
      emlrtSubAssignSizeCheckR2012b(iv20, 1, c_A, 1, &e_emlrtECI, sp);
      loop_ub = i7 - i6;
      for (i8 = 0; i8 < loop_ub; i8++) {
        A_data[i8] = A[(i6 + i8) + 3 * (b_j - 1)] - y->data[i8];
      }

      loop_ub = i7 - i6;
      for (i6 = 0; i6 < loop_ub; i6++) {
        A[c_tmp_data[i6] + 3 * (b_j - 1)] = A_data[i6];
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
