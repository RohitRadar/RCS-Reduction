clc;
clear all;
close all;

wg = 15;
lg = 15;
hg = 1;
hv = 5;
hs = 1.57;
hp = 0.035;
N=15;
M=15;

file = load('E:\Desktop\Now\rcs\matlab\15x15\phase\iter2541.mat');
phase = file.phasesave;
file = readmatrix('E:\Desktop\Now\rcs\cst\hgiddens\simple_cross_element_vs_phase.csv');
ll = ones(N,M);
ww = ones(N,M);
x = file(:,4);
for i=1:1:N
    for j=1:1:M
        [val,index]=min(abs(x-phase(i,j)));
        ll(i,j)=file(index,2);
        ww(i,j)=file(index,3);
    end
end
writematrix(ll,'E:\Desktop\Now\rcs\cst\hgiddens\sweep\elementlength.csv')
writematrix(ww,'E:\Desktop\Now\rcs\cst\hgiddens\sweep\elementwidth.csv')
u = readmatrix('E:\Desktop\Now\rcs\cst\hgiddens\sweep\elements.csv');
lu=u(:,1)';
wu=u(:,2)';
for i=1:1:N
    for j=1:1:M
        x=0;
        for k=1:1:length(lu)
            if (lu(k)==ll(i,j))&&(wu(k)==ww(i,j))
                x=1;
                break;
            end
        end
        if (x==0)
            lu=[lu ll(i,j)];
            wu=[wu ww(i,j)];
            name = ['unitcell' num2str(i) 'x' num2str(j)];
            CST = CST_MicrowaveStudio(cd,name);
            CST.setSolver('frequency');
            CST.setBoundaryCondition('xmin','unit cell','xmax','unit cell','ymin','unit cell','ymax','unit cell')
            %define the first 2 modes of the floquet port
            CST.defineFloquetModes(2)
            CST.setFreq(3, 20);
            CST.addNormalMaterial('FR4',4.3,1,[0.8 0.8 0.3]);
    
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
            component = 'component';
            Name = 'vertical';
            material = 'Copper (annealed)';
            Xrange = [-ww(i,j)/2 ww(i,j)/2];
            Yrange = [-ll(i,j)/2 ll(i,j)/2];
            Zrange = [hg+hv+hs hg++hv+hs+hp];
            CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
            Name = 'horizontal';
            material = 'Copper (annealed)';
            Xrange = [-ll(i,j)/2 ll(i,j)/2];
            Yrange = [-ww(i,j)/2 ww(i,j)/2];
            Zrange = [hg+hv+hs hg++hv+hs+hp];
            CST.addBrick(Xrange, Yrange, Zrange, Name, component, material)
            CST.mergeCommonSolids(component);
    
            CST.save;
            CST.runSimulation
            [freq,S,SType] = CST.getSParameters;
            Sp = [freq(:,1) 20*log10(abs(S(:,1)))];
            filename = ['E:\Desktop\Now\rcs\cst\hgiddens\sweep\' name 'mag' '.csv'];
            writematrix(Sp,filename);
            Sp = [freq(:,1) 180/pi*angle(S(:,1))];
            filename = ['E:\Desktop\Now\rcs\cst\hgiddens\sweep\' name 'phase' '.csv'];
            writematrix(Sp,filename);
            writematrix([lu' wu'],'E:\Desktop\Now\rcs\cst\hgiddens\sweep\elements.csv');
        end
    end
end




