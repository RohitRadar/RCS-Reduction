clc;
close all;
clear all;
theta = 0:pi/180:2*pi;
ele_patt = cos(theta);
figure(1);
polarplot(theta,abs(ele_patt));

f = 3*(10^8);
lambda = 3*(10^8)/f;
d = lambda/4;
beta = 90*pi/180;
k = 2*pi*lambda;
g = k*d;
AF=cos(0.5*(g*cos(theta)+beta));
figure(2);
polarplot(theta, abs(AF));

E = ele_patt.*AF;
figure(3);
polarplot(theta,abs(E));