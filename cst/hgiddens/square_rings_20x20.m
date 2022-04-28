clc;
clear all;
close all;

CST = CST_MicrowaveStudio(cd,'squarerings_20x20');
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
file = readmatrix('C:\Users\rohit\OneDrive\Desktop\Now\rcs\cst\hgiddens\sweep\squarerings_data.csv');

sl = ones(N,M);
ml = ones(N,M);
pl = ones(N,M);
w = 1;

x = file(:,8);
for i=1:1:N
    for j=1:1:M
        [val,index]=min(abs(x-phase(i,j)));
        sl(i,j)=file(index,3);
        ml(i,j)=file(index,4);
        pl(i,j)=file(index,6);
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
        s = sl(i,j);
        m = ml(i,j);
        p = pl(i,j);
        dispx=(-wg/2+interx/2) + interx*(j-1);
        dispy=(lg/2-intery/2) - intery*(i-1);
        Name = 'innersquareleft';
        material = 'Copper (annealed)';
        Xrange = dispx-p/2+[0 w];
        Yrange = dispy+[-p/2 p/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material);
        Name = 'innersquaretop';
        material = 'Copper (annealed)';
        Xrange = dispx+[-p/2 p/2];
        Yrange = dispy+p/2+[-w 0];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'innersquareright';
        material = 'Copper (annealed)';
        Xrange = dispx+p/2+[-w 0];
        Yrange = dispy+[-p/2 p/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'innersquarebottom';
        material = 'Copper (annealed)';
        Xrange = dispx+[-p/2 p/2];
        Yrange = dispy-p/2+[w 0];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'centersquareleft';
        material = 'Copper (annealed)';
        Xrange = dispx-s/2+[0 w];
        Yrange = dispy+[-s/2 s/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material);
        Name = 'centersquaretop';
        material = 'Copper (annealed)';
        Xrange = dispx+[-s/2 s/2];
        Yrange = dispy+s/2+[-w 0];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'centersquareright';
        material = 'Copper (annealed)';
        Xrange = dispx+s/2+[-w 0];
        Yrange = dispy+[-s/2 s/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'centersquarebottom';
        material = 'Copper (annealed)';
        Xrange = dispx+[-s/2 s/2];
        Yrange = dispy-s/2+[w 0];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        
        Name = 'outersquareleft';
        material = 'Copper (annealed)';
        Xrange = dispx-m/2+[0 w];
        Yrange = dispy+[-m/2 m/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material);
        Name = 'outersquaretop';
        material = 'Copper (annealed)';
        Xrange = dispx+[-m/2 m/2];
        Yrange = dispy+m/2+[-w 0];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'outersquareright';
        material = 'Copper (annealed)';
        Xrange = dispx+m/2+[-w 0];
        Yrange = dispy+[-m/2 m/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'outersquarebottom';
        material = 'Copper (annealed)';
        Xrange = dispx+[-m/2 m/2];
        Yrange = dispy-m/2+[w 0];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        CST.mergeCommonSolids(component);
    end
end

CST.save;