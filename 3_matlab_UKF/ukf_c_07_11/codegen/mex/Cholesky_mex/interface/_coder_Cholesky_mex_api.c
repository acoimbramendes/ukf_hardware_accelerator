/*
 * _coder_Cholesky_mex_api.c
 *
 * Code generation for function '_coder_Cholesky_mex_api'
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
#include "_coder_Cholesky_mex_api.h"
#include "inv.h"
#include "Cholesky_mex_emxutil.h"
#include "Cholesky_mex_mexutil.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Variable Definitions */
static emlrtRTEInfo b_emlrtRTEI = { 1, 1, "_coder_Cholesky_mex_api", "" };

/* Function Declarations */
static void b_emlrt_marshallOut(const real_T u[1024], const mxArray *y);
static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *A, const
  char_T *identifier))[1024];
static const mxArray *c_emlrt_marshallOut(const real_T u[32]);
static real_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[1024];
static const mxArray *d_emlrt_marshallOut(const real_T u[2080]);
static real_T (*e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *x, const
  char_T *identifier))[32];
static void e_emlrt_marshallOut(const real_T u[32], const mxArray *y);
static real_T (*f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[32];
static const mxArray *f_emlrt_marshallOut(const emxArray_real_T *u);
static real_T g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *c, const
  char_T *identifier);
static const mxArray *g_emlrt_marshallOut(const emxArray_real_T *u);
static real_T h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId);
static const mxArray *h_emlrt_marshallOut(const real_T u_data[], const int32_T
  u_size[2]);
static real_T (*i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *X, const
  char_T *identifier))[2080];
static real_T (*j_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[2080];
static real_T (*k_emlrt_marshallIn(const emlrtStack *sp, const mxArray *Wm,
  const char_T *identifier))[65];
static real_T (*l_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[65];
static void m_emlrt_marshallIn(const emlrtStack *sp, const mxArray *R, const
  char_T *identifier, real_T **y_data, int32_T y_size[2]);
static void n_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real_T **y_data, int32_T y_size[2]);
static real_T (*p_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[1024];
static real_T (*q_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[32];
static real_T r_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId);
static real_T (*s_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[2080];
static real_T (*t_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[65];
static void u_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real_T **ret_data, int32_T ret_size[2]);

/* Function Definitions */
static void b_emlrt_marshallOut(const real_T u[1024], const mxArray *y)
{
  static const int32_T iv10[2] = { 32, 32 };

  mxSetData((mxArray *)y, (void *)u);
  emlrtSetDimensions((mxArray *)y, iv10, 2);
}

static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *A, const
  char_T *identifier))[1024]
{
  real_T (*y)[1024];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = d_emlrt_marshallIn(sp, emlrtAlias(A), &thisId);
  emlrtDestroyArray(&A);
  return y;
}
  static const mxArray *c_emlrt_marshallOut(const real_T u[32])
{
  const mxArray *y;
  const mxArray *m4;
  static const int32_T iv11[1] = { 0 };

  static const int32_T iv12[1] = { 32 };

  y = NULL;
  m4 = emlrtCreateNumericArray(1, iv11, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m4, (void *)u);
  emlrtSetDimensions((mxArray *)m4, iv12, 1);
  emlrtAssign(&y, m4);
  return y;
}

static real_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[1024]
{
  real_T (*y)[1024];
  y = p_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static const mxArray *d_emlrt_marshallOut(const real_T u[2080])
{
  const mxArray *y;
  const mxArray *m5;
  static const int32_T iv13[2] = { 0, 0 };

  static const int32_T iv14[2] = { 32, 65 };

  y = NULL;
  m5 = emlrtCreateNumericArray(2, iv13, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m5, (void *)u);
  emlrtSetDimensions((mxArray *)m5, iv14, 2);
  emlrtAssign(&y, m5);
  return y;
}

static real_T (*e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *x, const
  char_T *identifier))[32]
{
  real_T (*y)[32];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = f_emlrt_marshallIn(sp, emlrtAlias(x), &thisId);
  emlrtDestroyArray(&x);
  return y;
}
  static void e_emlrt_marshallOut(const real_T u[32], const mxArray *y)
{
  static const int32_T iv15[1] = { 32 };

  mxSetData((mxArray *)y, (void *)u);
  emlrtSetDimensions((mxArray *)y, iv15, 1);
}

static real_T (*f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[32]
{
  real_T (*y)[32];
  y = q_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static const mxArray *f_emlrt_marshallOut(const emxArray_real_T *u)
{
  const mxArray *y;
  const mxArray *m6;
  static const int32_T iv16[1] = { 0 };

  y = NULL;
  m6 = emlrtCreateNumericArray(1, iv16, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m6, (void *)u->data);
  emlrtSetDimensions((mxArray *)m6, u->size, 1);
  emlrtAssign(&y, m6);
  return y;
}

static real_T g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *c, const
  char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = h_emlrt_marshallIn(sp, emlrtAlias(c), &thisId);
  emlrtDestroyArray(&c);
  return y;
}

static const mxArray *g_emlrt_marshallOut(const emxArray_real_T *u)
{
  const mxArray *y;
  const mxArray *m7;
  static const int32_T iv17[2] = { 0, 0 };

  y = NULL;
  m7 = emlrtCreateNumericArray(2, iv17, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m7, (void *)u->data);
  emlrtSetDimensions((mxArray *)m7, u->size, 2);
  emlrtAssign(&y, m7);
  return y;
}

static real_T h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId)
{
  real_T y;
  y = r_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static const mxArray *h_emlrt_marshallOut(const real_T u_data[], const int32_T
  u_size[2])
{
  const mxArray *y;
  const mxArray *m8;
  static const int32_T iv18[2] = { 0, 0 };

  y = NULL;
  m8 = emlrtCreateNumericArray(2, iv18, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m8, (void *)u_data);
  emlrtSetDimensions((mxArray *)m8, u_size, 2);
  emlrtAssign(&y, m8);
  return y;
}

static real_T (*i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *X, const
  char_T *identifier))[2080]
{
  real_T (*y)[2080];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = j_emlrt_marshallIn(sp, emlrtAlias(X), &thisId);
  emlrtDestroyArray(&X);
  return y;
}
  static real_T (*j_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId))[2080]
{
  real_T (*y)[2080];
  y = s_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*k_emlrt_marshallIn(const emlrtStack *sp, const mxArray *Wm,
  const char_T *identifier))[65]
{
  real_T (*y)[65];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = l_emlrt_marshallIn(sp, emlrtAlias(Wm), &thisId);
  emlrtDestroyArray(&Wm);
  return y;
}
  static real_T (*l_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId))[65]
{
  real_T (*y)[65];
  y = t_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static void m_emlrt_marshallIn(const emlrtStack *sp, const mxArray *R, const
  char_T *identifier, real_T **y_data, int32_T y_size[2])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  n_emlrt_marshallIn(sp, emlrtAlias(R), &thisId, y_data, y_size);
  emlrtDestroyArray(&R);
}

