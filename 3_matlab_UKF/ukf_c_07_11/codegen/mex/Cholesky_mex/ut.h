/*
 * ut.h
 *
 * Code generation for function 'ut'
 *
 */

#ifndef UT_H
#define UT_H

/* Include files */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mwmathutil.h"
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "covrt.h"
#include "rtwtypes.h"
#include "Cholesky_mex_types.h"

/* Function Declarations */
extern void b_ut(const emlrtStack *sp, const real_T X[2080], const real_T Wm[65],
                 const real_T Wc[65], const real_T R[1024], real_T y[32], real_T
                 Y[2080], real_T P[1024], real_T Y1[2080]);
extern void c_ut(const emlrtStack *sp, const real_T X[2080], const real_T Wm[65],
                 const real_T Wc[65], real_T R, real_T *y, real_T Y[65], real_T *
                 P, real_T Y1[65]);
extern void ut(const emlrtStack *sp, real_T eq, const real_T X[2080], const
               real_T Wm[65], const real_T Wc[65], real_T n, const real_T
               R_data[], const int32_T R_size[2], emxArray_real_T *y,
               emxArray_real_T *Y, real_T P_data[], int32_T P_size[2],
               emxArray_real_T *Y1);

#endif

/* End of code generation (ut.h) */
