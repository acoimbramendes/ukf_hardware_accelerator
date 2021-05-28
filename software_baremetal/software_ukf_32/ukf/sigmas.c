/*
 * File: sigmas.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 03-Oct-2018 20:41:13
 */

/* Include Files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "measurement_eq.h"
#include "nonlinear_state_eq.h"
#include "sigmas.h"
#include "ukf.h"
#include "ut.h"

/* Function Definitions */

/*
 * Sigma points around reference point
 * Inputs:
 *        x: reference point
 *        P: covariance
 *        c: coefficient
 * Output:
 *        X: Sigma points
 * Arguments    : const double x[3]
 *                const double P[9]
 *                double c
 *                double X[21]
 * Return Type  : void
 */
void sigmas(const double x[3], const double P[9], double c, double X[21])
{
  double Y[9];
  int i0;
  int i1;
  double A[9];
  memcpy(&Y[0], &P[0], 9U * sizeof(double));
  Cholesky(Y);
  for (i0 = 0; i0 < 3; i0++) {
    for (i1 = 0; i1 < 3; i1++) {
      A[i1 + 3 * i0] = Y[i0 + 3 * i1];
    }
  }

  for (i0 = 0; i0 < 9; i0++) {
    A[i0] *= c;
  }

  for (i0 = 0; i0 < 3; i0++) {
    X[i0] = x[i0];
    for (i1 = 0; i1 < 3; i1++) {
      Y[i1 + 3 * i0] = x[i1];
      X[i1 + 3 * (i0 + 1)] = Y[i1 + 3 * i0] + A[i1 + 3 * i0];
      X[i1 + 3 * (i0 + 4)] = Y[i1 + 3 * i0] - A[i1 + 3 * i0];
    }
  }
}

/*
 * File trailer for sigmas.c
 *
 * [EOF]
 */
