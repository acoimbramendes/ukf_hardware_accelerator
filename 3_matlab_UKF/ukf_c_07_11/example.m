% Example:
function []=example()

profile on
n=32;      %number of state
q=1;    %std of process 
r=1;    %std of measurement
Q=q^2*eye(n); % covariance of process
R=r^2;        % covariance of measurement  
%f=@(x)[x(2);x(3);0.05*x(1)*(x(2)+x(3))];  % nonlinear state equations
%h=@(x)x(1);                               % measurement equation
s=[2;1;1;
   1;2;1;
   1;2;1;
   1;1;1;
   3;2;1;
   1;1;1;
   5;4;1;
   1;0;1;
   1;1;1;
   1;3;1;
   1;2;
];                                % initial state

x=s+q*randn(32,1); %initial state          % initial state with noise
P = eye(n);                               % initial state covraiance
N=5;                                     % total dynamic steps
xV = zeros(n,N);          %estmate        % allocate memory
sV = zeros(n,N);          %actual
zV = zeros(1,N);

for k=1:N
  z = measurement_eq(s) + r*randn;                     % measurments
  sV(:,k)= s;                             % save actual state
  zV(k)  = z;                             % save measurment
  [x, P] = ukf(x,P,z,Q,R);            % ekf 
  xV(:,k) = x;                            % save estimate
  s = nonlinear_state_eq(s) + q*randn(32,1);                % update process
end

% for k=1:3                                 % plot results
%   subplot(3,1,k)
%   plot(1:N, sV(k,:), '-', 1:N, xV(k,:), '--')
% end


profile off
profile viewer

