/*
 * _coder_Cholesky_mex_api.h
 *
 * Code generation for function '_coder_Cholesky_mex_api'
 *
 */

#ifndef _CODER_CHOLESKY_MEX_API_H
#define _CODER_CHOLESKY_MEX_API_H

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
extern void Cholesky_api(const mxArray *prhs[1], const mxArray *plhs[1]);
extern void example_api(void);
extern void measurement_eq_api(const mxArray * const prhs[1], const mxArray
  *plhs[1]);
extern void nonlinear_state_eq_api(const mxArray * const prhs[1], const mxArray *
  plhs[1]);
extern void sigmas_api(const mxArray * const prhs[3], const mxArray *plhs[1]);
extern void ukf_api(const mxArray *prhs[5], const mxArray *plhs[2]);
extern void ut_api(const mxArray * const prhs[6], const mxArray *plhs[4]);

#endif

/* End of code generation (_coder_Cholesky_mex_api.h) */
