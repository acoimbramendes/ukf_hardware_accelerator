/*
 * eye.c
 *
 * Code generation for function 'eye'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "example.h"
#include "measurement_eq.h"
#include "nonlinear_state_eq.h"
#include "sigmas.h"
#include "ukf.h"
#include "ut.h"
#include "eye.h"
#include "blas.h"

/* Function Definitions */
void eye(real_T I[1024])
{
  int32_T k;
  memset(&I[0], 0, sizeof(real_T) << 10);
  for (k = 0; k < 32; k++) {
    I[k + (k << 5)] = 1.0;
  }
}

/* End of code generation (eye.c) */
