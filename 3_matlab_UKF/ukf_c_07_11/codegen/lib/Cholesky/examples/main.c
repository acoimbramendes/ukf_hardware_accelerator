/*
 * File: main.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 07-Nov-2018 20:16:33
 */

/*************************************************************************/
/* This automatically generated example C main file shows how to call    */
/* entry-point functions that MATLAB Coder generated. You must customize */
/* this file for your application. Do not modify this file directly.     */
/* Instead, make a copy of this file, modify it, and integrate it into   */
/* your development environment.                                         */
/*                                                                       */
/* This file initializes entry-point function arguments to a default     */
/* size and value before calling the entry-point functions. It does      */
/* not store or use any values returned from the entry-point functions.  */
/* If necessary, it does pre-allocate memory for returned values.        */
/* You can use this file as a starting point for a main function that    */
/* you can deploy in your application.                                   */
/*                                                                       */
/* After you copy the file, and before you deploy it, you must make the  */
/* following changes:                                                    */
/* * For variable-size function arguments, change the example sizes to   */
/* the sizes that your application requires.                             */
/* * Change the example values of function arguments to the values that  */
/* your application requires.                                            */
/* * If the entry-point functions return values, store these values or   */
/* otherwise use them as required by your application.                   */
/*                                                                       */
/*************************************************************************/
/* Include Files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "example.h"
#include "measurement_eq.h"
#include "nonlinear_state_eq.h"
#include "sigmas.h"
#include "ukf.h"
#include "ut.h"
#include "main.h"
#include "Cholesky_terminate.h"
#include "Cholesky_emxAPI.h"
#include "Cholesky_initialize.h"

/* Function Declarations */
static void argInit_1x65_real_T(double result[65]);
static void argInit_32x1_real_T(double result[32]);
static void argInit_32x32_real_T(double result[1024]);
static void argInit_32x65_real_T(double result[2080]);
static void argInit_d32xd32_real_T(double result_data[], int result_size[2]);
static double argInit_real_T(void);
static void main_Cholesky(void);
static void main_example(void);
static void main_measurement_eq(void);
static void main_nonlinear_state_eq(void);
static void main_sigmas(void);
static void main_ukf(void);
static void main_ut(void);

/* Function Definitions */

/*
 * Arguments    : double result[65]
 * Return Type  : void
 */
static void argInit_1x65_real_T(double result[65])
{
  int idx1;

  /* Loop over the array to initialize each element. */
  for (idx1 = 0; idx1 < 65; idx1++) {
    /* Set the value of the array element.
       Change this value to the value that the application requires. */
    result[idx1] = argInit_real_T();
  }
}

/*
 * Arguments    : double result[32]
 * Return Type  : void
 */
static void argInit_32x1_real_T(double result[32])
{
  int idx0;

  /* Loop over the array to initialize each element. */
  for (idx0 = 0; idx0 < 32; idx0++) {
    /* Set the value of the array element.
       Change this value to the value that the application requires. */
    result[idx0] = argInit_real_T();
  }
}

/*
 * Arguments    : double result[1024]
 * Return Type  : void
 */
static void argInit_32x32_real_T(double result[1024])
{
  int idx0;
  int idx1;

  /* Loop over the array to initialize each element. */
  for (idx0 = 0; idx0 < 32; idx0++) {
    for (idx1 = 0; idx1 < 32; idx1++) {
      /* Set the value of the array element.
         Change this value to the value that the application requires. */
      result[idx0 + (idx1 << 5)] = argInit_real_T();
    }
  }
}

/*
 * Arguments    : double result[2080]
 * Return Type  : void
 */
static void argInit_32x65_real_T(double result[2080])
{
  int idx0;
  int idx1;

  /* Loop over the array to initialize each element. */
  for (idx0 = 0; idx0 < 32; idx0++) {
    for (idx1 = 0; idx1 < 65; idx1++) {
      /* Set the value of the array element.
         Change this value to the value that the application requires. */
      result[idx0 + (idx1 << 5)] = argInit_real_T();
    }
  }
}

/*
 * Arguments    : double result_data[]
 *                int result_size[2]
 * Return Type  : void
 */
