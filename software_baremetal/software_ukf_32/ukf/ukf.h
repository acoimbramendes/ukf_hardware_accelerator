/*
 * File: ukf.h
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 03-Oct-2018 20:41:13
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
extern void ukf(double x[3], double P[9], double z, const double Q[9], double R);

#endif

/*
 * File trailer for ukf.h
 *
 * [EOF]
 */
