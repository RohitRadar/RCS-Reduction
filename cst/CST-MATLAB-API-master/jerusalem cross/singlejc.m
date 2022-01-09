addpath(genpath('E:\Desktop\Now\rcs\cst\CST-MATLAB-API-master')); %For instance, my path is: addpath(genpath('C:\Users\simos\Dropbox\cst api'));
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
hs = 1.57;
hp = 0.035;
pl = 10;
w = 2;
pw = 3;
t = 1;

Name = 'GroundPlane';
componenet = 'component1';
material = 'Copper (annealed)';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [0 hg];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Substrate';
component = 'component1';
material = 'FR-4 (lossy)';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [hg hg+hs];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'vert';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-w/2 w/2];
Yrange = [-pl/2 pl/2];
Zrange = [hg+hs hg+hs+hp];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'hor';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-pl/2 pl/2];
Yrange = [-w/2 w/2];
Zrange = [hg+hs hg+hs+hp];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'top';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-pw/2 pw/2];
Yrange = [pl/2 pl/2+t];
Zrange = [hg+hs hg+hs+hp];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'down';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-pw/2 pw/2];
Yrange = [-pl/2 -pl/2-t];
Zrange = [hg+hs hg+hs+hp];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'left';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-pl/2 -pl/2-t];
Yrange = [-pw/2 pw/2];
Zrange = [hg+hs hg+hs+hp];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'right';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [pl/2 pl/2+t];
Yrange = [-pw/2 pw/2];
Zrange = [hg+hs hg+hs+hp];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

vert='component1:vert';
hor='component1:hor';
top='component1:top';
down='component1:down';
left='component1:left';
right='component1:right';
CstAdd(mws,hor,left);
CstAdd(mws,hor,right);
CstAdd(mws,vert,hor);
CstAdd(mws,vert,top);
CstAdd(mws,vert,down);


location = "E:\Desktop\Now\rcs\cst\jerusalem cross\singlejc.cst";
CstSaveProject(mws,location);