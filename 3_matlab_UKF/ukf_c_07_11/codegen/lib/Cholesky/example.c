/*
 * File: example.c
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
#include "randn.h"
#include "eye.h"

/* Function Definitions */

/*
 * profile on
 * Arguments    : void
 * Return Type  : void
 */
void example(void)
{
  double s[32];
  int i;
  static const signed char b_s[32] = { 2, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 3, 2,
    1, 1, 1, 1, 5, 4, 1, 1, 0, 1, 1, 1, 1, 1, 3, 1, 1, 2 };

  double x[32];
  double P[1024];
  int k;
  double z;
  double y[32];
  double dv0[32];

  /*  Example: */
  /* number of state */
  /* std of process  */
  /* std of measurement */
  /*  covariance of process */
  /*  covariance of measurement   */
  /* f=@(x)[x(2);x(3);0.05*x(1)*(x(2)+x(3))];  % nonlinear state equations */
  /* h=@(x)x(1);                               % measurement equation */
  for (i = 0; i < 32; i++) {
    s[i] = b_s[i];
  }

  /*  initial state */
  randn(x);
  for (i = 0; i < 32; i++) {
    x[i] += (double)b_s[i];
  }

  /* initial state          % initial state with noise */
  eye(P);

  /*  initial state covraiance */
  /*  total dynamic steps */
  /* estmate        % allocate memory */
  /* actual */
  for (k = 0; k < 5; k++) {
    z = measurement_eq(s) + b_randn();

    /*  measurments */
    /*  save actual state */
    /*  save measurment */
    b_ukf(x, P, z);

    /*  ekf  */
    /*  save estimate */
    randn(y);
    nonlinear_state_eq(s, dv0);
    for (i = 0; i < 32; i++) {
      s[i] = dv0[i] + y[i];
    }

    /*  update process */
  }

  /*  for k=1:3                                 % plot results */
  /*    subplot(3,1,k) */
  /*    plot(1:N, sV(k,:), '-', 1:N, xV(k,:), '--') */
  /*  end */
  /* profile off */
  /* profile viewer */
}

/*
 * File trailer for example.c
 *
 * [EOF]
 */
