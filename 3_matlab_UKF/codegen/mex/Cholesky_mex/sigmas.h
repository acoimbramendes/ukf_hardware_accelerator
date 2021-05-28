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
extern void sigmas(const emlrtStack *sp, const real_T x[3], const real_T P[9],
                   real_T c, real_T X[21]);

#endif

/* End of code generation (sigmas.h) */
