/*
 * sigmas.c
 *
 * Code generation for function 'sigmas'
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
static emlrtRSInfo l_emlrtRSI = { 10, "sigmas",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\sigmas.m" };

/* Function Definitions */
void b_sigmas(const emlrtStack *sp, const real_T x[32], const real_T P[1024],
              real_T X[2080])
{
  real_T A[1024];
  int32_T i0;
  real_T Y[1024];
  int32_T i1;
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  covrtLogFcn(&emlrtCoverageInstance, 4U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 4U, 0);

  /* Sigma points around reference point */
  /* Inputs: */
  /*        x: reference point */
  /*        P: covariance */
  /*        c: coefficient */
  /* Output: */
  /*        X: Sigma points */
  memcpy(&A[0], &P[0], sizeof(real_T) << 10);
  st.site = &l_emlrtRSI;
  Cholesky(&st, A);
  for (i0 = 0; i0 < 1024; i0++) {
    A[i0] *= 0.0056568542495737135;
  }

  for (i0 = 0; i0 < 32; i0++) {
    X[i0] = x[i0];
    for (i1 = 0; i1 < 32; i1++) {
      Y[i1 + (i0 << 5)] = x[i1];
      X[i1 + ((i0 + 1) << 5)] = Y[i1 + (i0 << 5)] + A[i1 + (i0 << 5)];
      X[i1 + ((i0 + 33) << 5)] = Y[i1 + (i0 << 5)] - A[i1 + (i0 << 5)];
    }
  }
}

void sigmas(const emlrtStack *sp, const real_T x[32], const real_T P[1024],
            real_T c, real_T X[2080])
{
  real_T A[1024];
  int32_T i8;
  real_T Y[1024];
  int32_T i9;
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  covrtLogFcn(&emlrtCoverageInstance, 4U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 4U, 0);

  /* Sigma points around reference point */
  /* Inputs: */
  /*        x: reference point */
  /*        P: covariance */
  /*        c: coefficient */
  /* Output: */
  /*        X: Sigma points */
  memcpy(&A[0], &P[0], sizeof(real_T) << 10);
  st.site = &l_emlrtRSI;
  Cholesky(&st, A);
  for (i8 = 0; i8 < 1024; i8++) {
    A[i8] *= c;
  }

  for (i8 = 0; i8 < 32; i8++) {
    X[i8] = x[i8];
    for (i9 = 0; i9 < 32; i9++) {
      Y[i9 + (i8 << 5)] = x[i9];
      X[i9 + ((i8 + 1) << 5)] = Y[i9 + (i8 << 5)] + A[i9 + (i8 << 5)];
      X[i9 + ((i8 + 33) << 5)] = Y[i9 + (i8 << 5)] - A[i9 + (i8 << 5)];
    }
  }
}

/* End of code generation (sigmas.c) */
