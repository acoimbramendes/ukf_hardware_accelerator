/*
 * inv.c
 *
 * Code generation for function 'inv'
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
#include "inv.h"
#include "warning.h"
#include "Cholesky_mex_mexutil.h"
#include "blas.h"

/* Variable Definitions */
static emlrtRSInfo r_emlrtRSI = { 25, "inv",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\matfun\\inv.m" };

static emlrtRSInfo s_emlrtRSI = { 42, "inv",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\matfun\\inv.m" };

static emlrtRSInfo t_emlrtRSI = { 46, "inv",
  "D:\\matlab\\R2016a\\toolbox\\eml\\lib\\matlab\\matfun\\inv.m" };

static emlrtMCInfo c_emlrtMCI = { 52, 19, "flt2str",
  "D:\\matlab\\R2016a\\toolbox\\eml\\eml\\+coder\\+internal\\flt2str.m" };

static emlrtRSInfo v_emlrtRSI = { 52, "flt2str",
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
  const mxArray *m10;
  pArrays[0] = b;
  pArrays[1] = c;
  return emlrtCallMATLABR2012b(sp, 1, &m10, 2, pArrays, "sprintf", true,
    location);
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

real_T inv(const emlrtStack *sp, real_T x)
{
  real_T y;
  real_T n1x;
  real_T n1xinv;
  real_T rc;
  int32_T i5;
  const mxArray *b_y;
  char_T u[6];
  static const char_T rfmt[6] = { '%', '1', '4', '.', '6', 'e' };

  const mxArray *m0;
  static const int32_T iv0[2] = { 1, 6 };

  char_T cv0[14];
  emlrtStack st;
  emlrtStack b_st;
  emlrtStack c_st;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  y = 1.0 / x;
  st.site = &r_emlrtRSI;
  n1x = muDoubleScalarAbs(x);
  n1xinv = muDoubleScalarAbs(y);
  rc = 1.0 / (n1x * n1xinv);
  if ((n1x == 0.0) || (n1xinv == 0.0) || (rc == 0.0)) {
    b_st.site = &s_emlrtRSI;
    warning(&b_st);
  } else {
    if (muDoubleScalarIsNaN(rc) || (rc < 2.2204460492503131E-16)) {
      b_st.site = &t_emlrtRSI;
      for (i5 = 0; i5 < 6; i5++) {
        u[i5] = rfmt[i5];
      }

      b_y = NULL;
      m0 = emlrtCreateCharArray(2, iv0);
      emlrtInitCharArrayR2013a(&b_st, 6, m0, &u[0]);
      emlrtAssign(&b_y, m0);
      c_st.site = &v_emlrtRSI;
      emlrt_marshallIn(&c_st, b_sprintf(&c_st, b_y, emlrt_marshallOut(rc),
        &c_emlrtMCI), "sprintf", cv0);
      b_st.site = &t_emlrtRSI;
      b_warning(&b_st, cv0);
    }
  }

  return y;
}

/* End of code generation (inv.c) */
