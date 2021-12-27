clc;
clear all;
close all;

%% initialization
freq=3*1e9;    
c=3*1e8;
lambda=c/freq;  
k0=(2*pi)/lambda;
L=0.2;
W=0.2;
mx=20;
ny=20;
dx=lambda;           
dy=lambda;           
M_X= -((mx-1)/2)*dx:dx:((mx-1)/2)*dx; 
M_Y = -((ny-1)/2)*dy:dy:((ny-1)/2)*dy;
[xc,yc]=meshgrid(M_X,M_Y);
rmn = sqrt(xc.^2 + yc.^2);

%% uv
ul=-0.5;
uh=0.5;
vl=-0.5;
vh=0.5;
spacing=0.01;
u1=ul:spacing:uh;          
v1=vl:spacing:vh;
[U,V]=meshgrid(u1,v1);
theta=sqrt(U.^2+V.^2);
phi=atan2(V,U);

%x1,y1 yesterday meet
%x1 = k0*cos(theta).*sin(phi);
%y1 = k0*sin(theta).*sin(phi);

%correct x1,y1 from cma_try
x1 = k0*sin(theta).*cos(phi); 
y1 = k0*sin(theta).*sin(phi); 

%% radpat
f1=zeros(length(x1),length(y1));
file = load("phase.mat");
%phase=pi/180*file.phase;
phase = 60*(pi/180)*ones(mx,ny);
for u=1:length(x1)
    for v=1:length(y1)
        a=x1(u,v);
        b=y1(u,v);
        f1(u,v)=sum(exp(1i*(xc*a+yc*b-phase)),'All');
    end
end
subplot(2,2,1);
surf(abs(f1))
title("u,v");

f2=zeros(length(theta),length(phi));
for u=1:length(theta)
    for v=1:length(phi)
        a = k0*sin(theta(u,v))*cos(phi(u,v));
        b = k0*sin(theta(u,v))*sin(phi(u,v));
        f2(u,v) = sum(exp(1i*(xc*a+yc*b-phase)),'All');
    end
end
subplot(2,2,2);
surf(abs(f2));
title("theta,phi")

%% element pattern
snx=sinc(x1*L/2);
sny=sinc(y1*W/2);
ep1=(sqrt(4*pi*L*W)/lambda)*snx.*sny;
subplot(2,2,3);
surf(ep1);
title("element pattern");

%% radpat
radpat = ep1.*f2;
subplot(2,2,4);
surf(abs(radpat));
title("radiation pattern");