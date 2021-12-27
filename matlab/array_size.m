clc;
close all;
clear all;

theta = -pi/2:pi/360:pi/2;
f= 2*(10^9);
c=3*(10^8);
lamda =c/f;
k0=(2*pi)/lamda;
u0 = pi/8;
u=sin(theta);
x = -20*pi:0.01:20*pi;
a=2.5*pi;
[m n]=size(x);

%F(u)
for i=1:1:length(u)
    if abs(u(i)) <= u0;
        fofu(i)=1;
    else
        fofu(i)=0;
    end
end
figure(1);
plot(theta,fofu);

%f(x)
for i=1:1:n
    fofx1(i) = (u0/pi)*sinc(x(i)*u0);
    fun = @(y) exp(-1i*x(i)*y);
    fofx2(i) = (1/2*pi)*integral(fun,-u0,u0);
end
fofx3 = ifft(fofu);
figure(2);
plot(x,fofx1);

%ft(x)
for i=1:1:n
    if abs(x(i)) <= a
        ftx(i) = (u0/pi)*sinc(x(i)*u0);
    else
        ftx(i) = 0;
    end
end
figure(3);
plot(x,ftx);

%Ft(u)
for i=1:1:length(u)
    fun2 = @(y) sinc(y*u0).*exp(1i*y*u(i));
    ftu(i) = (u0/pi)*integral(fun2,-a/2,a/2);
end
figure(4);
plot(theta,abs(ftu));