static void argInit_d32xd32_real_T(double result_data[], int result_size[2])
{
  int idx0;
  int idx1;

  /* Set the size of the array.
     Change this size to the value that the application requires. */
  result_size[0] = 2;
  result_size[1] = 2;

  /* Loop over the array to initialize each element. */
  for (idx0 = 0; idx0 < 2; idx0++) {
    for (idx1 = 0; idx1 < 2; idx1++) {
      /* Set the value of the array element.
         Change this value to the value that the application requires. */
      result_data[idx0 + 2 * idx1] = argInit_real_T();
    }
  }
}

/*
 * Arguments    : void
 * Return Type  : double
 */
static double argInit_real_T(void)
{
  return 0.0;
}

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_Cholesky(void)
{
  double A[1024];

  /* Initialize function 'Cholesky' input arguments. */
  /* Initialize function input argument 'A'. */
  argInit_32x32_real_T(A);

  /* Call the entry-point 'Cholesky'. */
  Cholesky(A);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_example(void)
{
  /* Call the entry-point 'example'. */
  example();
}

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_measurement_eq(void)
{
  double dv2[32];
  double h;

  /* Initialize function 'measurement_eq' input arguments. */
  /* Initialize function input argument 'x'. */
  /* Call the entry-point 'measurement_eq'. */
  argInit_32x1_real_T(dv2);
  h = measurement_eq(dv2);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_nonlinear_state_eq(void)
{
  double dv3[32];
  double f[32];

  /* Initialize function 'nonlinear_state_eq' input arguments. */
  /* Initialize function input argument 'x'. */
  /* Call the entry-point 'nonlinear_state_eq'. */
  argInit_32x1_real_T(dv3);
  nonlinear_state_eq(dv3, f);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_sigmas(void)
{
  double dv4[32];
  double dv5[1024];
  double X[2080];

  /* Initialize function 'sigmas' input arguments. */
  /* Initialize function input argument 'x'. */
  /* Initialize function input argument 'P'. */
  /* Call the entry-point 'sigmas'. */
  argInit_32x1_real_T(dv4);
  argInit_32x32_real_T(dv5);
  sigmas(dv4, dv5, argInit_real_T(), X);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_ukf(void)
{
  double x[32];
  double P[1024];
  double dv6[1024];

  /* Initialize function 'ukf' input arguments. */
  /* Initialize function input argument 'x'. */
  argInit_32x1_real_T(x);

  /* Initialize function input argument 'P'. */
  argInit_32x32_real_T(P);

  /* Initialize function input argument 'Q'. */
  /* Call the entry-point 'ukf'. */
  argInit_32x32_real_T(dv6);
  ukf(x, P, argInit_real_T(), dv6, argInit_real_T());
}

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_ut(void)
{
  emxArray_real_T *y;
  emxArray_real_T *Y;
  emxArray_real_T *Y1;
  double eq;
  double X[2080];
  double Wm[65];
  double Wc[65];
  double n;
  double R_data[1024];
  int R_size[2];
  double P_data[1024];
  int P_size[2];
  emxInitArray_real_T(&y, 1);
  emxInitArray_real_T(&Y, 2);
  emxInitArray_real_T(&Y1, 2);

  /* Initialize function 'ut' input arguments. */
  eq = argInit_real_T();

  /* Initialize function input argument 'X'. */
  argInit_32x65_real_T(X);

  /* Initialize function input argument 'Wm'. */
  argInit_1x65_real_T(Wm);

  /* Initialize function input argument 'Wc'. */
  argInit_1x65_real_T(Wc);
  n = argInit_real_T();

  /* Initialize function input argument 'R'. */
  argInit_d32xd32_real_T(R_data, R_size);

  /* Call the entry-point 'ut'. */
  ut(eq, X, Wm, Wc, n, R_data, R_size, y, Y, P_data, P_size, Y1);
  emxDestroyArray_real_T(Y1);
  emxDestroyArray_real_T(Y);
  emxDestroyArray_real_T(y);
}

/*
 * Arguments    : int argc
 *                const char * const argv[]
 * Return Type  : int
 */
int main(int argc, const char * const argv[])
{
  (void)argc;
  (void)argv;

  /* Initialize the application.
     You do not need to do this more than one time. */
  Cholesky_initialize();

  /* Invoke the entry-point functions.
     You can call entry-point functions multiple times. */
  main_Cholesky();
  main_example();
  main_measurement_eq();
  main_nonlinear_state_eq();
  main_sigmas();
  main_ukf();
  main_ut();

  /* Terminate the application.
     You do not need to do this more than one time. */
  Cholesky_terminate();
  return 0;
}

/*
 * File trailer for main.c
 *
 * [EOF]
 */
