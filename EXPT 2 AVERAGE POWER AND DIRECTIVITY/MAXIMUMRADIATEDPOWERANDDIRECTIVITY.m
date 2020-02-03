close all; clear all; clc;
format short;
phi_degree=0:1:360;
phi_rad=phi_degree*pi/180;
theta_degree=0:1:180;
theta_rad=theta_degree*pi/180;
dth=theta_rad(2)-theta_rad(1);
dph=phi_rad(2)-phi_rad(1);
[THETA,PHI]=meshgrid(theta_rad,phi_rad);
U=(sin(THETA).*sin(PHI)).^2;
p_avg=sum(sum(U.*sin(THETA)*dth*dph));
D=4*pi*max(max(U))/p_avg;
D_db=10*log10(D);
fprintf('Average power radiated by the antenna is %f watts\n',p_avg);
fprintf('Directivity of the antenna is %f (dimensionless) and %f(in db)\n',D,D_db);