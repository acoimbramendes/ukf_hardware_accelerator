/*
 * File: sigmas.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 07-Nov-2018 20:16:33
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
 * Arguments    : const double x[32]
 *                const double P[1024]
 *                double X[2080]
 * Return Type  : void
 */
void b_sigmas(const double x[32], const double P[1024], double X[2080])
{
  double A[1024];
  int i0;
  double Y[1024];
  int i1;
  memcpy(&A[0], &P[0], sizeof(double) << 10);
  Cholesky(A);
  for (i0 = 0; i0 < 1024; i0++) {
    A[i0] *= 0.0056568542495737135;
  }

  for (i0 = 0; i0 < 32; i0++) {
    X[i0] = x[i0];
    for (i1 = 0; i1 < 32; i1++) {
      Y[i1 + (i0 << 5)] = x[i1];
      X[i1 + ((i0 + 1) << 5)] = Y[i1 + (i0 << 5)] + A[i1 + (i0 << 5)];
      X[i1 + ((i0 + 33) << 5)] = Y[i1 + (i0 << 5)] - A[i1 + (i0 << 5)];
    }
  }
}

/*
 * Sigma points around reference point
 * Inputs:
 *        x: reference point
 *        P: covariance
 *        c: coefficient
 * Output:
 *        X: Sigma points
 * Arguments    : const double x[32]
 *                const double P[1024]
 *                double c
 *                double X[2080]
 * Return Type  : void
 */
void sigmas(const double x[32], const double P[1024], double c, double X[2080])
{
  double A[1024];
  int i5;
  double Y[1024];
  int i6;
  memcpy(&A[0], &P[0], sizeof(double) << 10);
  Cholesky(A);
  for (i5 = 0; i5 < 1024; i5++) {
    A[i5] *= c;
  }

  for (i5 = 0; i5 < 32; i5++) {
    X[i5] = x[i5];
    for (i6 = 0; i6 < 32; i6++) {
      Y[i6 + (i5 << 5)] = x[i6];
      X[i6 + ((i5 + 1) << 5)] = Y[i6 + (i5 << 5)] + A[i6 + (i5 << 5)];
      X[i6 + ((i5 + 33) << 5)] = Y[i6 + (i5 << 5)] - A[i6 + (i5 << 5)];
    }
  }
}

/*
 * File trailer for sigmas.c
 *
 * [EOF]
 */
