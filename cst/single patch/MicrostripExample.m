addpath(genpath('E:\Desktop\Now\rcs\cst\CST-MATLAB-API-master')); %For instance, my path is: addpath(genpath('C:\Users\simos\Dropbox\cst api'));
cst = actxserver('CSTStudio.application');
mws = cst.invoke('NewMWS');

%The frequency sweep of your simulation. Here in GHz
CstDefaultUnits(mws)
CstDefineFrequencyRange(mws,1.5,3.5)
CstMeshInitiator(mws)

%This one defines your boundaries, here we are using expanded open since
%our structure is not some kind of waveguide or unit cell
%Remember that you must define your boundary according to your 
%lowest frequency of simulation (minfrequency), here it's 1.5GHz 
Xmin='expanded open';
Xmax='expanded open';
Ymin='expanded open';
Ymax='expanded open';
Zmin='expanded open';
Zmax='expanded open';
minfrequency = 1.5;
CstDefineOpenBoundary(mws,minfrequency,Xmin,Xmax,Ymin,Ymax,Zmin,Zmax)

%This function defines the Backround material, here we are using the
%default assignment of CST which is vacuum (permittivity=permeability=1)
%Once again, XminSpace, Xmaxspace e.t.c are the default assignments of CST
%for antennas
XminSpace = 0;
XmaxSpace = 0;
YminSpace = 0;
YmaxSpace = 0;
ZminSpace = 0;
ZmaxSpace = 0;
CstDefineBackroundMaterial(mws,XminSpace,XmaxSpace, YminSpace, YmaxSpace, ZminSpace, ZmaxSpace)

%These two functions are material properties functions. Here there is a
%little trick: You can't call and assign a material from the CST library using matlab or any kind of code (besides PEC). 
%It is a bit more complicated, you need to see the properties of the
%desired material in CST library and make a matlab function with all these properties, name the material and call it in your code by that name.
%This is a painfull process but I've managed to replicate some of the most
%important. You can find them in the materials folder of the API, once you
%get a grip of how my code works feel free to add more materials to that
%folder

%Here I am calling Copper annealed lossy and FR4 lossy, after these two
%function I can just write their names as a string and assign them to any
%desired shape
CstCopperAnnealedLossy(mws)
CstFR4lossy(mws)

W = 28.45; %Width of the patch
L = 28.45; %Lenght of the patch
Fi = 9; %Depth of the cut inside the microstrip
Wf = 1.137;%Width of the feedline
Gpf=1; %Width of the empty space slot 
Lg = 2*L;%Length of the ground 
Wg = 2*W;%Width of the ground
Ht = 0.035;%Height of the copper
Hs = 1.6;% Height of the substrate

%Cstbrick creates a brick for the groundplane. Notice how I just need to do this: 
%material ='Copper (annealed)'; and the material of the brick will be
%copper, that's because I already called CstCopperAnnealedLossy(mws) before
Name = 'Groundplane';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-0.5*Wg 0.5*Wg];
Yrange = [-0.5*Lg 0.5*Lg];
Zrange = [0 Ht];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

%This creates the substrate
Name = 'Substrate';
component = 'component1';
material = 'FR-4 (lossy)';
Xrange = [-0.5*Wg 0.5*Wg];
Yrange = [-0.5*Lg 0.5*Lg];
Zrange = [Ht Ht+Hs];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

%This one creates the patch
Name = 'Patch';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-W/2 W/2];
Yrange = [-L/2 L/2];
Zrange = [Ht+Hs Ht+Hs+Ht];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

%Here I am cutting the patch to fit the feedline
Name = 'Empty space';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-((Wf/2)+Gpf)  ((Wf/2)+Gpf)];
Yrange = [-L/2+Fi -L/2];
Zrange = [Ht+Hs Ht+Hs+Ht];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

%This subtracts two components
component1 = 'component1:Patch';
component2 = 'component1:Empty space';
CstSubtract(mws,component1,component2)

%This creates the feedline
Name = 'FeedLine';
component = 'component1';
material = 'Copper (annealed)';
Xrange = [-Wf/2 Wf/2];
Yrange = [-L/2+Fi -Lg/2];
Zrange = [Ht+Hs Ht+Hs+Ht];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

%This adds the feedline to the patch
component1 = 'component1:Patch';
component2 = 'component1:FeedLine';
CstAdd(mws,component1,component2)

%Here I pick the substrate to assign the port, there is more than one way
%to assign a port in your geometry i.e you can use coordinates and not
%picks, I think coordinates are easier cause pics are generated according
%to your design. i.e id = 3; is how CST names the area I am selecting
%because there are at least 3 faces in my design but that is not standard,
%it depends on your design. Better use coordinates to be sure.
Name = 'Substrate';
id = 3;
CstPickFace(mws,Name,id)

%Here I am assigning a waveguide port (I think I have most of the possible CST ports as functions in my api)
PortNumber = 1;
Xrange = [-36 36];
Yrange = [-36 -36];
Zrange = [0.035 1.635];
XrangeAdd =[3*Wf 3*Wf];
YrangeAdd =[0 0];
ZrangeAdd =[Ht+Hs 4*Hs];
Coordinates = 'Picks';
Orientation = 'positive';
CstWaveguidePort(mws,PortNumber, Xrange, Yrange, Zrange, XrangeAdd, YrangeAdd, ZrangeAdd,Coordinates,Orientation)

%Here I am assigning monitors for the e-field, h-field and farfield at 2.45GHz 
CstDefineEfieldMonitor(mws,strcat('e-field', '2.45'),2.45);
CstDefineHfieldMonitor(mws,strcat('h-field', '2.45'), 2.45);
CstDefineFarfieldMonitor(mws,strcat('Farfield','2.45'), 2.45);


%Saves the project
location = "E:\Desktop\Now\rcs\cst\single patch\microstrip.cst";
exportpath = 'E:\Desktop\Now\rcs\cst\single patch\microstrip.txt';
CstSaveProject(mws,location);

%Defines the solver and starts simulation (I also have frequency domain solver and Integral solver)
%-40 corresponds to accuracy
CstDefineTimedomainSolver(mws,-40)

%Here the S11 is exported as a .txt file and plotted
CstExportSparametersTXT(mws, exportpath)
[Frequency, Sparametter] = CstLoadSparametterTXT(exportpath);
plot(Frequency,Sparametter,'-'); grid on; 
legend('S11 (dB)')
title('patch antenna at 2.45GHz')
xlabel('Frequency (GHz)') 