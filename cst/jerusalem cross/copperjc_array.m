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

wg = 300;
lg = 300;
hg = 1;
hv = 5;
hs = 1.57;
hp = 0.035;
w = 0.5;
pw = 2;
t = 0.2;
N=20;
M=20;
interx = wg/M;
intery = lg/N;

file = load('E:\Desktop\Now\rcs\matlab\phase\iter2421.mat');
phase = file.phasesave;
file = readmatrix('8ghz_data.csv');
pl = ones(N,M);
x = file(:,2);
for i=1:1:N
    for j=1:1:M
        [val,index]=min(abs(x-phase(i,j)));
        pl(i,j)=file(index,1);
    end
end

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

for i=1:1:N
    for j=1:1:M
        PL = pl(i,j);
        dispx=(-wg/2+interx/2) + interx*(j-1);
        dispy=(lg/2-intery/2) - intery*(i-1);
        Name = ['vert' num2str(i) 'x' num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-w/2 w/2];
        Yrange = dispy+[-PL/2 PL/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        Name = ['hor' num2str(i) 'x' num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-PL/2 PL/2];
        Yrange = dispy+[-w/2 w/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        %{
        Name = ['top' num2str(i) 'x' num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-pw/2 pw/2];
        Yrange = dispy+[PL/2 PL/2+t];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        Name = ['down' num2str(i) 'x' num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-pw/2 pw/2];
        Yrange = dispy+[-PL/2 -PL/2-t];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        Name = ['left' num2str(i) 'x' num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[-PL/2-t -PL/2];
        Yrange = dispy+[-pw/2 pw/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        Name = ['right' num2str(i) 'x' num2str(j)];
        component = 'component';
        material = 'Copper (annealed)';
        Xrange = dispx+[PL/2 PL/2+t];
        Yrange = dispy+[-pw/2 pw/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
        %}
        vert=['component:vert' num2str(i) 'x' num2str(j)];
        hor=['component:hor' num2str(i) 'x' num2str(j)];
        CstAdd(mws,vert,hor);
        %{
        top=['component:top' num2str(i) 'x' num2str(j)];
        down=['component:down' num2str(i) 'x' num2str(j)];
        left=['component:left' num2str(i) 'x' num2str(j)];
        right=['component:right' num2str(i) 'x' num2str(j)];
        CstAdd(mws,hor,right);
        CstAdd(mws,hor,left);
        CstAdd(mws,vert,top);
        CstAdd(mws,vert,down);
        %}
    end
end

location = "E:\Desktop\Now\rcs\cst\jerusalem cross\copperjc_array.cst";
CstSaveProject(mws,location);