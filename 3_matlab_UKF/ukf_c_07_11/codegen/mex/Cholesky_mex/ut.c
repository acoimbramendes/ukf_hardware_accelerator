/*
 * ut.c
 *
 * Code generation for function 'ut'
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
#include "diag.h"
#include "Cholesky_mex_emxutil.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Variable Definitions */
static emlrtRSInfo m_emlrtRSI = { 21, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m" };

static emlrtRSInfo n_emlrtRSI = { 28, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m" };

static emlrtRSInfo o_emlrtRSI = { 68, "eml_mtimes_helper",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\ops\\eml_mtimes_helper.m" };

static emlrtRSInfo q_emlrtRSI = { 23, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m" };

static emlrtRTEInfo emlrtRTEI = { 1, 21, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m" };

static emlrtECInfo emlrtECI = { 2, 28, 3, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m" };

static emlrtECInfo b_emlrtECI = { 2, 27, 4, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m" };

static emlrtECInfo c_emlrtECI = { -1, 25, 7, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m" };

static emlrtECInfo d_emlrtECI = { -1, 21, 9, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m" };

static emlrtDCInfo emlrtDCI = { 17, 9, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m", 1 };

static emlrtDCInfo b_emlrtDCI = { 17, 9, "ut",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\ut.m", 4 };

/* Function Definitions */
void b_ut(const emlrtStack *sp, const real_T X[2080], const real_T Wm[65], const
          real_T Wc[65], const real_T R[1024], real_T y[32], real_T Y[2080],
          real_T P[1024], real_T Y1[2080])
{
  int32_T k;
  int32_T i2;
  real_T b[4225];
  int32_T i3;
  real_T alpha1;
  real_T beta1;
  char_T TRANSB;
  char_T TRANSA;
  real_T a[2080];
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  ptrdiff_t k_t;
  ptrdiff_t lda_t;
  ptrdiff_t ldb_t;
  ptrdiff_t ldc_t;
  real_T b_b[2080];
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
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
  memset(&y[0], 0, sizeof(real_T) << 5);
  memset(&Y[0], 0, 2080U * sizeof(real_T));
  k = 0;
  while (k < 65) {
    covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 1);
    covrtLogIf(&emlrtCoverageInstance, 5U, 0U, 0, true);
    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 1);
    st.site = &m_emlrtRSI;
    nonlinear_state_eq(&st, *(real_T (*)[32])&X[k << 5], *(real_T (*)[32])&Y[k <<
                       5]);
    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 3);
    for (i2 = 0; i2 < 32; i2++) {
      y[i2] += Wm[k] * Y[i2 + (k << 5)];
    }

    k++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(sp);
    }
  }

  covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 4);
  for (i2 = 0; i2 < 65; i2++) {
    for (i3 = 0; i3 < 32; i3++) {
      Y1[i3 + (i2 << 5)] = Y[i3 + (i2 << 5)] - y[i3];
    }
  }

  diag(Wc, b);
  alpha1 = 1.0;
  beta1 = 0.0;
  TRANSB = 'N';
  TRANSA = 'N';
  memset(&a[0], 0, 2080U * sizeof(real_T));
  m_t = (ptrdiff_t)32;
  n_t = (ptrdiff_t)65;
  k_t = (ptrdiff_t)65;
  lda_t = (ptrdiff_t)32;
  ldb_t = (ptrdiff_t)65;
  ldc_t = (ptrdiff_t)32;
  dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, &alpha1, &Y1[0], &lda_t, &b[0],
        &ldb_t, &beta1, &a[0], &ldc_t);
  for (i2 = 0; i2 < 32; i2++) {
    for (i3 = 0; i3 < 65; i3++) {
      b_b[i3 + 65 * i2] = Y1[i2 + (i3 << 5)];
    }
  }

  alpha1 = 1.0;
  beta1 = 0.0;
  TRANSB = 'N';
  TRANSA = 'N';
  memset(&P[0], 0, sizeof(real_T) << 10);
  m_t = (ptrdiff_t)32;
  n_t = (ptrdiff_t)32;
  k_t = (ptrdiff_t)65;
  lda_t = (ptrdiff_t)32;
  ldb_t = (ptrdiff_t)65;
  ldc_t = (ptrdiff_t)32;
  dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, &alpha1, &a[0], &lda_t, &b_b[0],
        &ldb_t, &beta1, &P[0], &ldc_t);
  for (i2 = 0; i2 < 1024; i2++) {
    P[i2] += R[i2];
  }
}

void c_ut(const emlrtStack *sp, const real_T X[2080], const real_T Wm[65], const
          real_T Wc[65], real_T R, real_T *y, real_T Y[65], real_T *P, real_T
          Y1[65])
{
  int32_T k;
  int32_T i4;
  real_T b[4225];
  real_T alpha1;
  real_T beta1;
  char_T TRANSB;
  char_T TRANSA;
  real_T b_y[65];
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  ptrdiff_t k_t;
  ptrdiff_t lda_t;
  ptrdiff_t ldb_t;
  ptrdiff_t ldc_t;
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
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
  *y = 0.0;
  k = 0;
  while (k < 65) {
    covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 1);
    covrtLogIf(&emlrtCoverageInstance, 5U, 0U, 0, false);
    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 2);
    st.site = &q_emlrtRSI;
    Y[k] = measurement_eq(&st, *(real_T (*)[32])&X[k << 5]);
    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 3);
    *y += Wm[k] * Y[k];
    k++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(sp);
    }
  }

  covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 4);
  for (i4 = 0; i4 < 65; i4++) {
    Y1[i4] = Y[i4] - *y;
  }

  diag(Wc, b);
  alpha1 = 1.0;
  beta1 = 0.0;
  TRANSB = 'N';
  TRANSA = 'N';
  memset(&b_y[0], 0, 65U * sizeof(real_T));
  m_t = (ptrdiff_t)1;
  n_t = (ptrdiff_t)65;
  k_t = (ptrdiff_t)65;
  lda_t = (ptrdiff_t)1;
  ldb_t = (ptrdiff_t)65;
  ldc_t = (ptrdiff_t)1;
  dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, &alpha1, &Y1[0], &lda_t, &b[0],
        &ldb_t, &beta1, &b_y[0], &ldc_t);
  alpha1 = 0.0;
  for (k = 0; k < 65; k++) {
    alpha1 += b_y[k] * Y1[k];
  }

  *P = alpha1 + R;
}

