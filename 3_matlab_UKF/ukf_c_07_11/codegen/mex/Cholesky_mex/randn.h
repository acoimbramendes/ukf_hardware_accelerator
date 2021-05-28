/*
 * randn.h
 *
 * Code generation for function 'randn'
 *
 */

#ifndef RANDN_H
#define RANDN_H

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
extern real_T b_randn(void);

#ifdef __WATCOMC__

#pragma aux b_randn value [8087];

#endif

extern void randn(real_T r[32]);

#endif

/* End of code generation (randn.h) */
