/*
 * File: ut.c
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
#include "Cholesky_emxutil.h"

/* Function Definitions */

/*
 * Unscented Transformation
 * Input:
 *         f: nonlinear map
 *         X: sigma points
 *        Wm: weights for mean
 *        Wc: weights for covraiance
 *         n: numer of outputs of f
 *         R: additive covariance
 * Output:
 *         y: transformed mean
 *         Y: transformed smapling points
 *         P: transformed covariance
 *        Y1: transformed deviations
 * Arguments    : const double X[2080]
 *                const double Wm[65]
 *                const double Wc[65]
 *                const double R[1024]
 *                double y[32]
 *                double Y[2080]
 *                double P[1024]
 *                double Y1[2080]
 * Return Type  : void
 */
void b_ut(const double X[2080], const double Wm[65], const double Wc[65], const
          double R[1024], double y[32], double Y[2080], double P[1024], double
          Y1[2080])
{
  int k;
  int i2;
  double d[4225];
  int j;
  double b_Y1[2080];
  int i3;
  double d0;
  memset(&y[0], 0, sizeof(double) << 5);
  for (k = 0; k < 65; k++) {
    nonlinear_state_eq(*(double (*)[32])&X[k << 5], *(double (*)[32])&Y[k << 5]);
    for (i2 = 0; i2 < 32; i2++) {
      y[i2] += Wm[k] * Y[i2 + (k << 5)];
    }
  }

  for (i2 = 0; i2 < 65; i2++) {
    for (j = 0; j < 32; j++) {
      Y1[j + (i2 << 5)] = Y[j + (i2 << 5)] - y[j];
    }
  }

  memset(&d[0], 0, 4225U * sizeof(double));
  for (j = 0; j < 65; j++) {
    d[j + 65 * j] = Wc[j];
  }

  for (i2 = 0; i2 < 32; i2++) {
    for (j = 0; j < 65; j++) {
      b_Y1[i2 + (j << 5)] = 0.0;
      for (i3 = 0; i3 < 65; i3++) {
        b_Y1[i2 + (j << 5)] += Y1[i2 + (i3 << 5)] * d[i3 + 65 * j];
      }
    }

    for (j = 0; j < 32; j++) {
      d0 = 0.0;
      for (i3 = 0; i3 < 65; i3++) {
        d0 += b_Y1[i2 + (i3 << 5)] * Y1[j + (i3 << 5)];
      }

      P[i2 + (j << 5)] = d0 + R[i2 + (j << 5)];
    }
  }
}

/*
 * Unscented Transformation
 * Input:
 *         f: nonlinear map
 *         X: sigma points
 *        Wm: weights for mean
 *        Wc: weights for covraiance
 *         n: numer of outputs of f
 *         R: additive covariance
 * Output:
 *         y: transformed mean
 *         Y: transformed smapling points
 *         P: transformed covariance
 *        Y1: transformed deviations
 * Arguments    : const double X[2080]
 *                const double Wm[65]
 *                const double Wc[65]
 *                double R
 *                double *y
 *                double Y[65]
 *                double *P
 *                double Y1[65]
 * Return Type  : void
 */
void c_ut(const double X[2080], const double Wm[65], const double Wc[65], double
          R, double *y, double Y[65], double *P, double Y1[65])
{
  int k;
  double b_Y;
  int j;
  double d[4225];
  double b_Y1[65];
  double d1;
  int i4;
  *y = 0.0;
  for (k = 0; k < 65; k++) {
    b_Y = measurement_eq(*(double (*)[32])&X[k << 5]);
    *y += Wm[k] * b_Y;
    Y[k] = b_Y;
  }

  for (j = 0; j < 65; j++) {
    Y1[j] = Y[j] - *y;
  }

  memset(&d[0], 0, 4225U * sizeof(double));
  for (j = 0; j < 65; j++) {
    d[j + 65 * j] = Wc[j];
  }

  d1 = 0.0;
  for (j = 0; j < 65; j++) {
    b_Y1[j] = 0.0;
    for (i4 = 0; i4 < 65; i4++) {
      b_Y1[j] += Y1[i4] * d[i4 + 65 * j];
    }

    d1 += b_Y1[j] * Y1[j];
  }

  *P = d1 + R;
}

