/*
 * File: sigmas.h
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 07-Nov-2018 20:16:33
 */

#ifndef SIGMAS_H
#define SIGMAS_H

/* Include Files */
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "rtwtypes.h"
#include "Cholesky_types.h"

/* Function Declarations */
extern void b_sigmas(const double x[32], const double P[1024], double X[2080]);
extern void sigmas(const double x[32], const double P[1024], double c, double X
                   [2080]);

#endif

/*
 * File trailer for sigmas.h
 *
 * [EOF]
 */
