clear all;
close all;
clc;
theta=(0:1:360)*(pi/180);
f=5*cos(theta).*cos(theta);
figure(1),polarplot(theta,f);
title('field pattern');

f_norm =f/max(f);
figure(2),polarplot(theta,f_norm);
title('Normalized field pattern');

p=f.^2;
p_norm = p/max(p);
figure(3),polarplot(theta,p_norm);
title ('normalized power pattern');

p_db = 10*log10(p_norm);
figure(4),polarplot (theta,p_db);
title('power pattern in db');
rlim([-30 0]);
figure(5),polarplot(theta,f_norm);
title('normalized semipolar field pattern');
thetalim([0 180]);