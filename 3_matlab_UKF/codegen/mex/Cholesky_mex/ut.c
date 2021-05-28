/*
 * ut.c
 *
 * Code generation for function 'ut'
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
#include "Cholesky_mex_emxutil.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Variable Definitions */
static emlrtRSInfo m_emlrtRSI = { 28, "ut", "D:\\TCC\\UKF_matlab\\ut.m" };

static emlrtRSInfo n_emlrtRSI = { 68, "eml_mtimes_helper",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\ops\\eml_mtimes_helper.m" };

static emlrtRTEInfo emlrtRTEI = { 1, 21, "ut", "D:\\TCC\\UKF_matlab\\ut.m" };

static emlrtECInfo emlrtECI = { 2, 28, 3, "ut", "D:\\TCC\\UKF_matlab\\ut.m" };

static emlrtECInfo b_emlrtECI = { 2, 27, 4, "ut", "D:\\TCC\\UKF_matlab\\ut.m" };

static emlrtECInfo c_emlrtECI = { -1, 25, 7, "ut", "D:\\TCC\\UKF_matlab\\ut.m" };

static emlrtECInfo d_emlrtECI = { -1, 21, 9, "ut", "D:\\TCC\\UKF_matlab\\ut.m" };

static emlrtDCInfo emlrtDCI = { 17, 9, "ut", "D:\\TCC\\UKF_matlab\\ut.m", 1 };

static emlrtDCInfo b_emlrtDCI = { 17, 9, "ut", "D:\\TCC\\UKF_matlab\\ut.m", 4 };

/* Function Definitions */
void ut(const emlrtStack *sp, real_T eq, const real_T X[21], const real_T Wm[7],
        const real_T Wc[7], real_T n, const real_T R_data[], const int32_T
        R_size[2], emxArray_real_T *y, emxArray_real_T *Y, real_T P_data[],
        int32_T P_size[2], emxArray_real_T *Y1)
{
  boolean_T b0;
  int32_T i4;
  real_T alpha1;
  int32_T loop_ub;
  int32_T k;
  emxArray_int32_T *r0;
  emxArray_real_T *r1;
  int32_T b_Y[2];
  emxArray_real_T *b_y;
  int32_T iv7[1];
  int32_T iv8[1];
  real_T dv0[3];
  int32_T j;
  int32_T c_y[2];
  int32_T i5;
  real_T b[49];
  emxArray_real_T *C;
  uint32_T Y1_idx_0;
  emxArray_real_T *b_b;
  real_T beta1;
  char_T TRANSB;
  char_T TRANSA;
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  ptrdiff_t k_t;
  ptrdiff_t lda_t;
  ptrdiff_t ldb_t;
  ptrdiff_t ldc_t;
  emxArray_real_T *b_C;
  uint32_T unnamed_idx_1;
  int32_T c_C[2];
  int32_T R[2];
  emlrtStack st;
  emlrtStack b_st;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  emlrtHeapReferenceStackEnterFcnR2012b(sp);
  b0 = false;
  covrtLogFcn(&emlrtCoverageInstance, 5U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 0);

  /* Unscented Transformation */
  /* Input: */
  /*         f: nonlinear map */
  /*         X: sigma points */
  /*        Wm: weights for mean */
  /*        Wc: weights for covraiance */
  /*         n: numer of outputs of f */
  /*         R: additive covariance */
  /* Output: */
  /*         y: transformed mean */
  /*         Y: transformed smapling points */
  /*         P: transformed covariance */
  /*        Y1: transformed deviations */
  i4 = y->size[0];
  if (!(n >= 0.0)) {
    emlrtNonNegativeCheckR2012b(n, &b_emlrtDCI, sp);
  }

  alpha1 = n;
  if (alpha1 != (int32_T)muDoubleScalarFloor(alpha1)) {
    emlrtIntegerCheckR2012b(alpha1, &emlrtDCI, sp);
  }

  y->size[0] = (int32_T)alpha1;
  emxEnsureCapacity(sp, (emxArray__common *)y, i4, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  if (!(n >= 0.0)) {
    emlrtNonNegativeCheckR2012b(n, &b_emlrtDCI, sp);
  }

  if (alpha1 != (int32_T)muDoubleScalarFloor(alpha1)) {
    emlrtIntegerCheckR2012b(alpha1, &emlrtDCI, sp);
  }

  loop_ub = (int32_T)alpha1;
  for (i4 = 0; i4 < loop_ub; i4++) {
    y->data[i4] = 0.0;
  }

  i4 = Y->size[0] * Y->size[1];
  Y->size[0] = (int32_T)n;
  Y->size[1] = 7;
  emxEnsureCapacity(sp, (emxArray__common *)Y, i4, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = (int32_T)n * 7;
  for (i4 = 0; i4 < loop_ub; i4++) {
    Y->data[i4] = 0.0;
  }

  k = 0;
  emxInit_int32_T(sp, &r0, 1, &emlrtRTEI, true);
  emxInit_real_T(sp, &r1, 1, &emlrtRTEI, true);
  while (k < 7) {
    covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 1);
    if (covrtLogIf(&emlrtCoverageInstance, 5U, 0U, 0, eq == 0.0)) {
      covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 1);
      loop_ub = Y->size[0];
      i4 = r0->size[0];
      r0->size[0] = loop_ub;
      emxEnsureCapacity(sp, (emxArray__common *)r0, i4, (int32_T)sizeof(int32_T),
                        &emlrtRTEI);
      for (i4 = 0; i4 < loop_ub; i4++) {
        r0->data[i4] = i4;
      }

      iv7[0] = r0->size[0];
      if (!b0) {
        iv8[0] = 3;
        b0 = true;
      }

      emlrtSubAssignSizeCheckR2012b(iv7, 1, iv8, 1, &d_emlrtECI, sp);
      st.site = &h_emlrtRSI;
      nonlinear_state_eq(&st, *(real_T (*)[3])&X[3 * k], dv0);
      j = r0->size[0];
      for (i4 = 0; i4 < j; i4++) {
        Y->data[r0->data[i4] + Y->size[0] * k] = dv0[i4];
      }
    } else {
      covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 2);
      loop_ub = Y->size[0];
      st.site = &i_emlrtRSI;
      alpha1 = measurement_eq(&st, *(real_T (*)[3])&X[3 * k]);
      for (i4 = 0; i4 < loop_ub; i4++) {
        Y->data[i4 + Y->size[0] * k] = alpha1;
      }
    }

    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 3);
    loop_ub = Y->size[0];
    i4 = r1->size[0];
    r1->size[0] = loop_ub;
    emxEnsureCapacity(sp, (emxArray__common *)r1, i4, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    for (i4 = 0; i4 < loop_ub; i4++) {
      r1->data[i4] = Wm[k] * Y->data[i4 + Y->size[0] * k];
    }

    i4 = y->size[0];
    i5 = r1->size[0];
    if (i4 != i5) {
      emlrtSizeEqCheck1DR2012b(i4, i5, &c_emlrtECI, sp);
    }

    i4 = y->size[0];
    emxEnsureCapacity(sp, (emxArray__common *)y, i4, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    loop_ub = y->size[0];
    for (i4 = 0; i4 < loop_ub; i4++) {
      y->data[i4] += r1->data[i4];
    }

    k++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(sp);
    }
  }

  emxFree_real_T(&r1);
  emxFree_int32_T(&r0);
  covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 4);
  for (i4 = 0; i4 < 2; i4++) {
    b_Y[i4] = Y->size[i4];
  }

  emxInit_real_T1(sp, &b_y, 2, &emlrtRTEI, true);
  loop_ub = y->size[0];
  i4 = b_y->size[0] * b_y->size[1];
  b_y->size[0] = loop_ub;
  b_y->size[1] = 7;
  emxEnsureCapacity(sp, (emxArray__common *)b_y, i4, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  for (i4 = 0; i4 < 7; i4++) {
    for (i5 = 0; i5 < loop_ub; i5++) {
      b_y->data[i5 + b_y->size[0] * i4] = y->data[i5];
    }
  }

  for (i4 = 0; i4 < 2; i4++) {
    c_y[i4] = b_y->size[i4];
  }

  emxFree_real_T(&b_y);
  if ((b_Y[0] != c_y[0]) || (b_Y[1] != c_y[1])) {
    emlrtSizeEqCheckNDR2012b(&b_Y[0], &c_y[0], &b_emlrtECI, sp);
  }

  i4 = Y1->size[0] * Y1->size[1];
  Y1->size[0] = Y->size[0];
  Y1->size[1] = 7;
  emxEnsureCapacity(sp, (emxArray__common *)Y1, i4, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  for (i4 = 0; i4 < 7; i4++) {
    loop_ub = Y->size[0];
    for (i5 = 0; i5 < loop_ub; i5++) {
      Y1->data[i5 + Y1->size[0] * i4] = Y->data[i5 + Y->size[0] * i4] - y->
        data[i5];
    }
  }

  memset(&b[0], 0, 49U * sizeof(real_T));
  for (j = 0; j < 7; j++) {
    b[j + 7 * j] = Wc[j];
  }

  emxInit_real_T1(sp, &C, 2, &emlrtRTEI, true);
  st.site = &m_emlrtRSI;
  Y1_idx_0 = (uint32_T)Y1->size[0];
  i4 = C->size[0] * C->size[1];
  C->size[0] = (int32_T)Y1_idx_0;
  C->size[1] = 7;
  C->size[1] = 7;
  emxEnsureCapacity(&st, (emxArray__common *)C, i4, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  for (i4 = 0; i4 < 7; i4++) {
    loop_ub = C->size[0];
    for (i5 = 0; i5 < loop_ub; i5++) {
      C->data[i5 + C->size[0] * i4] = 0.0;
    }
  }

  b_st.site = &n_emlrtRSI;
  if (Y1->size[0] < 1) {
  } else {
    alpha1 = 1.0;
    beta1 = 0.0;
    TRANSB = 'N';
    TRANSA = 'N';
    m_t = (ptrdiff_t)Y1->size[0];
    n_t = (ptrdiff_t)7;
    k_t = (ptrdiff_t)7;
    lda_t = (ptrdiff_t)Y1->size[0];
    ldb_t = (ptrdiff_t)7;
    ldc_t = (ptrdiff_t)Y1->size[0];
    dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, &alpha1, &Y1->data[0], &lda_t, &b
          [0], &ldb_t, &beta1, &C->data[0], &ldc_t);
  }

  emxInit_real_T1(&b_st, &b_b, 2, &emlrtRTEI, true);
  st.site = &m_emlrtRSI;
  i4 = b_b->size[0] * b_b->size[1];
  b_b->size[0] = 7;
  b_b->size[1] = Y1->size[0];
  emxEnsureCapacity(&st, (emxArray__common *)b_b, i4, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = Y1->size[0];
  for (i4 = 0; i4 < loop_ub; i4++) {
    for (i5 = 0; i5 < 7; i5++) {
      b_b->data[i5 + b_b->size[0] * i4] = Y1->data[i4 + Y1->size[0] * i5];
    }
  }

  emxInit_real_T1(&st, &b_C, 2, &emlrtRTEI, true);
  Y1_idx_0 = (uint32_T)C->size[0];
  unnamed_idx_1 = (uint32_T)b_b->size[1];
  i4 = b_C->size[0] * b_C->size[1];
  b_C->size[0] = (int32_T)Y1_idx_0;
  b_C->size[1] = (int32_T)unnamed_idx_1;
  emxEnsureCapacity(&st, (emxArray__common *)b_C, i4, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = b_C->size[1];
  for (i4 = 0; i4 < loop_ub; i4++) {
    j = b_C->size[0];
    for (i5 = 0; i5 < j; i5++) {
      b_C->data[i5 + b_C->size[0] * i4] = 0.0;
    }
  }

  b_st.site = &n_emlrtRSI;
  if ((C->size[0] < 1) || (b_b->size[1] < 1)) {
  } else {
    alpha1 = 1.0;
    beta1 = 0.0;
    TRANSB = 'N';
    TRANSA = 'N';
    m_t = (ptrdiff_t)C->size[0];
    n_t = (ptrdiff_t)b_b->size[1];
    k_t = (ptrdiff_t)7;
    lda_t = (ptrdiff_t)C->size[0];
    ldb_t = (ptrdiff_t)7;
    ldc_t = (ptrdiff_t)C->size[0];
    dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, &alpha1, &C->data[0], &lda_t,
          &b_b->data[0], &ldb_t, &beta1, &b_C->data[0], &ldc_t);
  }

  emxFree_real_T(&b_b);
  emxFree_real_T(&C);
  for (i4 = 0; i4 < 2; i4++) {
    c_C[i4] = b_C->size[i4];
  }

  for (i4 = 0; i4 < 2; i4++) {
    R[i4] = R_size[i4];
  }

  if ((c_C[0] != R[0]) || (c_C[1] != R[1])) {
    emlrtSizeEqCheckNDR2012b(&c_C[0], &R[0], &emlrtECI, sp);
  }

  P_size[0] = b_C->size[0];
  P_size[1] = b_C->size[1];
  loop_ub = b_C->size[0] * b_C->size[1];
  for (i4 = 0; i4 < loop_ub; i4++) {
    P_data[i4] = b_C->data[i4] + R_data[i4];
  }

  emxFree_real_T(&b_C);
  emlrtHeapReferenceStackLeaveFcnR2012b(sp);
}

/* End of code generation (ut.c) */
