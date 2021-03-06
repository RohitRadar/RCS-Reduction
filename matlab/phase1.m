clc;
clear all;
close all;

%% initialization
freq=3*1e9;    
c=3*1e8;
lambda=c/freq;  
k0=(2*pi)/lambda;
mx=20;
ny=20;
dx=lambda;           
dy=lambda;           
M_X= -((mx-1)/2)*dx:dx:((mx-1)/2)*dx; 
M_Y = -((ny-1)/2)*dy:dy:((ny-1)/2)*dy;
[xc,yc]=meshgrid(M_X,M_Y);

%% uv mapping
%u:x,v:y
th = 0:pi/180:pi/2;
ph = -pi:pi/180:pi;
[theta,phi]=meshgrid(th,ph);
u2=sin(theta).*cos(phi);
v2=sin(theta).*sin(phi);
u1=k0*u2;
v1=k0*v2;

%% element pattern
elp=zeros(length(ph),length(th));
for u=1:length(ph)
    elp(u,:)=cos(th);
end
subplot(2,2,1);
imagesc(th*180/pi,ph*180/pi,elp);
xlabel("theta");
ylabel("phi");

%% array factor
file = load("phase.mat");
%phase=pi/180*file.phase;
phase = 0*pi/180*ones(mx,ny);
f=zeros(length(phi),length(th));
for u=1:length(ph)
    for v=1:length(th)
        a=u1(u,v);
        b=v1(u,v);
        f(u,v)=sum(exp(1i*(xc*a+yc*b-phase)),'All');
    end
end
f=abs(f);
subplot(2,2,2);
imagesc(th*180/pi,ph*180/pi,abs(f));
xlabel("theta");
ylabel("phi");

%% radiation pattern
radpat=elp.*f;
subplot(2,2,3);
imagesc(th*180/pi,ph*180/pi,radpat);
xlabel("theta");
ylabel("phi");
colorbar;
subplot(2,2,4);
surf(u2,v2,radpat);

%% spherical
um=zeros(length(ph),length(th));
vm=zeros(length(ph),length(th));
rm=zeros(length(ph),length(th));
for u=1:length(ph)
    for v=1:length(th)
        um(u,v) = radpat(u,v)*sin(theta(u,v))*cos(phi(u,v));
        vm(u,v) = radpat(u,v)*sin(theta(u,v)*sin(phi(u,v)));
        rm(u,v) = radpat(u,v)*cos(phi(u));
    end
end
figure(3);
surf(um,vm,rm);