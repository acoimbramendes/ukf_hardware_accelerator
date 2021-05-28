/*
 * File: ukf.h
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 07-Nov-2018 20:16:33
 */

#ifndef UKF_H
#define UKF_H

/* Include Files */
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "rtwtypes.h"
#include "Cholesky_types.h"

/* Function Declarations */
extern void b_ukf(double x[32], double P[1024], double z);
extern void ukf(double x[32], double P[1024], double z, const double Q[1024],
                double R);

#endif

/*
 * File trailer for ukf.h
 *
 * [EOF]
 */
