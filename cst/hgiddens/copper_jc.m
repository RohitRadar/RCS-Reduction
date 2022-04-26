clear all;

CST = CST_MicrowaveStudio(cd,'copper_jc');
CST.setSolver('frequency');
CST.setBoundaryCondition('xmin','unit cell','xmax','unit cell','ymin','unit cell','ymax','unit cell');

CST.addNormalMaterial('FR4',4.3,1,[0.8 0.8 0.3]);

wg = 225;
lg = 225;
hg = 1;
hv = 5;
hs = 1.57;
hp = 0.035;
N=15;
M=15;
interx = wg/M;
intery = lg/N;

file = load('E:\Desktop\Now\rcs\matlab\15x15\phase\iter2541.mat');
phase = file.phasesave;
file = readmatrix('E:\Desktop\Now\rcs\cst\hgiddens\sweep\jerusalem_cross_element_vs_phase.csv');
ll = ones(N,M);
ww = ones(N,M);
endll = ones(N,M);
endww=ones(N,M);
x = file(:,6);
for i=1:1:N
    for j=1:1:M
        [val,index]=min(abs(x-phase(i,j)));
        ll(i,j)=file(index,4);
        ww(i,j)=file(index,5);
        endll(i,j)=file(index,3);
        endww(i,j)=file(index,2);
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
        l = ll(i,j);
        w = ww(i,j);
        endl = endll(i,j);
        endw = endww(i,j);
        dispx=(-wg/2+interx/2) + interx*(j-1);
        dispy=(lg/2-intery/2) - intery*(i-1);
        component = ['unitcell' num2str(i) 'x' num2str(j)];
        
        Name = 'vertical';
        material = 'Copper (annealed)';
        Xrange = dispx+[-w/2 w/2];
        Yrange = dispy+[-l/2 l/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'horizontal';
        material = 'Copper (annealed)';
        Xrange = dispx+[-l/2 l/2];
        Yrange = dispy+[-w/2 w/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

        Name = 'top';
        material = 'Copper (annealed)';
        Xrange = dispx+[-endl/2 endl/2];
        Yrange = dispy+[l/2 l/2+endw];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'down';
        material = 'Copper (annealed)';
        Xrange = dispx+[-endl/2 endl/2];
        Yrange = dispy+[-l/2 -l/2-endw];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'left';
        material = 'Copper (annealed)';
        Xrange = dispx+[-l/2-endw -l/2];
        Yrange = dispy+[-endl/2 endl/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
        Name = 'right';
        material = 'Copper (annealed)';
        Xrange = dispx+[l/2 l/2+endw];
        Yrange = dispy+[-endl/2 endl/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

        CST.mergeCommonSolids(component);
    end
end

CST.save;