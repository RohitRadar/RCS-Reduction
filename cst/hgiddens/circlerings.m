clc;
clear all;
close all;

CST = CST_MicrowaveStudio(cd,'circlerings_1x1');
CST.setSolver('frequency');
CST.setBoundaryCondition('xmin','unit cell','xmax','unit cell','ymin','unit cell','ymax','unit cell');

CST.addNormalMaterial('FR4',4.3,1,[0.8 0.8 0.3]);

wg = 15;
lg = 15;
hg = 1;
hv = 5;
hs = 1.57;
hp = 0.035;

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

w1=1;
r1=2;
w2=1;
d=2;

component = 'unitcell';
Name = 'innercircle';
material = 'Copper (annealed)';
outerrad=r1+w1;
innerrad=r1;
Xcenter = 0;
Ycenter = 0;
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addCylinder(outerrad,innerrad,'Z',Xcenter,Ycenter,Zrange,Name,component,material);
Name = 'outercircle';
material = 'Copper (annealed)';
outerrad=r1+w1+d+w2;
innerrad=r1+w1+d;
Xcenter = 0;
Ycenter = 0;
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addCylinder(outerrad,innerrad,'Z',Xcenter,Ycenter,Zrange,Name,component,material);
CST.mergeCommonSolids(component);

CST.save;