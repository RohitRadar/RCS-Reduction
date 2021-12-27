clc;
close all;
clear all;
theta = -pi/2:pi/180:pi/2;
ele_patt = cos(theta);
figure(1);
polarplot(theta,abs(ele_patt));

f = 3*(10^8);
N=10;
lambda = 3*(10^8)/f;
d = lambda/4;
beta = 60*pi/180;
k = 2*pi/lambda;
omega = k*d*cos(theta) + beta;
AF=sin(N*omega/2)./sin(omega/2);
figure(2);
polarplot(theta, abs(AF));

E = ele_patt.*AF;
figure(3);
polarplot(theta,abs(E));

