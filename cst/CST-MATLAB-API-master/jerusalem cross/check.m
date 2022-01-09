clear all;

addpath(genpath('E:\Desktop\Now\rcs\cst\CST-MATLAB-API-master'));
cst = actxserver('CSTStudio.application');
mws = cst.invoke('NewMWS');
CstDefaultUnits(mws)
CstDefineFrequencyRange(mws,1,15)
CstMeshInitiator(mws)

Xmin='expanded open';
Xmax='expanded open';
Ymin='expanded open';
Ymax='expanded open';
Zmin='expanded open';
Zmax='expanded open';
minfrequency = 1;
CstDefineOpenBoundary(mws,minfrequency,Xmin,Xmax,Ymin,Ymax,Zmin,Zmax)

XminSpace = 0;
XmaxSpace = 0;
YminSpace = 0;
YmaxSpace = 0;
ZminSpace = 0;
ZmaxSpace = 0;
CstDefineBackroundMaterial(mws,XminSpace,XmaxSpace, YminSpace, YmaxSpace, ZminSpace, ZmaxSpace)

CstCopperAnnealedLossy(mws)
CstFR4lossy(mws)

wg = 15;
lg = 15;
hg = 1;
hv = 5;
hs = 1.57;
hp = 0.035;
w = 1;
PL=10;

Name = 'GroundPlane';
component = 'component';
material = 'Copper (annealed)';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [0 hg];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
Name = 'Vacuum';
component = 'component';
material = 'Vacuum';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [hg hg+hv];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
Name = 'Substrate';
component = 'component';
material = 'FR-4 (lossy)';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [hg+hv hg+hv+hs];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'vert';
component = 'component';
material = 'Copper (annealed)';
Xrange = [-w/2 w/2];
Yrange = [-PL/2 PL/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
Name = 'hor';
component = 'component';
material = 'Copper (annealed)';
Xrange = [-PL/2 PL/2];
Yrange = [-w/2 w/2];
Zrange = [hg+hv+hs hg++hv+hs+hp];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
vert='component:vert';
hor='component:hor';
CstAdd(mws,vert,hor);

location = "E:\Desktop\Now\rcs\cst\jerusalem cross\check.cst";
CstSaveProject(mws,location);