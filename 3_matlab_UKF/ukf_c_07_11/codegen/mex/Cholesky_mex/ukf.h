/*
 * ukf.h
 *
 * Code generation for function 'ukf'
 *
 */

#ifndef UKF_H
#define UKF_H

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
extern void b_ukf(const emlrtStack *sp, real_T x[32], real_T P[1024], real_T z);
extern void ukf(const emlrtStack *sp, real_T x[32], real_T P[1024], real_T z,
                const real_T Q[1024], real_T R);

#endif

/* End of code generation (ukf.h) */
