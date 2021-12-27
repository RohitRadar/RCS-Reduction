clc;
clear all;
close all;
tic;
%% Reflectarray specification
freq=14;               % Frequency in GHz
freq=freq*1e9;    
c=3*1e8;
lam=c/freq;  
k=(2*pi)/lam;
L=0.2;
W=0.2;
dx=0.01071;           % Interelement spacing along x axis
dy=0.01071;           % Interelement spacing along y axis
mx=18;
ny=18;
xc = ones(mx,ny);  % Matrix initialization
yc = ones(mx,ny);  % Matrix initialization
M_X= (-((mx-1)/2)*dx:dx:((mx-1)/2)*dx); %vector of xcoordinates
M_Y = (-((ny-1)/2)*dy:dy:((ny-1)/2)*dy)'; %vector of ycoordinates
for m = 1:ny
    xc(m,:)= M_X;
end
for m = 1:mx
    yc(:,m)= M_Y;
end
rmn = sqrt(xc.^2 + yc.^2);        % Distance between origin and element center
%% UV Coordinates
ul=-0.2;
uh=0.2;
ust=0.01;
u1=ul:ust:uh;               % Enter the u and v coordinates
vl=-0.2;
vh=0.2;
vst=0.01;
v1=vl:vst:vh;
[U,V]=meshgrid(u1,v1);
theta=sqrt(U.^2+V.^2);
phi=atan2(V,U);
%% Desired gain
desgain=ones(length(u1),length(v1))*0.18;
gnabs=zeros(length(u1),length(v1));
for m=1:length(u1)
    for n=1:length(v1)
        if ((abs(v1(n))<max(v1)/2)&&(abs(u1(m))<max(u1)/2))
            desgain(m,n)=20;
            gnabs(m,n)=power(10,(desgain(m,n)/20));
        end
    end
end
%% Amplitude distribution with taper
tapdB=-10;
rmax=max(max(rmn));
for j=1:mx
    for k=1:ny
        ampl(j,k)=power(10,((tapdB/20).*power((rmn(j,k)/rmax),2)));
    end
end
pow1=0.0;
for j=1:mx
    for k=1:ny
        pow1=pow1+power(abs(ampl(j,k)),2);
    end
end
for j=1:mx
    for k=1:ny
        ampl(j,k)=ampl(j,k)/sqrt(pow1);
    end
end
%% Initialization
E=0;
ArrFac=0;
phimn=ones(mx,ny)*pi;
delBn=zeros(mx,ny);
%% Radiation pattern calculation
akx=k.*sin(theta).*cos(phi);
aky=k.*sin(theta).*sin(phi);
x1=akx*L/2;
y1=aky*W/2;
for m=1:length(u1)
    for n=1:length(v1)
        if(x1(m,n) == 0)
            snx(m,n)=1;
        else
            snx(m,n)=sin(x1(m,n))/x1(m,n);
        end
        if(y1(m,n) == 0)
            sny(m,n)=1;
        else
            sny(m,n)=sin(y1(m,n))/y1(m,n);
        end
    end
end
k=0;
for m=1:mx
    for n=1:ny
        k=k+1;
        gn=sqrt(4*pi*L*W)/lam*snx.*sny;
        zz=0;
        for xx=1:length(u1)
            for yy = 1:length(v1)
                zz=zz+1;
                elfld(k,zz) = gn(xx,yy)*exp(1i*(akx(xx,yy).*xc(m,n)+aky(xx,yy).*yc(m,n))); % E field
            end
        end
    end
end
subplot(2,1,1);
imagesc(gnabs);
gnf=zeros(length(u1),length(v1));
dgn=zeros(length(u1),length(v1));
gndb=zeros(length(u1),length(v1));
npsa=length(u1)*length(v1);
nele=mx*ny;      % no of elements
subplot(2,1,2);
filename="test2.gif";
niter=2000;
for iter=1:niter
    j=0;
    for ii = 1:length(u1)
        for jj =1:length(v1)
            j=j+1;
            gnf(j)=0.0;
            pp=0;
            for mm=1:mx
                for nn =1:ny
                    pp=pp+1;
                    gnf(j)=gnf(j)+ampl(mm,nn)*elfld(pp,j);
                end
            end
            dgn(j)=gnabs(ii,jj)-abs(gnf(j));    % difference between desired and obtained gain at each point
        end
    end
    p = reshape(gnf,length(u1),length(v1));
    imagesc(abs(p));
    drawnow
    frame=getframe(1);
    im=frame2im(frame);
    [imind,cm]=rgb2ind(im,256);
    if iter == 1
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append');
    end
    ref=-1000;
    for j=1:npsa
        if((dgn(j)) > ref)
            ref=(dgn(j));
            jlow=j;
        end
    end
    j=0;
    for m=1:mx
        for n=1:ny
            j=j+1;
        delf=dgn(jlow)/npsa;        % delF expression (Conjugate match algorithm)
        delb=delf/elfld(j,jlow);
        tt1=ampl(m,n)+delb;
        ampl(m,n)=ampl(m,n)*tt1/abs(tt1);
        end
    end

    pow1=0.0;
    for m=1:mx
        for n=1:ny
            pow1=pow1+power(abs(ampl(m,n)),2);
        end
    end
    for m=1:mx
        for n=1:ny
            ampl(m,n)=ampl(m,n)/sqrt(pow1);   
        end
    end  
end
phs1=angle(ampl)*180/pi;
for j=1:npsa
      gnf=0.0;
      k=0;
      for m=1:mx
          for n=1:ny
                k=k+1;
                gnf=gnf+ampl(m,n)*elfld(k,j);
          end
      end   
      gndb(j)=20.*log10(abs(gnf));
end
%{
% E field estimation with final phase distribution after the completion of optimization
nu=101;
nv=101;
    du1=160./(nu-1);   
    dv1=160./(nv-1);
    for j=1:nu
      %write(86,*) ' '
      v1(j)=-80.0+(j-1)*du1;
      for k=1:nv
        u1(k)=-80.0+(k-1)*dv1;
        uvr=sqrt(u1(k)*u1(k)+v1(j)*v1(j));
        if(uvr < 80) 
          th1=uvr*pi/180;
          ph1=atan2(v1(j),u1(k));
          etot=0.0;
          xx=0;
          for m=1:mx
              for n = 1:ny
                  xx=xx+1;
                efld1= elepat(lam,L,W,xc(m),yc(n),th1,ph1);  % E-field 
                etot=etot+ampl(m,n)*efld1;
              end
          end
          gaindb(j,k)=20.*log10(abs(etot));
        else
          gaindb(j,k)=-100.0;
        end    
        %write(86,25) u1,v1,gaindb,th1,ph1
  %25        format(5f15.5)
      end
    end
    imagesc(gaindb);
%}