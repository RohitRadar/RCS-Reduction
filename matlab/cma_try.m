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
imagesc(gnabs);
title("desired gain")
colorbar();
pic=gcf;
exportgraphics(pic,"pics/desiredgain.jpg");
%% radiation pattern
phase = 0*(pi/180)*ones(mx,ny);
amp = 10*ones(mx,ny)/sqrt(100*mx*ny);
bn = exp(-1i*phase);
delbn=zeros(mx,ny);
niter=5000;
k=0;
elf=zeros(mx,ny,length(u1),length(v1));
for u=1:length(u1)
    for v=1:length(v1)
        elf(:,:,u,v) = ep1(u,v)*amp.*exp(1i*(akx(u,v)*xc+aky(u,v)*yc));
    end
end 
filename="pics/test.gif";
figure(2);
title("Radiation pattern");
name = "pics/iter";
for iter=1:niter
    disp(iter);
    delf=-1000;
    f=zeros(length(u1),length(v1));
    for u=1:length(u1)
        for v=1:length(v1)
            f(u,v)=sum(bn.*elf(:,:,u,v),'All');
            diff=gnabs(u,v)-f(u,v);
            if (diff>delf)
                delf=diff;
                ulow=u;
                vlow=v;
            end
        end
    end
    for m=1:mx
        for n=1:ny
            delbn = 0.25*abs(delf)*exp(1i*angle(delf))/(mx*ny*elf(m,n,ulow,vlow));
            bn(m,n) = (bn(m,n)+delbn)/abs(bn(m,n)+delbn);
        end
    end
    if (rem(iter,20)==1)
        imagesc(abs(f));
        colorbar();
        pic=gcf;
        namex = name+num2str(iter)+".jpg";
        exportgraphics(pic,namex);
        drawnow
        frame=getframe(1);
        im=frame2im(frame);
        [imind,cm]=rgb2ind(im,256);
        if iter == 1
            imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
        else
            imwrite(imind,cm,filename,'gif','WriteMode','append');
        end
    end
end
phase = -(180/pi)*angle(bn);
save("phase.mat","phase");