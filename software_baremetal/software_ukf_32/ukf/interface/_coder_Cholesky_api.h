/*
 * File: _coder_Cholesky_api.h
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 03-Oct-2018 20:41:13
 */

#ifndef _CODER_CHOLESKY_API_H
#define _CODER_CHOLESKY_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_Cholesky_api.h"

/* Type Definitions */
#ifndef struct_emxArray_real_T
#define struct_emxArray_real_T

struct emxArray_real_T
{
  real_T *data;
  int32_T *size;
  int32_T allocatedSize;
  int32_T numDimensions;
  boolean_T canFreeData;
};

#endif                                 /*struct_emxArray_real_T*/

#ifndef typedef_emxArray_real_T
#define typedef_emxArray_real_T

typedef struct emxArray_real_T emxArray_real_T;

#endif                                 /*typedef_emxArray_real_T*/

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void Cholesky(real_T A[9]);
extern void Cholesky_api(const mxArray *prhs[1], const mxArray *plhs[1]);
extern void Cholesky_atexit(void);
extern void Cholesky_initialize(void);
extern void Cholesky_terminate(void);
extern void Cholesky_xil_terminate(void);
extern real_T measurement_eq(real_T x[3]);
extern void measurement_eq_api(const mxArray *prhs[1], const mxArray *plhs[1]);
extern void nonlinear_state_eq(real_T x[3], real_T f[3]);
extern void nonlinear_state_eq_api(const mxArray *prhs[1], const mxArray *plhs[1]);
extern void sigmas(real_T x[3], real_T P[9], real_T c, real_T X[21]);
extern void sigmas_api(const mxArray *prhs[3], const mxArray *plhs[1]);
extern void ukf(real_T x[3], real_T P[9], real_T z, real_T Q[9], real_T R);
extern void ukf_api(const mxArray *prhs[5], const mxArray *plhs[2]);
extern void ut(real_T eq, real_T X[21], real_T Wm[7], real_T Wc[7], real_T n,
               real_T R_data[], int32_T R_size[2], emxArray_real_T *y,
               emxArray_real_T *Y, real_T P_data[], int32_T P_size[2],
               emxArray_real_T *Y1);
extern void ut_api(const mxArray *prhs[6], const mxArray *plhs[4]);

#endif

/*
 * File trailer for _coder_Cholesky_api.h
 *
 * [EOF]
 */
