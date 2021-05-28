/*
 * nonlinear_state_eq.h
 *
 * Code generation for function 'nonlinear_state_eq'
 *
 */

#ifndef NONLINEAR_STATE_EQ_H
#define NONLINEAR_STATE_EQ_H

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
extern void nonlinear_state_eq(const emlrtStack *sp, const real_T x[32], real_T
  f[32]);

#endif

/* End of code generation (nonlinear_state_eq.h) */
