/*
 * File: ut.c
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
 * Arguments    : double eq
 *                const double X[21]
 *                const double Wm[7]
 *                const double Wc[7]
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
void ut(double eq, const double X[21], const double Wm[7], const double Wc[7],
        double n, const double R_data[], const int R_size[2], emxArray_real_T *y,
        emxArray_real_T *Y, double P_data[], int P_size[2], emxArray_real_T *Y1)
{
  int i2;
  int br;
  emxArray_int32_T *r0;
  int k;
  double d0;
  double d[49];
  double dv0[3];
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
  i2 = y->size[0];
  y->size[0] = (int)n;
  emxEnsureCapacity((emxArray__common *)y, i2, (int)sizeof(double));
  br = (int)n;
  for (i2 = 0; i2 < br; i2++) {
    y->data[i2] = 0.0;
  }

  i2 = Y->size[0] * Y->size[1];
  Y->size[0] = (int)n;
  Y->size[1] = 7;
  emxEnsureCapacity((emxArray__common *)Y, i2, (int)sizeof(double));
  br = (int)n * 7;
  for (i2 = 0; i2 < br; i2++) {
    Y->data[i2] = 0.0;
  }

  emxInit_int32_T(&r0, 1);
  for (k = 0; k < 7; k++) {
    if (eq == 0.0) {
      br = Y->size[0];
      i2 = r0->size[0];
      r0->size[0] = br;
      emxEnsureCapacity((emxArray__common *)r0, i2, (int)sizeof(int));
      for (i2 = 0; i2 < br; i2++) {
        r0->data[i2] = i2;
      }

      nonlinear_state_eq(*(double (*)[3])&X[3 * k], dv0);
      j = r0->size[0];
      for (i2 = 0; i2 < j; i2++) {
        Y->data[r0->data[i2] + Y->size[0] * k] = dv0[i2];
      }
    } else {
      br = Y->size[0];
      d0 = measurement_eq(*(double (*)[3])&X[3 * k]);
      for (i2 = 0; i2 < br; i2++) {
        Y->data[i2 + Y->size[0] * k] = d0;
      }
    }

    i2 = y->size[0];
    emxEnsureCapacity((emxArray__common *)y, i2, (int)sizeof(double));
    br = y->size[0];
    for (i2 = 0; i2 < br; i2++) {
      y->data[i2] += Wm[k] * Y->data[i2 + Y->size[0] * k];
    }
  }

  emxFree_int32_T(&r0);
  i2 = Y1->size[0] * Y1->size[1];
  Y1->size[0] = Y->size[0];
  Y1->size[1] = 7;
  emxEnsureCapacity((emxArray__common *)Y1, i2, (int)sizeof(double));
  for (i2 = 0; i2 < 7; i2++) {
    br = Y->size[0];
    for (cr = 0; cr < br; cr++) {
      Y1->data[cr + Y1->size[0] * i2] = Y->data[cr + Y->size[0] * i2] - y->
        data[cr];
    }
  }

  memset(&d[0], 0, 49U * sizeof(double));
  for (j = 0; j < 7; j++) {
    d[j + 7 * j] = Wc[j];
  }

  emxInit_real_T(&b_y, 2);
  Y1_idx_0 = (unsigned int)Y1->size[0];
  i2 = b_y->size[0] * b_y->size[1];
  b_y->size[0] = (int)Y1_idx_0;
  b_y->size[1] = 7;
  emxEnsureCapacity((emxArray__common *)b_y, i2, (int)sizeof(double));
  m = Y1->size[0];
  i2 = b_y->size[0] * b_y->size[1];
  b_y->size[1] = 7;
  emxEnsureCapacity((emxArray__common *)b_y, i2, (int)sizeof(double));
  for (i2 = 0; i2 < 7; i2++) {
    br = b_y->size[0];
    for (cr = 0; cr < br; cr++) {
      b_y->data[cr + b_y->size[0] * i2] = 0.0;
    }
  }

  if (Y1->size[0] == 0) {
  } else {
    j = Y1->size[0] * 6;
    cr = 0;
    while ((m > 0) && (cr <= j)) {
      i2 = cr + m;
      for (ic = cr; ic + 1 <= i2; ic++) {
        b_y->data[ic] = 0.0;
      }

      cr += m;
    }

    br = 0;
    cr = 0;
    while ((m > 0) && (cr <= j)) {
      ar = -1;
      for (ib = br; ib + 1 <= br + 7; ib++) {
        if (d[ib] != 0.0) {
          ia = ar;
          i2 = cr + m;
          for (ic = cr; ic + 1 <= i2; ic++) {
            ia++;
            b_y->data[ic] += d[ib] * Y1->data[ia];
          }
        }

        ar += m;
      }

      br += 7;
      cr += m;
    }
  }

  emxInit_real_T(&b, 2);
  i2 = b->size[0] * b->size[1];
  b->size[0] = 7;
  b->size[1] = Y1->size[0];
  emxEnsureCapacity((emxArray__common *)b, i2, (int)sizeof(double));
  br = Y1->size[0];
  for (i2 = 0; i2 < br; i2++) {
    for (cr = 0; cr < 7; cr++) {
      b->data[cr + b->size[0] * i2] = Y1->data[i2 + Y1->size[0] * cr];
    }
  }

  emxInit_real_T(&C, 2);
  Y1_idx_0 = (unsigned int)b_y->size[0];
  unnamed_idx_1 = (unsigned int)b->size[1];
  i2 = C->size[0] * C->size[1];
  C->size[0] = (int)Y1_idx_0;
  C->size[1] = (int)unnamed_idx_1;
  emxEnsureCapacity((emxArray__common *)C, i2, (int)sizeof(double));
  m = b_y->size[0];
  i2 = C->size[0] * C->size[1];
  emxEnsureCapacity((emxArray__common *)C, i2, (int)sizeof(double));
  br = C->size[1];
  for (i2 = 0; i2 < br; i2++) {
    j = C->size[0];
    for (cr = 0; cr < j; cr++) {
      C->data[cr + C->size[0] * i2] = 0.0;
    }
  }

  if ((b_y->size[0] == 0) || (b->size[1] == 0)) {
  } else {
    j = b_y->size[0] * (b->size[1] - 1);
    cr = 0;
    while ((m > 0) && (cr <= j)) {
      i2 = cr + m;
      for (ic = cr; ic + 1 <= i2; ic++) {
        C->data[ic] = 0.0;
      }

      cr += m;
    }

    br = 0;
    cr = 0;
    while ((m > 0) && (cr <= j)) {
      ar = -1;
      for (ib = br; ib + 1 <= br + 7; ib++) {
        if (b->data[ib] != 0.0) {
          ia = ar;
          i2 = cr + m;
          for (ic = cr; ic + 1 <= i2; ic++) {
            ia++;
            C->data[ic] += b->data[ib] * b_y->data[ia];
          }
        }

        ar += m;
      }

      br += 7;
      cr += m;
    }
  }

  emxFree_real_T(&b);
  emxFree_real_T(&b_y);
  P_size[0] = C->size[0];
  P_size[1] = C->size[1];
  br = C->size[0] * C->size[1];
  for (i2 = 0; i2 < br; i2++) {
    P_data[i2] = C->data[i2] + R_data[i2];
  }

  emxFree_real_T(&C);
}

/*
 * File trailer for ut.c
 *
 * [EOF]
 */
