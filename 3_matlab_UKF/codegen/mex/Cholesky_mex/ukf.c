/*
 * ukf.c
 *
 * Code generation for function 'ukf'
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
#include "warning.h"
#include "_coder_Cholesky_mex_api.h"
#include "Cholesky_mex_mexutil.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Variable Definitions */
static emlrtRSInfo d_emlrtRSI = { 65, "ukf", "D:\\TCC\\UKF_matlab\\ukf.m" };

static emlrtRSInfo e_emlrtRSI = { 66, "ukf", "D:\\TCC\\UKF_matlab\\ukf.m" };

static emlrtRSInfo f_emlrtRSI = { 69, "ukf", "D:\\TCC\\UKF_matlab\\ukf.m" };

static emlrtRSInfo g_emlrtRSI = { 71, "ukf", "D:\\TCC\\UKF_matlab\\ukf.m" };

static emlrtRSInfo j_emlrtRSI = { 25, "inv",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\matfun\\inv.m" };

static emlrtRSInfo k_emlrtRSI = { 42, "inv",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\matfun\\inv.m" };

static emlrtRSInfo l_emlrtRSI = { 46, "inv",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\matfun\\inv.m" };

static emlrtMCInfo c_emlrtMCI = { 52, 19, "flt2str",
  "D:\\matlab\\R2016a\\toolbox\\eml\\eml\\+coder\\+internal\\flt2str.m" };

static emlrtRSInfo q_emlrtRSI = { 52, "flt2str",
  "D:\\matlab\\R2016a\\toolbox\\eml\\eml\\+coder\\+internal\\flt2str.m" };

/* Function Declarations */
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, char_T y[14]);
static const mxArray *b_sprintf(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, emlrtMCInfo *location);
static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *c_sprintf,
  const char_T *identifier, char_T y[14]);
static void o_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, char_T ret[14]);

/* Function Definitions */
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, char_T y[14])
{
  o_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static const mxArray *b_sprintf(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, emlrtMCInfo *location)
{
  const mxArray *pArrays[2];
  const mxArray *m9;
  pArrays[0] = b;
  pArrays[1] = c;
  return emlrtCallMATLABR2012b(sp, 1, &m9, 2, pArrays, "sprintf", true, location);
}

static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *c_sprintf,
  const char_T *identifier, char_T y[14])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  b_emlrt_marshallIn(sp, emlrtAlias(c_sprintf), &thisId, y);
  emlrtDestroyArray(&c_sprintf);
}

static void o_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, char_T ret[14])
{
  static const int32_T dims[2] = { 1, 14 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "char", false, 2U, dims);
  emlrtImportCharArrayR2015b(sp, src, ret, 14);
  emlrtDestroyArray(&src);
}

