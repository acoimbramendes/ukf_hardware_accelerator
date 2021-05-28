/*
 * File: ut.h
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 07-Nov-2018 18:08:12
 */

#ifndef UT_H
#define UT_H

/* Include Files */
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "rtwtypes.h"
#include "Cholesky_types.h"

/* Function Declarations */
extern void b_ut(const double X[21], const double Wm[7], const double Wc[7],
                 const double R[9], double y[3], double Y[21], double P[9],
                 double Y1[21]);
extern void c_ut(const double X[21], const double Wm[7], const double Wc[7],
                 double R, double *y, double Y[7], double *P, double Y1[7]);
extern void ut(double eq, const double X[21], const double Wm[7], const double
               Wc[7], double n, const double R_data[], const int R_size[2],
               emxArray_real_T *y, emxArray_real_T *Y, double P_data[], int
               P_size[2], emxArray_real_T *Y1);

#endif

/*
 * File trailer for ut.h
 *
 * [EOF]
 */
