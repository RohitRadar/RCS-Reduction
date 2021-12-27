function [elfd,gn] = elepat(wl,a,b,xc,yc,th,ph)
    %complex aj,efld
    aj=1i;
    pi=3.141592654;
    ak=2.*pi/wl;
    akx=ak.*sin(th).*cos(ph);
    aky=ak.*sin(th).*sin(ph);
    x1=akx*a/2;
    y1=aky*b/2;
    if(x1 == 0)
        snx=1;
    end
    if(x1 ~= 0) 
        snx=sin(x1)/x1;
    end
    if(y1 == 0) 
        sny=1 ;
    end
    if(y1 ~=0) 
        sny=sin(y1)/y1;
    end
%   gn=sqrt(4.*pi*a*b)/wl*snx*sny;
   gn=snx*sny;
    elfd = gn*exp(aj*(akx.*xc+aky.*yc