void ukf(const emlrtStack *sp, real_T x[3], real_T P[9], real_T z, const real_T
         Q[9], real_T R)
{
  int32_T i11;
  int32_T i12;
  real_T Y[9];
  real_T A[9];
  real_T X[21];
  int32_T j;
  real_T X1[21];
  int32_T k;
  real_T d[49];
  static const real_T dv1[7] = { -999999.00000825175, 166666.66666804196,
    166666.66666804196, 166666.66666804196, 166666.66666804196,
    166666.66666804196, 166666.66666804196 };

  static const real_T dv2[7] = { -999996.00000925176, 166666.66666804196,
    166666.66666804196, 166666.66666804196, 166666.66666804196,
    166666.66666804196, 166666.66666804196 };

  real_T z1;
  real_T Z1[7];
  real_T b_d[49];
  real_T y;
  real_T P2;
  real_T b_y[7];
  real_T b_X[21];
  real_T P12[3];
  real_T n1x;
  real_T n1xinv;
  real_T rc;
  static const real_T b[49] = { -999996.00000925176, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 166666.66666804196,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    166666.66666804196 };

  const mxArray *c_y;
  char_T u[6];
  static const char_T rfmt[6] = { '%', '1', '4', '.', '6', 'e' };

  const mxArray *m11;
  static const int32_T iv21[2] = { 1, 6 };

  real_T c_X[9];
  char_T cv4[14];
  real_T K[9];
  real_T b_K[3];
  emlrtStack st;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  covrtLogFcn(&emlrtCoverageInstance, 4U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 4U, 0);

  /*  UKF   Unscented Kalman Filter for nonlinear dynamic systems */
  /*  [x, P] = ukf(f,x,P,h,z,Q,R) returns state estimate, x and state covariance, P  */
  /*  for nonlinear dynamic system (for simplicity, noises are assumed as additive): */
  /*            x_k+1 = f(x_k) + w_k */
  /*            z_k   = h(x_k) + v_k */
  /*  where w ~ N(0,Q) meaning w is gaussian noise with covariance Q */
  /*        v ~ N(0,R) meaning v is gaussian noise with covariance R */
  /*  Inputs:   f: function handle for f(x) */
  /*            x: "a priori" state estimate */
  /*            P: "a priori" estimated state covariance */
  /*            h: fanction handle for h(x) */
  /*            z: current measurement */
  /*            Q: process noise covariance  */
  /*            R: measurement noise covariance */
  /*  Output:   x: "a posteriori" state estimate */
  /*            P: "a posteriori" state covariance */
  /*  */
  /*  Example: */
  /* { */
  /* n=3;      %number of state */
  /* q=0.1;    %std of process  */
  /* r=0.1;    %std of measurement */
  /* Q=q^2*eye(n); % covariance of process */
  /* R=r^2;        % covariance of measurement   */
  /* f=@(x)[x(2);x(3);0.05*x(1)*(x(2)+x(3))];  % nonlinear state equations */
  /* h=@(x)x(1);                               % measurement equation */
  /* s=[0;0;1];                                % initial state */
  /* x=s+q*randn(3,1); %initial state          % initial state with noise */
  /* P = eye(n);                               % initial state covraiance */
  /* N=20;                                     % total dynamic steps */
  /* xV = zeros(n,N);          %estmate        % allocate memory */
  /* sV = zeros(n,N);          %actual */
  /* zV = zeros(1,N); */
  /* for k=1:N */
  /*   z = h(s) + r*randn;                     % measurments */
  /*   sV(:,k)= s;                             % save actual state */
  /*   zV(k)  = z;                             % save measurment */
  /*   [x, P] = ukf(f,x,P,h,z,Q,R);            % ekf  */
  /*   xV(:,k) = x;                            % save estimate */
  /*   s = f(s) + q*randn(3,1);                % update process  */
  /* end */
  /* for k=1:3                                 % plot results */
  /*   subplot(3,1,k) */
  /*   plot(1:N, sV(k,:), '-', 1:N, xV(k,:), '--') */
  /* end */
  /* } */
  /*  Reference: Julier, SJ. and Uhlmann, J.K., Unscented Filtering and */
  /*  Nonlinear Estimation, Proceedings of the IEEE, Vol. 92, No. 3, */
  /*  pp.401-422, 2004.  */
  /*  */
  /*  By Yi Cao at Cranfield University, 04/01/2008 */
  /*  */
  /* numer of states */
  /* numer of measurements */
  /* default, tunable */
  /* default, tunable */
  /* default, tunable */
  /* scaling factor */
  /* scaling factor */
  /* weights for means */
  /* weights for covariance */
  st.site = &d_emlrtRSI;
  covrtLogFcn(&emlrtCoverageInstance, 3U, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 3U, 0);

  /* Sigma points around reference point */
  /* Inputs: */
  /*        x: reference point */
  /*        P: covariance */
  /*        c: coefficient */
  /* Output: */
  /*        X: Sigma points */
  b_st.site = &c_emlrtRSI;
  Cholesky(&b_st, P);
  for (i11 = 0; i11 < 3; i11++) {
    for (i12 = 0; i12 < 3; i12++) {
      A[i12 + 3 * i11] = P[i11 + 3 * i12];
    }
  }

  for (i11 = 0; i11 < 9; i11++) {
    A[i11] *= 0.001732050807561731;
  }

  for (i11 = 0; i11 < 3; i11++) {
    X[i11] = x[i11];
    for (i12 = 0; i12 < 3; i12++) {
      Y[i12 + 3 * i11] = x[i12];
      X[i12 + 3 * (i11 + 1)] = Y[i12 + 3 * i11] + A[i12 + 3 * i11];
      X[i12 + 3 * (i11 + 4)] = Y[i12 + 3 * i11] - A[i12 + 3 * i11];
    }
  }

  /* sigma points around x */
  st.site = &e_emlrtRSI;
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
  for (j = 0; j < 3; j++) {
    x[j] = 0.0;
  }

  memset(&X1[0], 0, 21U * sizeof(real_T));
  k = 0;
  while (k < 7) {
    covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 1);
    covrtLogIf(&emlrtCoverageInstance, 5U, 0U, 0, true);
    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 1);
    b_st.site = &h_emlrtRSI;
    nonlinear_state_eq(&b_st, *(real_T (*)[3])&X[3 * k], *(real_T (*)[3])&X1[3 *
                       k]);
    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 3);
    for (i11 = 0; i11 < 3; i11++) {
      x[i11] += dv1[k] * X1[i11 + 3 * k];
    }

    k++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(&st);
    }
  }

  covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 4);
  for (i11 = 0; i11 < 7; i11++) {
    for (i12 = 0; i12 < 3; i12++) {
      X[i12 + 3 * i11] = X1[i12 + 3 * i11] - x[i12];
    }
  }

  memset(&d[0], 0, 49U * sizeof(real_T));
  for (j = 0; j < 7; j++) {
    d[j + 7 * j] = dv2[j];
  }

  /* unscented transformation of process */
  /*  X1=sigmas(x1,P1,c);                         %sigma points around x1 */
  /*  X2=X1-x1(:,ones(1,size(X1,2)));             %deviation of X1 */
  st.site = &f_emlrtRSI;
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
  z1 = 0.0;
  k = 0;
  while (k < 7) {
    covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 1);
    covrtLogIf(&emlrtCoverageInstance, 5U, 0U, 0, false);
    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 2);
    b_st.site = &i_emlrtRSI;
    Z1[k] = measurement_eq(&b_st, *(real_T (*)[3])&X1[3 * k]);
    covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 3);
    z1 += dv1[k] * Z1[k];
    k++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(&st);
    }
  }

  covrtLogFor(&emlrtCoverageInstance, 5U, 0U, 0, 0);
  covrtLogBasicBlock(&emlrtCoverageInstance, 5U, 4);
  for (i11 = 0; i11 < 7; i11++) {
    Z1[i11] -= z1;
  }

  memset(&b_d[0], 0, 49U * sizeof(real_T));
  for (j = 0; j < 7; j++) {
    b_d[j + 7 * j] = dv2[j];
  }

  y = 0.0;
  for (k = 0; k < 7; k++) {
    b_y[k] = 0.0;
    for (i11 = 0; i11 < 7; i11++) {
      b_y[k] += Z1[i11] * b_d[i11 + 7 * k];
    }

    y += b_y[k] * Z1[k];
  }

  P2 = y + R;

  /* unscented transformation of measurments */
  for (i11 = 0; i11 < 3; i11++) {
    P12[i11] = 0.0;
    for (i12 = 0; i12 < 7; i12++) {
      b_X[i11 + 3 * i12] = 0.0;
      for (j = 0; j < 7; j++) {
        b_X[i11 + 3 * i12] += X[i11 + 3 * j] * b[j + 7 * i12];
      }

      P12[i11] += b_X[i11 + 3 * i12] * Z1[i12];
    }
  }

  /* transformed cross-covariance */
  st.site = &g_emlrtRSI;
  y = 1.0 / P2;
  b_st.site = &j_emlrtRSI;
  n1x = muDoubleScalarAbs(P2);
  n1xinv = muDoubleScalarAbs(y);
  rc = 1.0 / (n1x * n1xinv);
  if ((n1x == 0.0) || (n1xinv == 0.0) || (rc == 0.0)) {
    c_st.site = &k_emlrtRSI;
    warning(&c_st);
  } else {
    if (muDoubleScalarIsNaN(rc) || (rc < 2.2204460492503131E-16)) {
      c_st.site = &l_emlrtRSI;
      for (i11 = 0; i11 < 6; i11++) {
        u[i11] = rfmt[i11];
      }

      c_y = NULL;
      m11 = emlrtCreateCharArray(2, iv21);
      emlrtInitCharArrayR2013a(&c_st, 6, m11, &u[0]);
      emlrtAssign(&c_y, m11);
      d_st.site = &q_emlrtRSI;
      emlrt_marshallIn(&d_st, b_sprintf(&d_st, c_y, emlrt_marshallOut(rc),
        &c_emlrtMCI), "sprintf", cv4);
      c_st.site = &l_emlrtRSI;
      b_warning(&c_st, cv4);
    }
  }

  n1x = z - z1;

  /* state update */
  for (j = 0; j < 3; j++) {
    b_K[j] = P12[j] * y;
    x[j] += b_K[j] * n1x;
    for (i11 = 0; i11 < 7; i11++) {
      b_X[j + 3 * i11] = 0.0;
      for (i12 = 0; i12 < 7; i12++) {
        b_X[j + 3 * i11] += X[j + 3 * i12] * d[i12 + 7 * i11];
      }
    }

    for (i11 = 0; i11 < 3; i11++) {
      n1xinv = 0.0;
      for (i12 = 0; i12 < 7; i12++) {
        n1xinv += b_X[j + 3 * i12] * X[i11 + 3 * i12];
      }

      c_X[j + 3 * i11] = n1xinv + Q[j + 3 * i11];
      K[j + 3 * i11] = b_K[j] * P12[i11];
    }
  }

  for (i11 = 0; i11 < 3; i11++) {
    for (i12 = 0; i12 < 3; i12++) {
      P[i12 + 3 * i11] = c_X[i12 + 3 * i11] - K[i12 + 3 * i11];
    }
  }

  /* covariance update */
}

/* End of code generation (ukf.c) */
