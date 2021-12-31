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

wg = 60;
lg = 60;
hg = 1;
hs = 1;
hp = 1;
pl = 10;
w = 2;
pw = 4;
t = 1;
N=4;
M=4;
interx = wg/N;
intery = lg/M;
Name = 'GroundPlane';
component = 'component';
material = 'Copper (annealed)';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [0 hg];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
Name = 'Substrate';
component = 'component';
material = 'FR-4 (lossy)';
Xrange = [-wg/2 wg/2];
Yrange = [-lg/2 lg/2];
Zrange = [hg hg+hs];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

for i=1:1:M
    for j=1:1:N
        dispx=(-wg/2+wg/8) + interx*(j-1);
        dispy=(lg/2-lg/8) - intery*(i-1);
        Name = ['vert' num2str(i) num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-w/2 w/2];
        Yrange = dispy+[-pl/2 pl/2];
        Zrange = [hg+hs hg+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        Name = ['hor' num2str(i) num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-pl/2 pl/2];
        Yrange = dispy+[-w/2 w/2];
        Zrange = [hg+hs hg+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        Name = ['top' num2str(i) num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-pw/2 pw/2];
        Yrange = dispy+[pl/2 pl/2+t];
        Zrange = [hg+hs hg+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        Name = ['down' num2str(i) num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-pw/2 pw/2];
        Yrange = dispy+[-pl/2 -pl/2-t];
        Zrange = [hg+hs hg+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        Name = ['left' num2str(i) num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-pl/2-t -pl/2];
        Yrange = dispy+[-pw/2 pw/2];
        Zrange = [hg+hs hg+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        Name = ['right' num2str(i) num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[pl/2 pl/2+t];
        Yrange = dispy+[-pw/2 pw/2];
        Zrange = [hg+hs hg+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        vert=['component:vert' num2str(i) num2str(j)];
        hor=['component:hor' num2str(i) num2str(j)];
        top=['component:top' num2str(i) num2str(j)];
        down=['component:down' num2str(i) num2str(j)];
        left=['component:left' num2str(i) num2str(j)];
        right=['component:right' num2str(i) num2str(j)];
        CstAdd(mws,hor,right);
        CstAdd(mws,hor,left);
        CstAdd(mws,vert,hor);
        CstAdd(mws,vert,top);
        CstAdd(mws,vert,down);
    end
end

location = "E:\Desktop\Now\rcs\cst\jerusalem cross\copperjc_array.cst";
CstSaveProject(mws,location);