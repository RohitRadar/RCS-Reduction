clc;
clear all;
close all;

%% spec
freq=10*1e9;    
c=3*1e8;
lambda=c/freq;  
k0=(2*pi)/lambda;
L=0.2;
W=0.2;
mx=20;
ny=20;
dx=lambda/2;           
dy=lambda/2;           
M_X= -((mx-1)/2)*dx:dx:((mx-1)/2)*dx; 
M_Y = -((ny-1)/2)*dy:dy:((ny-1)/2)*dy;
[xc,yc]=meshgrid(M_X,M_Y);
rmn = sqrt(xc.^2 + yc.^2);

%% uv coordinates
ul=-1;
uh=1;
vl=-1;
vh=1;
spacing=0.01;
u1=ul:spacing:uh;          
v1=vl:spacing:vh;
[U,V]=meshgrid(u1,v1);
theta=sqrt(U.^2+V.^2);
phi=atan2(V,U);
akx=k0*sin(theta).*cos(phi);
aky=k0*sin(theta).*sin(phi);
theta=theta*180/pi;
phi=phi*180/pi;
x1=akx*L/2;
y1=aky*W/2;

%% element pattern
snx=sinc(x1);
sny=sinc(y1);
ep1=(sqrt(4*pi*L*W)/lambda)*snx.*sny;
surf(ep1);
%% initialization
desgain = 20*ones(length(u1),length(v1));
gnabs = power(10,desgain/20);
for u=1:length(u1)
    for v=1:length(v1)
        if ((abs(v1(v))<max(v1)/2)&&(abs(u1(u))<max(u1)/2))
        %if (abs(v1(v))>max(v1)/2)||(abs(u1(u))>max(u1)/2)||((v1(v)<0)&&(u1(u)<0))
            desgain(u,v)=0;
            gnabs(u,v)=0;
        end
    end
end
%{
desgain = zeros(length(u1),length(v1));
gnabs = zeros(length(u1),length(v1));
for u=1:length(u1)
    for v=1:length(v1)
        if abs(v1(v))<0.3&&abs(v1(v))>0.15
            if abs(u1(u))<0.3
                desgain(u,v) = 20;
                gnabs(u,v) = power(10,desgain(u,v)/20);
            end
        end
        if abs(u1(u))<0.3&&abs(u1(u))>0.15
            if abs(v1(v))<0.3
                desgain(u,v) = 20;
                gnabs(u,v) = power(10,desgain(u,v)/20);
            end
        end
    end
end
%}
figure(1);
x = 1:-2/length(gnabs):-1;
y = 1:-2/length(gnabs):-1;
imagesc(x,y,gnabs);
xlabel("U co-ordinate");
ylabel("V co-ordinate");
title("Desired Footprint in dB")
colorbar();
pic=gcf;
exportgraphics(pic,"desiredgain.jpg");