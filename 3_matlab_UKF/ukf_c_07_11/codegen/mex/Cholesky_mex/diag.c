/*
 * diag.c
 *
 * Code generation for function 'diag'
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
#include "diag.h"
#include "blas.h"

/* Function Definitions */
void diag(const real_T v[65], real_T d[4225])
{
  int32_T j;
  memset(&d[0], 0, 4225U * sizeof(real_T));
  for (j = 0; j < 65; j++) {
    d[j + 65 * j] = v[j];
  }
}

/* End of code generation (diag.c) */
