/*
 * example.c
 *
 * Code generation for function 'example'
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
#include "randn.h"
#include "eye.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Variable Definitions */
static emlrtRSInfo d_emlrtRSI = { 33, "example",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\example.m" };

static emlrtRSInfo e_emlrtRSI = { 36, "example",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\example.m" };

static emlrtRSInfo f_emlrtRSI = { 38, "example",
  "D:\\TCC\\UKF_matlab\\ukf_c_07_11\\example.m" };

/* Function Definitions */
void example(const emlrtStack *sp)
{
  real_T s[32];
  int32_T i;
  static const int8_T b_s[32] = { 2, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 3, 2, 1, 1,
    1, 1, 5, 4, 1, 1, 0, 1, 1, 1, 1, 1, 3, 1, 1, 2 };

  real_T x[32];
  real_T P[1024];
  int32_T k;
  real_T z;
  real_T y[32];
  real_T dv0[32];
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  covrtLogFcn(&emlrtCoverageInstance, 1U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 1U, 0);

  /*  Example: */
  /* profile on */
  /* number of state */
  /* std of process  */
  /* std of measurement */
  /*  covariance of process */
  /*  covariance of measurement   */
  /* f=@(x)[x(2);x(3);0.05*x(1)*(x(2)+x(3))];  % nonlinear state equations */
  /* h=@(x)x(1);                               % measurement equation */
  for (i = 0; i < 32; i++) {
    s[i] = b_s[i];
  }

  /*  initial state */
  randn(x);
  for (i = 0; i < 32; i++) {
    x[i] += (real_T)b_s[i];
  }

  /* initial state          % initial state with noise */
  eye(P);

  /*  initial state covraiance */
  /*  total dynamic steps */
  /* estmate        % allocate memory */
  /* actual */
  k = 0;
  while (k < 5) {
    covrtLogFor(&emlrtCoverageInstance, 1U, 0U, 0, 1);
    covrtLogBasicBlock(&emlrtCoverageInstance, 1U, 1);
    st.site = &d_emlrtRSI;
    z = measurement_eq(&st, s) + b_randn();

    /*  measurments */
    /*  save actual state */
    /*  save measurment */
    st.site = &e_emlrtRSI;
    b_ukf(&st, x, P, z);

    /*  ekf  */
    /*  save estimate */
    randn(y);
    st.site = &f_emlrtRSI;
    nonlinear_state_eq(&st, s, dv0);
    for (i = 0; i < 32; i++) {
      s[i] = dv0[i] + y[i];
    }

    /*  update process */
    k++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(sp);
    }
  }

  covrtLogFor(&emlrtCoverageInstance, 1U, 0U, 0, 0);

  /*  for k=1:3                                 % plot results */
  /*    subplot(3,1,k) */
  /*    plot(1:N, sV(k,:), '-', 1:N, xV(k,:), '--') */
  /*  end */
  /* profile off */
  /* profile viewer */
}

/* End of code generation (example.c) */
