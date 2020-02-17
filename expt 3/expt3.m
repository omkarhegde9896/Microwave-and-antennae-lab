clear all;
close all;
clc;

phi =(0:1:360).*(pi/180);

n =input('Enter the number of source: ');
d =input('Enter the spacing between the sources as fraction of wavelengths EX: half waveleangth as 0.5: ');

delta = input('Enter the phase difference between the source EX: pi/2: ');
psi = (2*pi*d*sin(phi))+ delta;
E= (1/n)*(sin(n*psi/2)./sin(psi/2));
polarplot(phi,abs(E),'LineWidth',3);