static void n_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real_T **y_data, int32_T y_size[2])
{
  u_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y_data, y_size);
  emlrtDestroyArray(&u);
}

static real_T (*p_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[1024]
{
  real_T (*ret)[1024];
  static const int32_T dims[2] = { 32, 32 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, dims);
  ret = (real_T (*)[1024])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  static real_T (*q_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[32]
{
  real_T (*ret)[32];
  static const int32_T dims[1] = { 32 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 1U, dims);
  ret = (real_T (*)[32])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T r_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId)
{
  real_T ret;
  static const int32_T dims = 0;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 0U, &dims);
  ret = *(real_T *)mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T (*s_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[2080]
{
  real_T (*ret)[2080];
  static const int32_T dims[2] = { 32, 65 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, dims);
  ret = (real_T (*)[2080])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  static real_T (*t_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[65]
{
  real_T (*ret)[65];
  static const int32_T dims[2] = { 1, 65 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, dims);
  ret = (real_T (*)[65])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static void u_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real_T **ret_data, int32_T ret_size[2])
{
  static const int32_T dims[2] = { 32, 32 };

  boolean_T bv0[2] = { true, true };

  int32_T iv19[2];
  emlrtCheckVsBuiltInR2012b(sp, msgId, src, "double", false, 2U, dims, &bv0[0],
    iv19);
  ret_size[0] = iv19[0];
  ret_size[1] = iv19[1];
  *ret_data = (real_T *)mxGetData(src);
  emlrtDestroyArray(&src);
}

void Cholesky_api(const mxArray *prhs[1], const mxArray *plhs[1])
{
  real_T (*A)[1024];
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  prhs[0] = emlrtProtectR2012b(prhs[0], 0, true, -1);

  /* Marshall function inputs */
  A = c_emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "A");

  /* Invoke the target function */
  Cholesky(&st, *A);

  /* Marshall function outputs */
  b_emlrt_marshallOut(*A, prhs[0]);
  plhs[0] = prhs[0];
}

void example_api(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;

  /* Invoke the target function */
  example(&st);
}

void measurement_eq_api(const mxArray * const prhs[1], const mxArray *plhs[1])
{
  real_T (*x)[32];
  real_T h;
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;

  /* Marshall function inputs */
  x = e_emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "x");

  /* Invoke the target function */
  h = measurement_eq(&st, *x);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(h);
}

void nonlinear_state_eq_api(const mxArray * const prhs[1], const mxArray *plhs[1])
{
  real_T (*f)[32];
  real_T (*x)[32];
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  f = (real_T (*)[32])mxMalloc(sizeof(real_T [32]));

  /* Marshall function inputs */
  x = e_emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "x");

  /* Invoke the target function */
  nonlinear_state_eq(&st, *x, *f);

  /* Marshall function outputs */
  plhs[0] = c_emlrt_marshallOut(*f);
}

void sigmas_api(const mxArray * const prhs[3], const mxArray *plhs[1])
{
  real_T (*X)[2080];
  real_T (*x)[32];
  real_T (*P)[1024];
  real_T c;
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  X = (real_T (*)[2080])mxMalloc(sizeof(real_T [2080]));

  /* Marshall function inputs */
  x = e_emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "x");
  P = c_emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "P");
  c = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[2]), "c");

  /* Invoke the target function */
  sigmas(&st, *x, *P, c, *X);

  /* Marshall function outputs */
  plhs[0] = d_emlrt_marshallOut(*X);
}

