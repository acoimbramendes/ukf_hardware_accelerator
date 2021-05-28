/*
 * File: example.c
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
#include "randn.h"

/* Function Definitions */

/*
 * Arguments    : void
 * Return Type  : void
 */
void example(void)
{
  double s[3];
  int i;
  static const signed char b_s[3] = { 0, 0, 1 };

  double x[3];
  int i0;
  double P[9];
  int k;
  double P12[3];
  double z;
  double b_x[21];
  double Y[9];
  static const double dv0[7] = { -999999.00000825175, 166666.66666804196,
    166666.66666804196, 166666.66666804196, 166666.66666804196,
    166666.66666804196, 166666.66666804196 };

  static const double dv1[7] = { -999996.00000925176, 166666.66666804196,
    166666.66666804196, 166666.66666804196, 166666.66666804196,
    166666.66666804196, 166666.66666804196 };

  static const double dv2[9] = { 1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0 };

  double X1[21];
  double X2[21];
  int i1;
  double z1;
  double Z1[7];
  double P2;
  double Z2[7];
  double y;
  double b;
  double K[3];
  static const double b_b[49] = { -999996.00000925176, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 166666.66666804196,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 166666.66666804196, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    166666.66666804196 };

  /*  Example: */
  /* profile on */
  /* number of state */
  /* std of process  */
  /* std of measurement */
  /*  covariance of process */
  /*  covariance of measurement   */
  /* f=@(x)[x(2);x(3);0.05*x(1)*(x(2)+x(3))];  % nonlinear state equations */
  /* h=@(x)x(1);                               % measurement equation */
  for (i = 0; i < 3; i++) {
    s[i] = b_s[i];
  }

  /*  initial state */
  randn(x);
  for (i0 = 0; i0 < 3; i0++) {
    x[i0] += (double)b_s[i0];
  }

  /* initial state          % initial state with noise */
  memset(&P[0], 0, 9U * sizeof(double));
  for (k = 0; k < 3; k++) {
    P[k + 3 * k] = 1.0;
  }

  /*  initial state covraiance */
  /*  total dynamic steps */
  /* estmate        % allocate memory */
  /* actual */
  for (k = 0; k < 200; k++) {
    z = measurement_eq(s) + b_randn();

    /*  measurments */
    /*  save actual state */
    /*  save measurment */
    /*  UKF   Unscented Kalman Filter for nonlinear dynamic systems */
    /*  [x, P] = ukf(f,x,P,h,z,Q,R) returns state estimate, x and state covariance, P  */
    /*  for nonlinear dynamic system (for simplicity, noises are assumed as additive): */
    /*            x_k+1 = f(x_k) + w_k */
    /*            z_k   = h(x_k) + v_k */
    /*  where w ~ N(0,Q) meaning w is gaussian noise with covariance Q */
    /*        v ~ N(0,R) meaning v is gaussian noise with covariance R */
    /*  Inputs:   f: function handle for f(x) */
    /*            x: "a priori" state estimate */
    /*            P: "a priori" estimated state covariance */
    /*            h: fanction handle for h(x) */
    /*            z: current measurement */
    /*            Q: process noise covariance  */
    /*            R: measurement noise covariance */
    /*  Output:   x: "a posteriori" state estimate */
    /*            P: "a posteriori" state covariance */
    /*  */
    /*  Example: */
    /* { */
    /* n=3;      %number of state */
    /* q=0.1;    %std of process  */
    /* r=0.1;    %std of measurement */
    /* Q=q^2*eye(n); % covariance of process */
    /* R=r^2;        % covariance of measurement   */
    /* f=@(x)[x(2);x(3);0.05*x(1)*(x(2)+x(3))];  % nonlinear state equations */
    /* h=@(x)x(1);                               % measurement equation */
    /* s=[0;0;1];                                % initial state */
    /* x=s+q*randn(3,1); %initial state          % initial state with noise */
    /* P = eye(n);                               % initial state covraiance */
    /* N=20;                                     % total dynamic steps */
    /* xV = zeros(n,N);          %estmate        % allocate memory */
    /* sV = zeros(n,N);          %actual */
    /* zV = zeros(1,N); */
    /* for k=1:N */
    /*   z = h(s) + r*randn;                     % measurments */
    /*   sV(:,k)= s;                             % save actual state */
    /*   zV(k)  = z;                             % save measurment */
    /*   [x, P] = ukf(f,x,P,h,z,Q,R);            % ekf  */
    /*   xV(:,k) = x;                            % save estimate */
    /*   s = f(s) + q*randn(3,1);                % update process  */
    /* end */
    /* for k=1:3                                 % plot results */
    /*   subplot(3,1,k) */
    /*   plot(1:N, sV(k,:), '-', 1:N, xV(k,:), '--') */
    /* end */
    /* } */
    /*  Reference: Julier, SJ. and Uhlmann, J.K., Unscented Filtering and */
    /*  Nonlinear Estimation, Proceedings of the IEEE, Vol. 92, No. 3, */
    /*  pp.401-422, 2004.  */
    /*  */
    /*  By Yi Cao at Cranfield University, 04/01/2008 */
    /*  */
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
    for (i0 = 0; i0 < 9; i0++) {
      P[i0] *= 0.001732050807561731;
    }

    /* sigma points around x */
    for (i0 = 0; i0 < 3; i0++) {
      b_x[i0] = x[i0];
      for (i1 = 0; i1 < 3; i1++) {
        Y[i1 + 3 * i0] = x[i1];
        b_x[i1 + 3 * (i0 + 1)] = Y[i1 + 3 * i0] + P[i1 + 3 * i0];
        b_x[i1 + 3 * (i0 + 4)] = Y[i1 + 3 * i0] - P[i1 + 3 * i0];
      }
    }

    b_ut(b_x, dv0, dv1, dv2, x, X1, Y, X2);

    /* unscented transformation of process */
    /*  X1=sigmas(x1,P1,c);                         %sigma points around x1 */
    /*  X2=X1-x1(:,ones(1,size(X1,2)));             %deviation of X1 */
    c_ut(X1, dv0, dv1, 1.0, &z1, Z1, &P2, Z2);

    /* unscented transformation of measurments */
    /* transformed cross-covariance */
    y = 1.0 / P2;
    b = z - z1;

    /* state update */
    /* covariance update */
    for (i = 0; i < 3; i++) {
      P12[i] = 0.0;
      for (i0 = 0; i0 < 7; i0++) {
        b_x[i + 3 * i0] = 0.0;
        for (i1 = 0; i1 < 7; i1++) {
          b_x[i + 3 * i0] += X2[i + 3 * i1] * b_b[i1 + 7 * i0];
        }

        P12[i] += b_x[i + 3 * i0] * Z2[i0];
      }

      K[i] = P12[i] * y;
      x[i] += K[i] * b;
    }

    for (i0 = 0; i0 < 3; i0++) {
      for (i1 = 0; i1 < 3; i1++) {
        P[i0 + 3 * i1] = Y[i0 + 3 * i1] - K[i0] * P12[i1];
      }
    }

    /*  ekf  */
    /*  save estimate */
    randn(P12);
    nonlinear_state_eq(s, K);
    for (i = 0; i < 3; i++) {
      s[i] = K[i] + P12[i];
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
