/*
 * File: ukf.c
 *
 * MATLAB Coder version            : 3.1
 * C/C++ source code generated on  : 27-Oct-2018 21:12:24
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
  int i12;
  double b_x[21];
  double Y[9];
  static const double dv11[7] = { -999999.00000825175, 166666.66666804196,
    166666.66666804196, 166666.66666804196, 166666.66666804196,
    166666.66666804196, 166666.66666804196 };

  static const double dv12[7] = { -999996.00000925176, 166666.66666804196,
    166666.66666804196, 166666.66666804196, 166666.66666804196,
    166666.66666804196, 166666.66666804196 };

  double X1[21];
  double X2[21];
  int i13;
  double z1;
  double Z1[7];
  double P2;
  double Z2[7];
  double y;
  double b;
  double K[3];
  int i;
  double P12[3];
  static const double b_b[49] = { -999996.00000925176, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 166666.66666804196,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    166666.66666804196 };

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
  for (i12 = 0; i12 < 9; i12++) {
    P[i12] *= 0.001732050807561731;
  }

  /* sigma points around x */
  for (i12 = 0; i12 < 3; i12++) {
    b_x[i12] = x[i12];
    for (i13 = 0; i13 < 3; i13++) {
      Y[i13 + 3 * i12] = x[i13];
      b_x[i13 + 3 * (i12 + 1)] = Y[i13 + 3 * i12] + P[i13 + 3 * i12];
      b_x[i13 + 3 * (i12 + 4)] = Y[i13 + 3 * i12] - P[i13 + 3 * i12];
    }
  }

  b_ut(b_x, dv11, dv12, Q, x, X1, Y, X2);

  /* unscented transformation of process */
  /*  X1=sigmas(x1,P1,c);                         %sigma points around x1 */
  /*  X2=X1-x1(:,ones(1,size(X1,2)));             %deviation of X1 */
  c_ut(X1, dv11, dv12, R, &z1, Z1, &P2, Z2);

  /* unscented transformation of measurments */
  /* transformed cross-covariance */
  y = 1.0 / P2;
  b = z - z1;
  for (i = 0; i < 3; i++) {
    P12[i] = 0.0;
    for (i12 = 0; i12 < 7; i12++) {
      b_x[i + 3 * i12] = 0.0;
      for (i13 = 0; i13 < 7; i13++) {
        b_x[i + 3 * i12] += X2[i + 3 * i13] * b_b[i13 + 7 * i12];
      }

      P12[i] += b_x[i + 3 * i12] * Z2[i12];
    }

    K[i] = P12[i] * y;
    x[i] += K[i] * b;
  }

  /* state update */
  for (i12 = 0; i12 < 3; i12++) {
    for (i13 = 0; i13 < 3; i13++) {
      P[i12 + 3 * i13] = Y[i12 + 3 * i13] - K[i12] * P12[i13];
    }
  }

  /* covariance update */
}

/*
 * File trailer for ukf.c
 *
 * [EOF]
 */
