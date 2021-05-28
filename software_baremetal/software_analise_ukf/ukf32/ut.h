/*
 * File: ut.h
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 07-Nov-2018 20:16:33
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
extern void b_ut(const double X[2080], const double Wm[65], const double Wc[65],
                 const double R[1024], double y[32], double Y[2080], double P
                 [1024], double Y1[2080]);
extern void c_ut(const double X[2080], const double Wm[65], const double Wc[65],
                 double R, double *y, double Y[65], double *P, double Y1[65]);
extern void ut(double eq, const double X[2080], const double Wm[65], const
               double Wc[65], double n, const double R_data[], const int R_size
               [2], emxArray_real_T *y, emxArray_real_T *Y, double P_data[], int
               P_size[2], emxArray_real_T *Y1);

#endif

/*
 * File trailer for ut.h
 *
 * [EOF]
 */
