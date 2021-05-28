/*
 * sigmas.h
 *
 * Code generation for function 'sigmas'
 *
 */

#ifndef SIGMAS_H
#define SIGMAS_H

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
extern void b_sigmas(const emlrtStack *sp, const real_T x[32], const real_T P
                     [1024], real_T X[2080]);
extern void sigmas(const emlrtStack *sp, const real_T x[32], const real_T P[1024],
                   real_T c, real_T X[2080]);

#endif

/* End of code generation (sigmas.h) */
