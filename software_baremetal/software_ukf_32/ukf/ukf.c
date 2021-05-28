/*
 * File: ukf.c
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
 * UKF   Unscented Kalman Filter for nonlinear dynamic systems
 *  [x, P] = ukf(f,x,P,h,z,Q,R) returns state estimate, x and state covariance, P
 *  for nonlinear dynamic system (for simplicity, noises are assumed as additive):
 *            x_k+1 = f(x_k) + w_k
 *            z_k   = h(x_k) + v_k
 *  where w ~ N(0,Q) meaning w is gaussian noise with covariance Q
 *        v ~ N(0,R) meaning v is gaussian noise with covariance R
 *  Inputs:   f: function handle for f(x)
 *            x: "a priori" state estimate
 *            P: "a priori" estimated state covariance
 *            h: fanction handle for h(x)
 *            z: current measurement
 *            Q: process noise covariance
 *            R: measurement noise covariance
 *  Output:   x: "a posteriori" state estimate
 *            P: "a posteriori" state covariance
 *
 *  Example:
 * {
 * n=3;      %number of state
 * q=0.1;    %std of process
 * r=0.1;    %std of measurement
 * Q=q^2*eye(n); % covariance of process
 * R=r^2;        % covariance of measurement
 * f=@(x)[x(2);x(3);0.05*x(1)*(x(2)+x(3))];  % nonlinear state equations
 * h=@(x)x(1);                               % measurement equation
 * s=[0;0;1];                                % initial state
 * x=s+q*randn(3,1); %initial state          % initial state with noise
 * P = eye(n);                               % initial state covraiance
 * N=20;                                     % total dynamic steps
 * xV = zeros(n,N);          %estmate        % allocate memory
 * sV = zeros(n,N);          %actual
 * zV = zeros(1,N);
 * for k=1:N
 *   z = h(s) + r*randn;                     % measurments
 *   sV(:,k)= s;                             % save actual state
 *   zV(k)  = z;                             % save measurment
 *   [x, P] = ukf(f,x,P,h,z,Q,R);            % ekf
 *   xV(:,k) = x;                            % save estimate
 *   s = f(s) + q*randn(3,1);                % update process
 * end
 * for k=1:3                                 % plot results
 *   subplot(3,1,k)
 *   plot(1:N, sV(k,:), '-', 1:N, xV(k,:), '--')
 * end
 * }
 *  Reference: Julier, SJ. and Uhlmann, J.K., Unscented Filtering and
 *  Nonlinear Estimation, Proceedings of the IEEE, Vol. 92, No. 3,
 *  pp.401-422, 2004.
 *
 *  By Yi Cao at Cranfield University, 04/01/2008
 * Arguments    : double x[3]
 *                double P[9]
 *                double z
 *                const double Q[9]
 *                double R
 * Return Type  : void
 */
