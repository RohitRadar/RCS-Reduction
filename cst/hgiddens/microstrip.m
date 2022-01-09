CST = CST_MicrowaveStudio(cd,'Microstrip');
CST.setSolver('frequency');
CST.setBoundaryCondition('xmin','unit cell','xmax','unit cell','ymin','unit cell','ymax','unit cell');

CST.defineFloquetModes(2)
CST.setFreq(9, 11);
CST.addNormalMaterial('FR4',4.3,1,[0.8 0.8 0.3]);

CST.addBrick([-7.5 7.5],[-7.5 7.5],[0 1],'GroundPlane','Component','Copper (annealed)');
CST.addBrick([-7.5 7.5],[-7.5 7.5],[1 6],'Vacuum','Component','Vacuum');
CST.addBrick([-7.5 7.5],[-7.5 7.5],[6 7.57],'Substrate','Component','FR4');

CST.addBrick([-5 5],[-0.5 0.5],[7.57 7.57+0.035],'patch1','Component1','Copper (annealed)');
CST.addBrick([-0.5 0.5],[-5 5],[7.57 7.57+0.035],'patch2','Component1','Copper (annealed)');
CST.mergeCommonSolids('Component1');

CST.save;