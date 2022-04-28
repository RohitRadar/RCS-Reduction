clc;
clear all;
close all;

CST = CST_MicrowaveStudio(cd,'pehonix_20x20');
CST.setSolver('frequency');
CST.setBoundaryCondition('xmin','unit cell','xmax','unit cell','ymin','unit cell','ymax','unit cell');

CST.addNormalMaterial('FR4',4.3,1,[0.8 0.8 0.3]);

wg = 300;
lg = 300;
hg = 1;
hv = 5;
hs = 1.57;
hp = 0.035;
N=20;
M=20;
interx = wg/M;
intery = lg/N;

file = load('C:\Users\rohit\OneDrive\Desktop\Now\rcs\matlab\20x20\phase\iter2541.mat');
phase = file.phasesave;
file = readmatrix('C:\Users\rohit\OneDrive\Desktop\Now\rcs\cst\hgiddens\sweep\phoenix_data.csv');

ol = ones(N,M);%solid circle radius
rl = ones(N,M);%outer ring outer radius
sl = ones(N,M);%outer ring inner radius
pl = ones(N,M);%inner ring outer radius
gl = ones(N,M);%inner ring inner radius

x = file(:,7);
for i=1:1:N
    for j=1:1:M
        [val,index]=min(abs(x-phase(i,j)));
        ol(i,j)=file(index,3);
        rl(i,j)=file(index,5);
        sl(i,j)=file(index,6);
        pl(i,j)=file(index,4);
        gl(i,j)=file(index,2);
    end
end

Name = 'GroundPlane';
component = 'Base';
material = 'Copper (annealed)';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [0 hg];
CST.addBrick(Xrange,Yrange,Zrange,Name,component,material);
Name = 'Vacuum';
material = 'Vacuum';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [hg hg+hv];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'Substrate';
material = 'FR4';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [hg+hv hg+hv+hs];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

for i=1:1:N
    for j=1:1:M
        o = ol(i,j);
        r = rl(i,j);
        s = sl(i,j);
        p = pl(i,j);
        g = gl(i,j);
        dispx=(-wg/2+interx/2) + interx*(j-1);
        dispy=(lg/2-intery/2) - intery*(i-1);
        component = ['unitcell' num2str(i) 'x' num2str(j)];
        Name = 'solidcircle';
        material = 'Copper (annealed)';
        outerrad=o;
        innerrad=0;
        Xcenter = dispx;
        Ycenter = dispy;
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addCylinder(outerrad,innerrad,'Z',Xcenter,Ycenter,Zrange,Name,component,material);
        Name = 'innercircle';
        material = 'Copper (annealed)';
        outerrad=p;
        innerrad=g;
        Xcenter = dispx;
        Ycenter = dispy;
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addCylinder(outerrad,innerrad,'Z',Xcenter,Ycenter,Zrange,Name,component,material);
        Name = 'outercircle';
        material = 'Copper (annealed)';
        outerrad=r;
        innerrad=s;
        Xcenter = dispx;
        Ycenter = dispy;
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addCylinder(outerrad,innerrad,'Z',Xcenter,Ycenter,Zrange,Name,component,material);
        CST.mergeCommonSolids(component);
    end
end

CST.save;