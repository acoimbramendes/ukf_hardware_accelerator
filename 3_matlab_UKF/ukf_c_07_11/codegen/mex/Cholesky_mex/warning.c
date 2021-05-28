/*
 * warning.c
 *
 * Code generation for function 'warning'
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
#include "warning.h"
#include "blas.h"

/* Variable Definitions */
static emlrtMCInfo emlrtMCI = { 14, 25, "warning",
  "D:\\matlab\\R2016a\\toolbox\\shared\\coder\\coder\\+coder\\+internal\\warning.m"
};

static emlrtMCInfo b_emlrtMCI = { 14, 9, "warning",
  "D:\\matlab\\R2016a\\toolbox\\shared\\coder\\coder\\+coder\\+internal\\warning.m"
};

static emlrtRSInfo u_emlrtRSI = { 14, "warning",
  "D:\\matlab\\R2016a\\toolbox\\shared\\coder\\coder\\+coder\\+internal\\warning.m"
};

/* Function Declarations */
static void b_feval(const emlrtStack *sp, const mxArray *b, const mxArray *c,
                    emlrtMCInfo *location);
static const mxArray *c_feval(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, const mxArray *d, emlrtMCInfo *location);
static const mxArray *feval(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, emlrtMCInfo *location);

/* Function Definitions */
static void b_feval(const emlrtStack *sp, const mxArray *b, const mxArray *c,
                    emlrtMCInfo *location)
{
  const mxArray *pArrays[2];
  pArrays[0] = b;
  pArrays[1] = c;
  emlrtCallMATLABR2012b(sp, 0, NULL, 2, pArrays, "feval", true, location);
}

static const mxArray *c_feval(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, const mxArray *d, emlrtMCInfo *location)
{
  const mxArray *pArrays[3];
  const mxArray *m11;
  pArrays[0] = b;
  pArrays[1] = c;
  pArrays[2] = d;
  return emlrtCallMATLABR2012b(sp, 1, &m11, 3, pArrays, "feval", true, location);
}

static const mxArray *feval(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, emlrtMCInfo *location)
{
  const mxArray *pArrays[2];
  const mxArray *m9;
  pArrays[0] = b;
  pArrays[1] = c;
  return emlrtCallMATLABR2012b(sp, 1, &m9, 2, pArrays, "feval", true, location);
}

void b_warning(const emlrtStack *sp, const char_T varargin_1[14])
{
  int32_T i7;
  const mxArray *y;
  char_T u[7];
  static const char_T cv3[7] = { 'w', 'a', 'r', 'n', 'i', 'n', 'g' };

  const mxArray *m2;
  static const int32_T iv4[2] = { 1, 7 };

  const mxArray *b_y;
  char_T b_u[7];
  static const char_T cv4[7] = { 'm', 'e', 's', 's', 'a', 'g', 'e' };

  static const int32_T iv5[2] = { 1, 7 };

  const mxArray *c_y;
  char_T c_u[33];
  static const char_T msgID[33] = { 'C', 'o', 'd', 'e', 'r', ':', 'M', 'A', 'T',
    'L', 'A', 'B', ':', 'i', 'l', 'l', 'C', 'o', 'n', 'd', 'i', 't', 'i', 'o',
    'n', 'e', 'd', 'M', 'a', 't', 'r', 'i', 'x' };

  static const int32_T iv6[2] = { 1, 33 };

  const mxArray *d_y;
  char_T d_u[14];
  static const int32_T iv7[2] = { 1, 14 };

  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  for (i7 = 0; i7 < 7; i7++) {
    u[i7] = cv3[i7];
  }

  y = NULL;
  m2 = emlrtCreateCharArray(2, iv4);
  emlrtInitCharArrayR2013a(sp, 7, m2, &u[0]);
  emlrtAssign(&y, m2);
  for (i7 = 0; i7 < 7; i7++) {
    b_u[i7] = cv4[i7];
  }

  b_y = NULL;
  m2 = emlrtCreateCharArray(2, iv5);
  emlrtInitCharArrayR2013a(sp, 7, m2, &b_u[0]);
  emlrtAssign(&b_y, m2);
  for (i7 = 0; i7 < 33; i7++) {
    c_u[i7] = msgID[i7];
  }

  c_y = NULL;
  m2 = emlrtCreateCharArray(2, iv6);
  emlrtInitCharArrayR2013a(sp, 33, m2, &c_u[0]);
  emlrtAssign(&c_y, m2);
  for (i7 = 0; i7 < 14; i7++) {
    d_u[i7] = varargin_1[i7];
  }

  d_y = NULL;
  m2 = emlrtCreateCharArray(2, iv7);
  emlrtInitCharArrayR2013a(sp, 14, m2, &d_u[0]);
  emlrtAssign(&d_y, m2);
  st.site = &u_emlrtRSI;
  b_feval(&st, y, c_feval(&st, b_y, c_y, d_y, &emlrtMCI), &b_emlrtMCI);
}

void warning(const emlrtStack *sp)
{
  int32_T i6;
  const mxArray *y;
  char_T u[7];
  static const char_T cv1[7] = { 'w', 'a', 'r', 'n', 'i', 'n', 'g' };

  const mxArray *m1;
  static const int32_T iv1[2] = { 1, 7 };

  const mxArray *b_y;
  char_T b_u[7];
  static const char_T cv2[7] = { 'm', 'e', 's', 's', 'a', 'g', 'e' };

  static const int32_T iv2[2] = { 1, 7 };

  const mxArray *c_y;
  char_T c_u[27];
  static const char_T msgID[27] = { 'C', 'o', 'd', 'e', 'r', ':', 'M', 'A', 'T',
    'L', 'A', 'B', ':', 's', 'i', 'n', 'g', 'u', 'l', 'a', 'r', 'M', 'a', 't',
    'r', 'i', 'x' };

  static const int32_T iv3[2] = { 1, 27 };

  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  for (i6 = 0; i6 < 7; i6++) {
    u[i6] = cv1[i6];
  }

  y = NULL;
  m1 = emlrtCreateCharArray(2, iv1);
  emlrtInitCharArrayR2013a(sp, 7, m1, &u[0]);
  emlrtAssign(&y, m1);
  for (i6 = 0; i6 < 7; i6++) {
    b_u[i6] = cv2[i6];
  }

  b_y = NULL;
  m1 = emlrtCreateCharArray(2, iv2);
  emlrtInitCharArrayR2013a(sp, 7, m1, &b_u[0]);
  emlrtAssign(&b_y, m1);
  for (i6 = 0; i6 < 27; i6++) {
    c_u[i6] = msgID[i6];
  }

  c_y = NULL;
  m1 = emlrtCreateCharArray(2, iv3);
  emlrtInitCharArrayR2013a(sp, 27, m1, &c_u[0]);
  emlrtAssign(&c_y, m1);
  st.site = &u_emlrtRSI;
  b_feval(&st, y, feval(&st, b_y, c_y, &emlrtMCI), &b_emlrtMCI);
}

/* End of code generation (warning.c) */
