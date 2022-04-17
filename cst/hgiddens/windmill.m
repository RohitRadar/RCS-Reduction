clc;
clear all;
close all;

CST = CST_MicrowaveStudio(cd,'windmill_1x1');
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

d=0.5;
g=2;
L=4;
isl = 2;%inner_square_length

component = 'unitcell';
Name = 'innersquareleft';
material = 'Copper (annealed)';
Xrange = -isl/2+[0 d];
Yrange = [-isl/2 isl/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material);
Name = 'innersquaretop';
material = 'Copper (annealed)';
Xrange = [-isl/2 isl/2];
Yrange = isl/2+[-d 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'innersquareright';
material = 'Copper (annealed)';
Xrange = isl/2+[-d 0];
Yrange = [-isl/2 isl/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'innersquarebottom';
material = 'Copper (annealed)';
Xrange = [-isl/2 isl/2];
Yrange = -isl/2+[d 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

Name = 'outersquareleft';
material = 'Copper (annealed)';
Xrange = -g-isl/2+[0 -d];
Yrange = [-isl/2 isl/2+g+d+L];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'outersquaretop';
material = 'Copper (annealed)';
Xrange = [-isl/2 isl/2+g+d+L];
Yrange = g+isl/2+[d 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'outersquareright';
material = 'Copper (annealed)';
Xrange = g+isl/2+[d 0];
Yrange = [-isl/2-g-d-L isl/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'outersquarebottom';
material = 'Copper (annealed)';
Xrange = [-isl/2-g-d-L isl/2];
Yrange = -g-isl/2+[-d 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

Name = 'outersquaretopleft';
material = 'Copper (annealed)';
Xrange = -isl/2+[0 d];
Yrange = isl/2+g+d+[0 L];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'outersquarerighttop';
material = 'Copper (annealed)';
Xrange = isl/2+g+d+[0 L];
Yrange = isl/2+[-d 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'outersquarelefttop';
material = 'Copper (annealed)';
Xrange = -isl/2-g-d+[0 -L];
Yrange = -isl/2+[d 0];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'outersquarebottomtop';
material = 'Copper (annealed)';
Xrange = isl/2+[-d 0];
Yrange = -isl/2-g-d+[0 -L];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

Name = 'tipleft';
material = 'Copper (annealed)';
Xrange = -isl/2-g-d-L+[0 d];
Yrange = -isl/2+[d -g-d];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'tiptop';
material = 'Copper (annealed)';
Xrange = -isl/2+[d -g-d];
Yrange = isl/2+g+d+L+[0 -d];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'tipright';
material = 'Copper (annealed)';
Xrange = isl/2+g+d+L+[0 -d];
Yrange = isl/2+[-d g+d];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'tipbottom';
material = 'Copper (annealed)';
Xrange = isl/2+[-d g+d];
Yrange = -isl/2-g-d-L+[0 d];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

CST.mergeCommonSolids(component);
CST.save;