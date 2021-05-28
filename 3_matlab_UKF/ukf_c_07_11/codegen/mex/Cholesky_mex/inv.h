/*
 * inv.h
 *
 * Code generation for function 'inv'
 *
 */

#ifndef INV_H
#define INV_H

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
extern real_T inv(const emlrtStack *sp, real_T x);

#ifdef __WATCOMC__

#pragma aux inv value [8087];

#endif
#endif

/* End of code generation (inv.h) */
