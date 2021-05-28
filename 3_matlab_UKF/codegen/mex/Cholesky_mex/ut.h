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
extern void ut(const emlrtStack *sp, real_T eq, const real_T X[21], const real_T
               Wm[7], const real_T Wc[7], real_T n, const real_T R_data[], const
               int32_T R_size[2], emxArray_real_T *y, emxArray_real_T *Y, real_T
               P_data[], int32_T P_size[2], emxArray_real_T *Y1);

#endif

/* End of code generation (ut.h) */
