clear all;

CST = CST_MicrowaveStudio(cd,'Copperjc');
CST.setSolver('frequency');
CST.setBoundaryCondition('xmin','unit cell','xmax','unit cell','ymin','unit cell','ymax','unit cell');

CST.addNormalMaterial('FR4',4.3,1,[0.8 0.8 0.3]);

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
file = readmatrix('E:\Desktop\Now\rcs\cst\jerusalem cross\8ghz_data.csv');
pl = ones(N,M);
x = file(:,2);
for i=1:1:N
    for j=1:1:M
        [val,index]=min(abs(x-phase(i,j)));
        pl(i,j)=file(index,1);
        if pl(i,j)>=14.8
            pl(i,j)=14.8;
        end
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
        PL = pl(i,j);
        dispx=(-wg/2+interx/2) + interx*(j-1);
        dispy=(lg/2-intery/2) - intery*(i-1);
        component = ['unitcell' num2str(i) 'x' num2str(j)];
        
        Name = 'vertical';
        material = 'Copper (annealed)';
        Xrange = dispx+[-w/2 w/2];
        Yrange = dispy+[-PL/2 PL/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

        Name = 'horizontal';
        material = 'Copper (annealed)';
        Xrange = dispx+[-PL/2 PL/2];
        Yrange = dispy+[-w/2 w/2];
        Zrange = [hg+hv+hs hg++hv+hs+hp];
        CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)

        CST.mergeCommonSolids(component);
    end
end

CST.save;