/*
 * Unscented Transformation
 * Input:
 *         f: nonlinear map
 *         X: sigma points
 *        Wm: weights for mean
 *        Wc: weights for covraiance
 *         n: numer of outputs of f
 *         R: additive covariance
 * Output:
 *         y: transformed mean
 *         Y: transformed smapling points
 *         P: transformed covariance
 *        Y1: transformed deviations
 * Arguments    : double eq
 *                const double X[2080]
 *                const double Wm[65]
 *                const double Wc[65]
 *                double n
 *                const double R_data[]
 *                const int R_size[2]
 *                emxArray_real_T *y
 *                emxArray_real_T *Y
 *                double P_data[]
 *                int P_size[2]
 *                emxArray_real_T *Y1
 * Return Type  : void
 */
void ut(double eq, const double X[2080], const double Wm[65], const double Wc[65],
        double n, const double R_data[], const int R_size[2], emxArray_real_T *y,
        emxArray_real_T *Y, double P_data[], int P_size[2], emxArray_real_T *Y1)
{
  int i7;
  int br;
  emxArray_int32_T *r0;
  int k;
  double d2;
  double d[4225];
  double dv1[32];
  int cr;
  int j;
  emxArray_real_T *b_y;
  unsigned int Y1_idx_0;
  int m;
  emxArray_real_T *b;
  int ic;
  int ar;
  int ib;
  emxArray_real_T *C;
  unsigned int unnamed_idx_1;
  int ia;
  (void)R_size;
  i7 = y->size[0];
  y->size[0] = (int)n;
  emxEnsureCapacity((emxArray__common *)y, i7, (int)sizeof(double));
  br = (int)n;
  for (i7 = 0; i7 < br; i7++) {
    y->data[i7] = 0.0;
  }

  i7 = Y->size[0] * Y->size[1];
  Y->size[0] = (int)n;
  Y->size[1] = 65;
  emxEnsureCapacity((emxArray__common *)Y, i7, (int)sizeof(double));
  br = (int)n * 65;
  for (i7 = 0; i7 < br; i7++) {
    Y->data[i7] = 0.0;
  }

  emxInit_int32_T(&r0, 1);
  for (k = 0; k < 65; k++) {
    if (eq == 0.0) {
      br = Y->size[0];
      i7 = r0->size[0];
      r0->size[0] = br;
      emxEnsureCapacity((emxArray__common *)r0, i7, (int)sizeof(int));
      for (i7 = 0; i7 < br; i7++) {
        r0->data[i7] = i7;
      }

      nonlinear_state_eq(*(double (*)[32])&X[k << 5], dv1);
      j = r0->size[0];
      for (i7 = 0; i7 < j; i7++) {
        Y->data[r0->data[i7] + Y->size[0] * k] = dv1[i7];
      }
    } else {
      br = Y->size[0];
      d2 = measurement_eq(*(double (*)[32])&X[k << 5]);
      for (i7 = 0; i7 < br; i7++) {
        Y->data[i7 + Y->size[0] * k] = d2;
      }
    }

    i7 = y->size[0];
    emxEnsureCapacity((emxArray__common *)y, i7, (int)sizeof(double));
    br = y->size[0];
    for (i7 = 0; i7 < br; i7++) {
      y->data[i7] += Wm[k] * Y->data[i7 + Y->size[0] * k];
    }
  }

  emxFree_int32_T(&r0);
  i7 = Y1->size[0] * Y1->size[1];
  Y1->size[0] = Y->size[0];
  Y1->size[1] = 65;
  emxEnsureCapacity((emxArray__common *)Y1, i7, (int)sizeof(double));
  for (i7 = 0; i7 < 65; i7++) {
    br = Y->size[0];
    for (cr = 0; cr < br; cr++) {
      Y1->data[cr + Y1->size[0] * i7] = Y->data[cr + Y->size[0] * i7] - y->
        data[cr];
    }
  }

  memset(&d[0], 0, 4225U * sizeof(double));
  for (j = 0; j < 65; j++) {
    d[j + 65 * j] = Wc[j];
  }

  emxInit_real_T(&b_y, 2);
  Y1_idx_0 = (unsigned int)Y1->size[0];
  i7 = b_y->size[0] * b_y->size[1];
  b_y->size[0] = (int)Y1_idx_0;
  b_y->size[1] = 65;
  emxEnsureCapacity((emxArray__common *)b_y, i7, (int)sizeof(double));
  m = Y1->size[0];
  i7 = b_y->size[0] * b_y->size[1];
  b_y->size[1] = 65;
  emxEnsureCapacity((emxArray__common *)b_y, i7, (int)sizeof(double));
  for (i7 = 0; i7 < 65; i7++) {
    br = b_y->size[0];
    for (cr = 0; cr < br; cr++) {
      b_y->data[cr + b_y->size[0] * i7] = 0.0;
    }
  }

  if (Y1->size[0] == 0) {
  } else {
    j = Y1->size[0] << 6;
    cr = 0;
    while ((m > 0) && (cr <= j)) {
      i7 = cr + m;
      for (ic = cr; ic + 1 <= i7; ic++) {
        b_y->data[ic] = 0.0;
      }

      cr += m;
    }

    br = 0;
    cr = 0;
    while ((m > 0) && (cr <= j)) {
      ar = -1;
      for (ib = br; ib + 1 <= br + 65; ib++) {
        if (d[ib] != 0.0) {
          ia = ar;
          i7 = cr + m;
          for (ic = cr; ic + 1 <= i7; ic++) {
            ia++;
            b_y->data[ic] += d[ib] * Y1->data[ia];
          }
        }

        ar += m;
      }

      br += 65;
      cr += m;
    }
  }

  emxInit_real_T(&b, 2);
  i7 = b->size[0] * b->size[1];
  b->size[0] = 65;
  b->size[1] = Y1->size[0];
  emxEnsureCapacity((emxArray__common *)b, i7, (int)sizeof(double));
  br = Y1->size[0];
  for (i7 = 0; i7 < br; i7++) {
    for (cr = 0; cr < 65; cr++) {
      b->data[cr + b->size[0] * i7] = Y1->data[i7 + Y1->size[0] * cr];
    }
  }

  emxInit_real_T(&C, 2);
  Y1_idx_0 = (unsigned int)b_y->size[0];
  unnamed_idx_1 = (unsigned int)b->size[1];
  i7 = C->size[0] * C->size[1];
  C->size[0] = (int)Y1_idx_0;
  C->size[1] = (int)unnamed_idx_1;
  emxEnsureCapacity((emxArray__common *)C, i7, (int)sizeof(double));
  m = b_y->size[0];
  i7 = C->size[0] * C->size[1];
  emxEnsureCapacity((emxArray__common *)C, i7, (int)sizeof(double));
  br = C->size[1];
  for (i7 = 0; i7 < br; i7++) {
    j = C->size[0];
    for (cr = 0; cr < j; cr++) {
      C->data[cr + C->size[0] * i7] = 0.0;
    }
  }

  if ((b_y->size[0] == 0) || (b->size[1] == 0)) {
  } else {
    j = b_y->size[0] * (b->size[1] - 1);
    cr = 0;
    while ((m > 0) && (cr <= j)) {
      i7 = cr + m;
      for (ic = cr; ic + 1 <= i7; ic++) {
        C->data[ic] = 0.0;
      }

      cr += m;
    }

    br = 0;
    cr = 0;
    while ((m > 0) && (cr <= j)) {
      ar = -1;
      for (ib = br; ib + 1 <= br + 65; ib++) {
        if (b->data[ib] != 0.0) {
          ia = ar;
          i7 = cr + m;
          for (ic = cr; ic + 1 <= i7; ic++) {
            ia++;
            C->data[ic] += b->data[ib] * b_y->data[ia];
          }
        }

        ar += m;
      }

      br += 65;
      cr += m;
    }
  }

  emxFree_real_T(&b);
  emxFree_real_T(&b_y);
  P_size[0] = C->size[0];
  P_size[1] = C->size[1];
  br = C->size[0] * C->size[1];
  for (i7 = 0; i7 < br; i7++) {
    P_data[i7] = C->data[i7] + R_data[i7];
  }

  emxFree_real_T(&C);
}

/*
 * File trailer for ut.c
 *
 * [EOF]
 */