void ukf_api(const mxArray *prhs[5], const mxArray *plhs[2])
{
  real_T (*x)[32];
  real_T (*P)[1024];
  real_T z;
  real_T (*Q)[1024];
  real_T R;
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  prhs[0] = emlrtProtectR2012b(prhs[0], 0, true, -1);
  prhs[1] = emlrtProtectR2012b(prhs[1], 1, true, -1);

  /* Marshall function inputs */
  x = e_emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "x");
  P = c_emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "P");
  z = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[2]), "z");
  Q = c_emlrt_marshallIn(&st, emlrtAlias(prhs[3]), "Q");
  R = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[4]), "R");

  /* Invoke the target function */
  ukf(&st, *x, *P, z, *Q, R);

  /* Marshall function outputs */
  e_emlrt_marshallOut(*x, prhs[0]);
  plhs[0] = prhs[0];
  b_emlrt_marshallOut(*P, prhs[1]);
  plhs[1] = prhs[1];
}

void ut_api(const mxArray * const prhs[6], const mxArray *plhs[4])
{
  real_T (*P_data)[1024];
  emxArray_real_T *y;
  emxArray_real_T *Y;
  emxArray_real_T *Y1;
  real_T eq;
  real_T (*X)[2080];
  real_T (*Wm)[65];
  real_T (*Wc)[65];
  real_T n;
  real_T (*R_data)[1024];
  int32_T R_size[2];
  int32_T P_size[2];
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  P_data = (real_T (*)[1024])mxMalloc(sizeof(real_T [1024]));
  emlrtHeapReferenceStackEnterFcnR2012b(&st);
  emxInit_real_T(&st, &y, 1, &b_emlrtRTEI, true);
  emxInit_real_T1(&st, &Y, 2, &b_emlrtRTEI, true);
  emxInit_real_T1(&st, &Y1, 2, &b_emlrtRTEI, true);

  /* Marshall function inputs */
  eq = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[0]), "eq");
  X = i_emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "X");
  Wm = k_emlrt_marshallIn(&st, emlrtAlias(prhs[2]), "Wm");
  Wc = k_emlrt_marshallIn(&st, emlrtAlias(prhs[3]), "Wc");
  n = g_emlrt_marshallIn(&st, emlrtAliasP(prhs[4]), "n");
  m_emlrt_marshallIn(&st, emlrtAlias(prhs[5]), "R", (real_T **)&R_data, R_size);

  /* Invoke the target function */
  ut(&st, eq, *X, *Wm, *Wc, n, *R_data, R_size, y, Y, *P_data, P_size, Y1);

  /* Marshall function outputs */
  plhs[0] = f_emlrt_marshallOut(y);
  plhs[1] = g_emlrt_marshallOut(Y);
  plhs[2] = h_emlrt_marshallOut(*P_data, P_size);
  plhs[3] = g_emlrt_marshallOut(Y1);
  Y1->canFreeData = false;
  emxFree_real_T(&Y1);
  Y->canFreeData = false;
  emxFree_real_T(&Y);
  y->canFreeData = false;
  emxFree_real_T(&y);
  emlrtHeapReferenceStackLeaveFcnR2012b(&st);
}

/* End of code generation (_coder_Cholesky_mex_api.c) */
