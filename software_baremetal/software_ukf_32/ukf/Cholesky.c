/*
 * File: Cholesky.c
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
  int i3;
  int i4;
  int i5;
  double b_A;
  double A_data[3];
  int loop_ub;
  int i6;
  int j;
  int b_j;
  double b_A_data[2];
  for (k = 0; k < 3; k++) {
    A[k + 3 * k] = sqrt(A[k + 3 * k]);
    if (2 + k > 3) {
      i3 = 1;
      i4 = 1;
    } else {
      i3 = k + 2;
      i4 = 4;
    }

    if (2 + k > 3) {
      i5 = 1;
    } else {
      i5 = k + 2;
    }

    b_A = A[k + 3 * k];
    loop_ub = i4 - i3;
    for (i6 = 0; i6 < loop_ub; i6++) {
      A_data[i6] = A[((i3 + i6) + 3 * k) - 1] / b_A;
    }

    loop_ub = i4 - i3;
    for (i3 = 0; i3 < loop_ub; i3++) {
      A[((i5 + i3) + 3 * k) - 1] = A_data[i3];
    }

    for (j = 0; j <= 1 - k; j++) {
      b_j = (k + j) + 2;
      if (b_j > 3) {
        i3 = 0;
        i4 = -1;
      } else {
        i3 = b_j - 1;
        i4 = 2;
      }

      if (b_j > 3) {
        i5 = 0;
      } else {
        i5 = b_j - 1;
      }

      b_A = A[(b_j + 3 * k) - 1];
      loop_ub = i4 - i3;
      for (i6 = 0; i6 <= loop_ub; i6++) {
        b_A_data[i6] = A[(i3 + i6) + 3 * (b_j - 1)] - b_A * A[(i5 + i6) + 3 * k];
      }

      loop_ub = (i4 - i3) + 1;
      for (i3 = 0; i3 < loop_ub; i3++) {
        A[((b_j + i3) + 3 * (b_j - 1)) - 1] = b_A_data[i3];
      }
    }
  }
}

/*
 * File trailer for Cholesky.c
 *
 * [EOF]
 */
