clc;
clear all;
close all;

CST = CST_MicrowaveStudio(cd,'crosswire_1x1');
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

l=10;
w=3;
a=1;%a=g in paper
g=2;

component = 'unitcell';
Name = 'vertical';
material = 'Copper (annealed)';
Xrange = [-w/2 w/2];
Yrange = [-l/2 l/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material);
Name = 'horizontal';
material = 'Copper (annealed)';
Xrange = [-l/2 l/2];
Yrange = [-w/2 w/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

Name = 'topleft';
material = 'Copper (annealed)';
Xrange = -w/2-g-[0 a];
Yrange = w/2+g+[0 (l-w)/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'toptop';
material = 'Copper (annealed)';
Xrange = [-w/2-g-a w/2+g+a];
Yrange = l/2+g+[0 a];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'topright';
material = 'Copper (annealed)';
Xrange = w/2+g+[0 a];
Yrange = w/2+g+[0 (l-w)/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

Name = 'rightleft';
material = 'Copper (annealed)';
Xrange = w/2+g+[0 (l-w)/2];
Yrange = w/2+g+[0 a];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'righttop';
material = 'Copper (annealed)';
Xrange = l/2+g+[0 a];
Yrange = [-w/2-g-a w/2+g+a];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'rightright';
material = 'Copper (annealed)';
Xrange = w/2+g+[0 (l-w)/2];
Yrange = -w/2-g-[0 a];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

Name = 'bottomleft';
material = 'Copper (annealed)';
Xrange = -w/2-g-[0 a];
Yrange = -w/2-g-[0 (l-w)/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'bottomtop';
material = 'Copper (annealed)';
Xrange = [-w/2-g-a w/2+g+a];
Yrange = -l/2-g-[0 a];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'bottomright';
material = 'Copper (annealed)';
Xrange = w/2+g+[0 a];
Yrange = -w/2-g-[0 (l-w)/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

Name = 'leftleft';
material = 'Copper (annealed)';
Xrange = -w/2-g-[0 (l-w)/2];
Yrange = -w/2-g-[0 a];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'lefttop';
material = 'Copper (annealed)';
Xrange = -l/2-g-[0 a];
Yrange = [-w/2-g-a w/2+g+a];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
Name = 'leftright';
material = 'Copper (annealed)';
Xrange = -w/2-g-[0 (l-w)/2];
Yrange = w/2+g+[0 a];
Zrange = [hg+hv+hs hg++hv+hs+hp];
CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

CST.mergeCommonSolids(component);
CST.save;