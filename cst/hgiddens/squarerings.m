clc;
clear all;
close all;

CST = CST_MicrowaveStudio(cd,'squarerings_1x1');
CST.setSolver('frequency');
CST.setBoundaryCondition('xmin','unit cell','xmax','unit cell','ymin','unit cell','ymax','unit cell');

CST.addNormalMaterial('FR4',4.3,1,[0.8 0.8 0.3]);

wg = 20;
lg = 20;
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

a3=6;%side length of inner square
w3=2;%thickness of inner square
d2=1;%distance between inner and center square
w2=2;%thickness of center square
d1=1;%distance between center and outer square
w1=1;%thickness of outer square

component = 'unitcell';
Name = 'innersquareleft';
material = 'Copper (annealed)';
Xrange = -a3/2+[0 w3];
Yrange = [-a3/2 a3/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material);
Name = 'innersquaretop';
material = 'Copper (annealed)';
Xrange = [-a3/2 a3/2];
Yrange = a3/2+[-w3 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'innersquareright';
material = 'Copper (annealed)';
Xrange = a3/2+[-w3 0];
Yrange = [-a3/2 a3/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'innersquarebottom';
material = 'Copper (annealed)';
Xrange = [-a3/2 a3/2];
Yrange = -a3/2+[w3 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

Name = 'centersquareleft';
material = 'Copper (annealed)';
Xrange = -a3/2-d2+[0 -w2];
Yrange = [-a3/2-d2-w2 a3/2+d2+w2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material);
Name = 'centersquaretop';
material = 'Copper (annealed)';
Xrange = [-a3/2-d2-w2 a3/2+d2+w2];
Yrange = a3/2+d2+[w2 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'centersquareright';
material = 'Copper (annealed)';
Xrange = a3/2+d2+[w2 0];
Yrange = [-a3/2-d2-w2 a3/2+d2+w2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'centersquarebottom';
material = 'Copper (annealed)';
Xrange = [-a3/2-d2-w2 a3/2+d2+w2];
Yrange = -a3/2-d2+[-w2 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

Name = 'outersquareleft';
material = 'Copper (annealed)';
Xrange = -a3/2-d2-w2-d1+[0 -w1];
Yrange = [-a3/2-d2-w2-d1-w1 a3/2+d2+w2+d1+w1];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material);
Name = 'outersquaretop';
material = 'Copper (annealed)';
Xrange = [-a3/2-d2-w2-d1-w1 a3/2+d2+w2+d1+w1];
Yrange = a3/2+d2+w2+d1+[w1 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'outersquareright';
material = 'Copper (annealed)';
Xrange = a3/2+d2+w2+d1+[w1 0];
Yrange = [-a3/2-d2-w2-d1-w1 a3/2+d2+w2+d1+w1];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'outersquarebottom';
material = 'Copper (annealed)';
Xrange = [-a3/2-d2-w2-d1-w1 a3/2+d2+w2+d1+w1];
Yrange = -a3/2-d2-w2-d1+[-w1 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

CST.mergeCommonSolids(component);
CST.save;