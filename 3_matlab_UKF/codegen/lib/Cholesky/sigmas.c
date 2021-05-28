/*
 * File: sigmas.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 27-Oct-2018 21:12:24
 */

/* Include Files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "example.h"
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
  double A[9];
  int i5;
  double Y[9];
  int i6;
  memcpy(&A[0], &P[0], 9U * sizeof(double));
  Cholesky(A);
  for (i5 = 0; i5 < 9; i5++) {
    A[i5] *= c;
  }

  for (i5 = 0; i5 < 3; i5++) {
    X[i5] = x[i5];
    for (i6 = 0; i6 < 3; i6++) {
      Y[i6 + 3 * i5] = x[i6];
      X[i6 + 3 * (i5 + 1)] = Y[i6 + 3 * i5] + A[i6 + 3 * i5];
      X[i6 + 3 * (i5 + 4)] = Y[i6 + 3 * i5] - A[i6 + 3 * i5];
    }
  }
}

/*
 * File trailer for sigmas.c
 *
 * [EOF]
 */