void ut(const emlrtStack *sp, real_T eq, const real_T X[2080], const real_T Wm
        [65], const real_T Wc[65], real_T n, const real_T R_data[], const
        int32_T R_size[2], emxArray_real_T *y, emxArray_real_T *Y, real_T
        P_data[], int32_T P_size[2], emxArray_real_T *Y1)
{
  boolean_T b0;
  int32_T i10;
  real_T alpha1;
  int32_T loop_ub;
  int32_T k;
  emxArray_int32_T *r0;
  emxArray_real_T *r1;
  int32_T b_Y[2];
  emxArray_real_T *b_y;
  int32_T iv8[1];
  int32_T iv9[1];
  real_T dv1[32];
  int32_T j;
  int32_T c_y[2];
  int32_T i11;
  real_T b[4225];
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
  i10 = y->size[0];
  if (!(n >= 0.0)) {
    emlrtNonNegativeCheckR2012b(n, &b_emlrtDCI, sp);
  }

  alpha1 = n;
  if (alpha1 != (int32_T)muDoubleScalarFloor(alpha1)) {
    emlrtIntegerCheckR2012b(alpha1, &emlrtDCI, sp);
  }

  y->size[0] = (int32_T)alpha1;
  emxEnsureCapacity(sp, (emxArray__common *)y, i10, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  if (!(n >= 0.0)) {
    emlrtNonNegativeCheckR2012b(n, &b_emlrtDCI, sp);
  }

  if (alpha1 != (int32_T)muDoubleScalarFloor(alpha1)) {
    emlrtIntegerCheckR2012b(alpha1, &emlrtDCI, sp);
  }

  loop_ub = (int32_T)alpha1;
  for (i10 = 0; i10 < loop_ub; i10++) {
    y->data[i10] = 0.0;
  }

  i10 = Y->size[0] * Y->size[1];
  Y->size[0] = (int32_T)n;
  Y->size[1] = 65;
  emxEnsureCapacity(sp, (emxArray__common *)Y, i10, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = (int32_T)n * 65;
  for (i10 = 0; i10 < loop_ub; i10++) {
    Y->data[i10] = 0.0;
  }

  k = 0;
  emxInit_int32_T(sp, &r0, 1, &emlrtRTEI, true);
  emxInit_real_T(sp, &r1, 1, &emlrtRTEI, true);
  while (k < 65) {
    covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 1);
    if (covrtLogIf(&emlrtCoverageInstance, 5U, 0U, 0, eq == 0.0)) {
      covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 1);
      loop_ub = Y->size[0];
      i10 = r0->size[0];
      r0->size[0] = loop_ub;
      emxEnsureCapacity(sp, (emxArray__common *)r0, i10, (int32_T)sizeof(int32_T),
                        &emlrtRTEI);
      for (i10 = 0; i10 < loop_ub; i10++) {
        r0->data[i10] = i10;
      }

      iv8[0] = r0->size[0];
      if (!b0) {
        iv9[0] = 32;
        b0 = true;
      }

      emlrtSubAssignSizeCheckR2012b(iv8, 1, iv9, 1, &d_emlrtECI, sp);
      st.site = &m_emlrtRSI;
      nonlinear_state_eq(&st, *(real_T (*)[32])&X[k << 5], dv1);
      j = r0->size[0];
      for (i10 = 0; i10 < j; i10++) {
        Y->data[r0->data[i10] + Y->size[0] * k] = dv1[i10];
      }
    } else {
      covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 2);
      loop_ub = Y->size[0];
      st.site = &q_emlrtRSI;
      alpha1 = measurement_eq(&st, *(real_T (*)[32])&X[k << 5]);
      for (i10 = 0; i10 < loop_ub; i10++) {
        Y->data[i10 + Y->size[0] * k] = alpha1;
      }
    }

    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 3);
    loop_ub = Y->size[0];
    i10 = r1->size[0];
    r1->size[0] = loop_ub;
    emxEnsureCapacity(sp, (emxArray__common *)r1, i10, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    for (i10 = 0; i10 < loop_ub; i10++) {
      r1->data[i10] = Wm[k] * Y->data[i10 + Y->size[0] * k];
    }

    i10 = y->size[0];
    i11 = r1->size[0];
    if (i10 != i11) {
      emlrtSizeEqCheck1DR2012b(i10, i11, &c_emlrtECI, sp);
    }

    i10 = y->size[0];
    emxEnsureCapacity(sp, (emxArray__common *)y, i10, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    loop_ub = y->size[0];
    for (i10 = 0; i10 < loop_ub; i10++) {
      y->data[i10] += r1->data[i10];
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
  for (i10 = 0; i10 < 2; i10++) {
    b_Y[i10] = Y->size[i10];
  }

  emxInit_real_T1(sp, &b_y, 2, &emlrtRTEI, true);
  loop_ub = y->size[0];
  i10 = b_y->size[0] * b_y->size[1];
  b_y->size[0] = loop_ub;
  b_y->size[1] = 65;
  emxEnsureCapacity(sp, (emxArray__common *)b_y, i10, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  for (i10 = 0; i10 < 65; i10++) {
    for (i11 = 0; i11 < loop_ub; i11++) {
      b_y->data[i11 + b_y->size[0] * i10] = y->data[i11];
    }
  }

  for (i10 = 0; i10 < 2; i10++) {
    c_y[i10] = b_y->size[i10];
  }

  emxFree_real_T(&b_y);
  if ((b_Y[0] != c_y[0]) || (b_Y[1] != c_y[1])) {
    emlrtSizeEqCheckNDR2012b(&b_Y[0], &c_y[0], &b_emlrtECI, sp);
  }

  i10 = Y1->size[0] * Y1->size[1];
  Y1->size[0] = Y->size[0];
  Y1->size[1] = 65;
  emxEnsureCapacity(sp, (emxArray__common *)Y1, i10, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  for (i10 = 0; i10 < 65; i10++) {
    loop_ub = Y->size[0];
    for (i11 = 0; i11 < loop_ub; i11++) {
      Y1->data[i11 + Y1->size[0] * i10] = Y->data[i11 + Y->size[0] * i10] -
        y->data[i11];
    }
  }

  memset(&b[0], 0, 4225U * sizeof(real_T));
  for (j = 0; j < 65; j++) {
    b[j + 65 * j] = Wc[j];
  }

  emxInit_real_T1(sp, &C, 2, &emlrtRTEI, true);
  st.site = &n_emlrtRSI;
  Y1_idx_0 = (uint32_T)Y1->size[0];
  i10 = C->size[0] * C->size[1];
  C->size[0] = (int32_T)Y1_idx_0;
  C->size[1] = 65;
  C->size[1] = 65;
  emxEnsureCapacity(&st, (emxArray__common *)C, i10, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  for (i10 = 0; i10 < 65; i10++) {
    loop_ub = C->size[0];
    for (i11 = 0; i11 < loop_ub; i11++) {
      C->data[i11 + C->size[0] * i10] = 0.0;
    }
  }

  b_st.site = &o_emlrtRSI;
  if (Y1->size[0] < 1) {
  } else {
    alpha1 = 1.0;
    beta1 = 0.0;
    TRANSB = 'N';
    TRANSA = 'N';
    m_t = (ptrdiff_t)Y1->size[0];
    n_t = (ptrdiff_t)65;
    k_t = (ptrdiff_t)65;
    lda_t = (ptrdiff_t)Y1->size[0];
    ldb_t = (ptrdiff_t)65;
    ldc_t = (ptrdiff_t)Y1->size[0];
    dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, &alpha1, &Y1->data[0], &lda_t, &b
          [0], &ldb_t, &beta1, &C->data[0], &ldc_t);
  }

  emxInit_real_T1(&b_st, &b_b, 2, &emlrtRTEI, true);
  st.site = &n_emlrtRSI;
  i10 = b_b->size[0] * b_b->size[1];
  b_b->size[0] = 65;
  b_b->size[1] = Y1->size[0];
  emxEnsureCapacity(&st, (emxArray__common *)b_b, i10, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = Y1->size[0];
  for (i10 = 0; i10 < loop_ub; i10++) {
    for (i11 = 0; i11 < 65; i11++) {
      b_b->data[i11 + b_b->size[0] * i10] = Y1->data[i10 + Y1->size[0] * i11];
    }
  }

  emxInit_real_T1(&st, &b_C, 2, &emlrtRTEI, true);
  Y1_idx_0 = (uint32_T)C->size[0];
  unnamed_idx_1 = (uint32_T)b_b->size[1];
  i10 = b_C->size[0] * b_C->size[1];
  b_C->size[0] = (int32_T)Y1_idx_0;
  b_C->size[1] = (int32_T)unnamed_idx_1;
  emxEnsureCapacity(&st, (emxArray__common *)b_C, i10, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = b_C->size[1];
  for (i10 = 0; i10 < loop_ub; i10++) {
    j = b_C->size[0];
    for (i11 = 0; i11 < j; i11++) {
      b_C->data[i11 + b_C->size[0] * i10] = 0.0;
    }
  }

  b_st.site = &o_emlrtRSI;
  if ((C->size[0] < 1) || (b_b->size[1] < 1)) {
  } else {
    alpha1 = 1.0;
    beta1 = 0.0;
    TRANSB = 'N';
    TRANSA = 'N';
    m_t = (ptrdiff_t)C->size[0];
    n_t = (ptrdiff_t)b_b->size[1];
    k_t = (ptrdiff_t)65;
    lda_t = (ptrdiff_t)C->size[0];
    ldb_t = (ptrdiff_t)65;
    ldc_t = (ptrdiff_t)C->size[0];
    dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, &alpha1, &C->data[0], &lda_t,
          &b_b->data[0], &ldb_t, &beta1, &b_C->data[0], &ldc_t);
  }

  emxFree_real_T(&b_b);
  emxFree_real_T(&C);
  for (i10 = 0; i10 < 2; i10++) {
    c_C[i10] = b_C->size[i10];
  }

  for (i10 = 0; i10 < 2; i10++) {
    R[i10] = R_size[i10];
  }

  if ((c_C[0] != R[0]) || (c_C[1] != R[1])) {
    emlrtSizeEqCheckNDR2012b(&c_C[0], &R[0], &emlrtECI, sp);
  }

  P_size[0] = b_C->size[0];
  P_size[1] = b_C->size[1];
  loop_ub = b_C->size[0] * b_C->size[1];
  for (i10 = 0; i10 < loop_ub; i10++) {
    P_data[i10] = b_C->data[i10] + R_data[i10];
  }

  emxFree_real_T(&b_C);
  emlrtHeapReferenceStackLeaveFcnR2012b(sp);
}

/* End of code generation (ut.c) */