void ukf(double x[3], double P[9], double z, const double Q[9], double R)
{
  int i7;
  int i8;
  double Y[9];
  double A[9];
  double X[21];
  int j;
  double X1[21];
  int k;
  double d[49];
  static const double dv6[7] = { -999999.00000825175, 166666.66666804196,
    166666.66666804196, 166666.66666804196, 166666.66666804196,
    166666.66666804196, 166666.66666804196 };

  double z1;
  double Z1[7];
  static const double dv7[7] = { -999996.00000925176, 166666.66666804196,
    166666.66666804196, 166666.66666804196, 166666.66666804196,
    166666.66666804196, 166666.66666804196 };

  double b;
  double b_d[49];
  double b_X[21];
  double P12[3];
  double b_Z1[7];
  double d1;
  double y;
  static const double b_b[49] = { -999996.00000925176, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 166666.66666804196,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    166666.66666804196 };

  double c_X[9];
  double K[9];
  double b_K[3];

  /* numer of states */
  /* numer of measurements */
  /* default, tunable */
  /* default, tunable */
  /* default, tunable */
  /* scaling factor */
  /* scaling factor */
  /* weights for means */
  /* weights for covariance */
  /* Sigma points around reference point */
  /* Inputs: */
  /*        x: reference point */
  /*        P: covariance */
  /*        c: coefficient */
  /* Output: */
  /*        X: Sigma points */
  Cholesky(P);
  for (i7 = 0; i7 < 3; i7++) {
    for (i8 = 0; i8 < 3; i8++) {
      A[i8 + 3 * i7] = P[i7 + 3 * i8];
    }
  }

  for (i7 = 0; i7 < 9; i7++) {
    A[i7] *= 0.001732050807561731;
  }

  for (i7 = 0; i7 < 3; i7++) {
    X[i7] = x[i7];
    for (i8 = 0; i8 < 3; i8++) {
      Y[i8 + 3 * i7] = x[i8];
      X[i8 + 3 * (i7 + 1)] = Y[i8 + 3 * i7] + A[i8 + 3 * i7];
      X[i8 + 3 * (i7 + 4)] = Y[i8 + 3 * i7] - A[i8 + 3 * i7];
    }
  }

  /* sigma points around x */
  /* Unscented Transformation */
  /* Input: */
  /*         f: nonlinear map */
  /*         X: sigma points */
  /*        Wm: weights for mean */
  /*        Wc: weights for covraiance */
  /*         n: numer of outputs of f */
  /*         R: additive covariance */
  /* Output: */
  /*         y: transformed mean */
  /*         Y: transformed smapling points */
  /*         P: transformed covariance */
  /*        Y1: transformed deviations */
  for (j = 0; j < 3; j++) {
    x[j] = 0.0;
  }

  for (k = 0; k < 7; k++) {
    nonlinear_state_eq(*(double (*)[3])&X[3 * k], *(double (*)[3])&X1[3 * k]);
    for (i7 = 0; i7 < 3; i7++) {
      x[i7] += dv6[k] * X1[i7 + 3 * k];
    }
  }

  for (i7 = 0; i7 < 7; i7++) {
    for (i8 = 0; i8 < 3; i8++) {
      X[i8 + 3 * i7] = X1[i8 + 3 * i7] - x[i8];
    }
  }

  memset(&d[0], 0, 49U * sizeof(double));

  /* unscented transformation of process */
  /*  X1=sigmas(x1,P1,c);                         %sigma points around x1 */
  /*  X2=X1-x1(:,ones(1,size(X1,2)));             %deviation of X1 */
  /* Unscented Transformation */
  /* Input: */
  /*         f: nonlinear map */
  /*         X: sigma points */
  /*        Wm: weights for mean */
  /*        Wc: weights for covraiance */
  /*         n: numer of outputs of f */
  /*         R: additive covariance */
  /* Output: */
  /*         y: transformed mean */
  /*         Y: transformed smapling points */
  /*         P: transformed covariance */
  /*        Y1: transformed deviations */
  z1 = 0.0;
  for (k = 0; k < 7; k++) {
    d[k + 7 * k] = dv7[k];
    b = measurement_eq(*(double (*)[3])&X1[3 * k]);
    z1 += dv6[k] * b;
    Z1[k] = b;
  }

  for (i7 = 0; i7 < 7; i7++) {
    Z1[i7] -= z1;
  }

  memset(&b_d[0], 0, 49U * sizeof(double));
  for (j = 0; j < 7; j++) {
    b_d[j + 7 * j] = dv7[j];
  }

  /* unscented transformation of measurments */
  for (i7 = 0; i7 < 3; i7++) {
    P12[i7] = 0.0;
    for (i8 = 0; i8 < 7; i8++) {
      b_X[i7 + 3 * i8] = 0.0;
      for (j = 0; j < 7; j++) {
        b_X[i7 + 3 * i8] += X[i7 + 3 * j] * b_b[j + 7 * i8];
      }

      P12[i7] += b_X[i7 + 3 * i8] * Z1[i8];
    }
  }

  /* transformed cross-covariance */
  d1 = 0.0;
  for (i7 = 0; i7 < 7; i7++) {
    b_Z1[i7] = 0.0;
    for (i8 = 0; i8 < 7; i8++) {
      b_Z1[i7] += Z1[i8] * b_d[i8 + 7 * i7];
    }

    d1 += b_Z1[i7] * Z1[i7];
  }

  y = 1.0 / (d1 + R);
  b = z - z1;

  /* state update */
  for (j = 0; j < 3; j++) {
    b_K[j] = P12[j] * y;
    x[j] += b_K[j] * b;
    for (i7 = 0; i7 < 7; i7++) {
      b_X[j + 3 * i7] = 0.0;
      for (i8 = 0; i8 < 7; i8++) {
        b_X[j + 3 * i7] += X[j + 3 * i8] * d[i8 + 7 * i7];
      }
    }

    for (i7 = 0; i7 < 3; i7++) {
      d1 = 0.0;
      for (i8 = 0; i8 < 7; i8++) {
        d1 += b_X[j + 3 * i8] * X[i7 + 3 * i8];
      }

      c_X[j + 3 * i7] = d1 + Q[j + 3 * i7];
      K[j + 3 * i7] = b_K[j] * P12[i7];
    }
  }

  for (i7 = 0; i7 < 3; i7++) {
    for (i8 = 0; i8 < 3; i8++) {
      P[i8 + 3 * i7] = c_X[i8 + 3 * i7] - K[i8 + 3 * i7];
    }
  }

  /* covariance update */
}

/*
 * File trailer for ukf.c
 *
 * [EOF]
 */
