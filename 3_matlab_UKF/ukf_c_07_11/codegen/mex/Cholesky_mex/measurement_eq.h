/*
 * measurement_eq.h
 *
 * Code generation for function 'measurement_eq'
 *
 */

#ifndef MEASUREMENT_EQ_H
#define MEASUREMENT_EQ_H

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
extern real_T measurement_eq(const emlrtStack *sp, const real_T x[32]);

#ifdef __WATCOMC__

#pragma aux measurement_eq value [8087];

#endif
#endif

/* End of code generation (measurement_eq.h) */
