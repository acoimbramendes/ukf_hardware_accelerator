/*
 * File: Cholesky.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 07-Nov-2018 18:08:12
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
 * Cholesky Factorization for symmetric positive definite matrix
 *  Algorithm 2.7 Heath, p.86
 *  Factorize A such that A = L*L',
 *  where L is a lower triangular matrix whose diagonal entries are not
 *  necessarily unity
 *  In the output the lower triangular part of A is over-written by L
 *  The upper triangular part of A is left unchanged and
 *  has no significance
 *  K. Ming Leung, 01/25/03
 * Arguments    : double A[9]
 * Return Type  : void
 */
void Cholesky(double A[9])
{
  int k;
  int i8;
  int i9;
  int i10;
  double b_A;
  double A_data[3];
  int loop_ub;
  int i11;
  int j;
  int b_j;
  double b_A_data[2];
  for (k = 0; k < 3; k++) {
    A[k + 3 * k] = sqrt(A[k + 3 * k]);
    if (2 + k > 3) {
      i8 = 1;
      i9 = 1;
    } else {
      i8 = k + 2;
      i9 = 4;
    }

    if (2 + k > 3) {
      i10 = 1;
    } else {
      i10 = k + 2;
    }

    b_A = A[k + 3 * k];
    loop_ub = i9 - i8;
    for (i11 = 0; i11 < loop_ub; i11++) {
      A_data[i11] = A[((i8 + i11) + 3 * k) - 1] / b_A;
    }

    loop_ub = i9 - i8;
    for (i8 = 0; i8 < loop_ub; i8++) {
      A[((i10 + i8) + 3 * k) - 1] = A_data[i8];
    }

    for (j = 0; j <= 1 - k; j++) {
      b_j = (k + j) + 2;
      if (b_j > 3) {
        i8 = 0;
        i9 = -1;
      } else {
        i8 = b_j - 1;
        i9 = 2;
      }

      if (b_j > 3) {
        i10 = 0;
      } else {
        i10 = b_j - 1;
      }

      b_A = A[(b_j + 3 * k) - 1];
      loop_ub = i9 - i8;
      for (i11 = 0; i11 <= loop_ub; i11++) {
        b_A_data[i11] = A[(i8 + i11) + 3 * (b_j - 1)] - b_A * A[(i10 + i11) + 3 *
          k];
      }

      loop_ub = (i9 - i8) + 1;
      for (i8 = 0; i8 < loop_ub; i8++) {
        A[((b_j + i8) + 3 * (b_j - 1)) - 1] = b_A_data[i8];
      }
    }
  }
}

/*
 * File trailer for Cholesky.c
 *
 * [EOF]
 */
