clc;
close all;
clear all;

%Fdu
a=100;
k=1;
theta = 0:2*pi/a:2*pi;
u = k*sin(theta);
M=length(u);
u0=0.1;
[m n]=size(u);
for i=1:1:n
    if abs(u(i)) <= u0;
        Fd(i)=1;
    else
        Fd(i)=0;
    end
end
figure(1);
plot(u,Fd);

%Fu
N=10;
delx=1;
A=randi([1,5],[1,10]);
omega = rand([-pi/2,pi/2],[1,N]);
E=[];
AF=[];
for b=1:1:M
    Ep = delx*sinc(delx*u(b)/2);
    E(b)=Ep;
    Af = 0;
    for i=1:N
        Af = Af+exp(1i*i*delx*u(b)-1i*omega(i));
    end
    AF(b)=Af;
    norm = 0;
    for i=1:N
        norm = norm+A(i);
    end
    norm = sqrt(delx*norm);
    Fu(b) = (Ep.*Af)/norm;
end
figure(2);
plot(u,abs(Fu));

%Cf
cf=zeros(1,N);
for i=1:N
    for j=1:M
        cf(i) = cf(i)+((abs(abs(Fd(j))-abs(Fu(j)))).^2);
    end
end