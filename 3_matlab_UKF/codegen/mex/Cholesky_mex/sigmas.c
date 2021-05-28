/*
 * sigmas.c
 *
 * Code generation for function 'sigmas'
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

/* Function Definitions */
void sigmas(const emlrtStack *sp, const real_T x[3], const real_T P[9], real_T c,
            real_T X[21])
{
  real_T Y[9];
  int32_T i0;
  int32_T i1;
  real_T A[9];
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  covrtLogFcn(&emlrtCoverageInstance, 3U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 3U, 0);

  /* Sigma points around reference point */
  /* Inputs: */
  /*        x: reference point */
  /*        P: covariance */
  /*        c: coefficient */
  /* Output: */
  /*        X: Sigma points */
  memcpy(&Y[0], &P[0], 9U * sizeof(real_T));
  st.site = &c_emlrtRSI;
  Cholesky(&st, Y);
  for (i0 = 0; i0 < 3; i0++) {
    for (i1 = 0; i1 < 3; i1++) {
      A[i1 + 3 * i0] = Y[i0 + 3 * i1];
    }
  }

  for (i0 = 0; i0 < 9; i0++) {
    A[i0] *= c;
  }

  for (i0 = 0; i0 < 3; i0++) {
    X[i0] = x[i0];
    for (i1 = 0; i1 < 3; i1++) {
      Y[i1 + 3 * i0] = x[i1];
      X[i1 + 3 * (i0 + 1)] = Y[i1 + 3 * i0] + A[i1 + 3 * i0];
      X[i1 + 3 * (i0 + 4)] = Y[i1 + 3 * i0] - A[i1 + 3 * i0];
    }
  }
}

/* End of code generation (sigmas.c) */
