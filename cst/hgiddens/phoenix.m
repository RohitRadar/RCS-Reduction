clc;
clear all;
close all;

CST = CST_MicrowaveStudio(cd,'phoenix_1x1');
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

r0=2;
w1=1;
d1=2;
w2=1;
d2=2;

component = 'unitcell';
Name = 'solidcircle';
material = 'Copper (annealed)';
outerrad=r0;
innerrad=0;
Xcenter = 0;
Ycenter = 0;
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addCylinder(outerrad,innerrad,'Z',Xcenter,Ycenter,Zrange,Name,component,material);
Name = 'innercircle';
material = 'Copper (annealed)';
outerrad=r0+d1+w1;
innerrad=r0+d1;
Xcenter = 0;
Ycenter = 0;
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addCylinder(outerrad,innerrad,'Z',Xcenter,Ycenter,Zrange,Name,component,material);
Name = 'outercircle';
material = 'Copper (annealed)';
outerrad=r0+d1+w1+d2+w2;
innerrad=r0+d1+w1+d2;
Xcenter = 0;
Ycenter = 0;
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addCylinder(outerrad,innerrad,'Z',Xcenter,Ycenter,Zrange,Name,component,material);
CST.mergeCommonSolids(component);

CST.save;