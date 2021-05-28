function f=nonlinear_state_eq(x)
f= [x(2);x(3);0.05*x(1)*(x(2)+x(3))];

