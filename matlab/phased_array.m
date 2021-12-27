clc;
clear all;
close all;

K=8;
L=8;
f=3*1e9;
lambda = 3*1e8/f;
dx=lambda/4;
dy = dx;
k0=2*pi/lambda;
theta = -90:1:90;
alpha = -90:1:90;
%{
figure(1);
elp = cos(theta*pi/180);
taper=0;
omega = k0*dx*cos(theta*pi/180)+taper*pi/180;
af=sin(K*omega/2)./sin(omega/2);
hold on
plot(theta,20*log(elp));
plot(theta,20*log(abs(af)/8));
axis([-90 90 -60 0]);
hold off
figure(5);
polarplot(theta*pi/180,abs(af));
%}
th = 0;
al = 0;
af=zeros(length(theta),length(theta));
afxx=zeros(length(theta),length(theta));
afyy=zeros(length(theta),length(theta));
for k=1:length(alpha)
    afx = zeros(length(theta),1);
    afy = zeros(length(theta),1);
    for i=1:length(theta)
        for j=1:K
            afx(i)=afx(i)+exp(1i*k0*(j-1)*dx*(sin(theta(i)*pi/180)*cos(alpha(k)*pi/180)-sin(th*pi/180)*cos(al*pi/180)));
            afy(i)=afy(i)+exp(1i*k0*(j-1)*dy*(sin(theta(i)*pi/180)*sin(alpha(k)*pi/180)-sin(th*pi/180)*sin(al*pi/180)));
        end
    end
    afxx(k,:) = afx;
    afyy(k,:) = afy;
    af(k,:) = afx.*afy;
end

figure(2);
ep = zeros(length(theta),length(theta));
for i=1:length(alpha)
   ep(i,:) = cos(theta*pi/180); 
end
radpat = ep.*abs(af);
subplot(2,2,1);
hold on
plot(theta,20*log(ep(1,:)),"Color",'b');
plot(theta,20*log(abs(af(181,:))/64),"Color",'r');
plot(theta,20*log(radpat(181,:)/64),"Color",'g');
axis([-90 90 -200 0]);
hold off

subplot(2,2,2);
hold on
plot(theta,20*log(abs(afxx(91,:))/8),"Color",'r');
plot(theta,20*log(abs(afyy(91,:))/8),"Color",'g');
axis([-90 90 -200 0]);
hold off

subplot(2,2,3);
polarplot(theta*pi/180,abs(af(91,:)))
subplot(2,2,4);
surf(theta,alpha,abs(af));

%{
j=sqrt(-1);
M=361; 
k=2*pi; 
theta=linspace(0,pi,M);
phi=linspace(-pi/2,pi/2,M);
[THETA,PHI]=meshgrid(theta,phi);
dtheta=pi/M;
dphi=pi/M;

My=8; 
Nz=1;
dy=0.5; 
dz=0.5; 
deltay=45*pi/180; 
deltaz=45*pi/180;

%% Array factor
psiy=(-k*dy*sin(THETA).*sin(PHI))+deltay;
psiz=(-k*dz*cos(THETA))+ deltaz;
AFy=0;
AFz=0;

for m=1:My
    AFy= AFy+ exp(j*(m-1)*psiy);
end
for n=1:Nz
    AFz=AFz+ exp(j*(n-1)*psiz);
end
AF=AFy.*AFz;
AFmag=abs(AF);
%Directivity
Utheta=AFmag.^2;
Prad=sum(sum(Utheta.*sin(THETA)*dtheta*dphi));
D=4*pi*Utheta/Prad;
dBd=20.*log10(D);

%% Directivity Plot
surf(PHI,THETA,D);
shading interp;
colormap('default');
xlabel('\phi[deg]','Fontsize',6);
set(gca,'XTick',-pi/2:pi/6:pi/2);
set(gca,'XTickLabel',{'-90','-60','-30','0','30','60','90'},'Fontsize',10,'fontweight','bold','box','on');
ylabel('\Theta[deg]','Fontsize',6);
set(gca,'YTick',0:pi/6:pi);
set(gca,'YTickLabel',{'-90','-60','-30','0','30','60','90'},'Fontsize',10,'fontweight','bold','box','on');
zlabel('Directivity',"FontSize",10)
%}
