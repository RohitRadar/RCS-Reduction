'# MWS Version: Version 2021.1 - Nov 10 2020 - ACIS 30.0.1 -

'# length = mm
'# frequency = GHz
'# time = s
'# frequency range: fmin = 1.000000 fmax = 10.000000
'# created = '[VERSION]2021.1|30.0.1|20201110[/VERSION]


'@ Set Units

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Units
.Geometry "mm"
.Frequency "GHz"
.Time "S"
.TemperatureUnit "Kelvin"
.Voltage "V"
.Current "A"
.Resistance "Ohm"
.Conductance "Siemens"
.Capacitance "PikoF"
.Inductance "NanoH"
End With

'@ SetFrequency

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solver.FrequencyRange "1.000000", "10.000000"

'@ define boundaries

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Boundary
.Xmin "expanded open"
.Xmax "expanded open"
.Ymin "expanded open"
.Ymax "expanded open"
.Zmin "expanded open"
.Zmax "expanded open"
End With

'@ Set Background Material

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Material
.Type "Normal
.Colour "0.6", "0.6", "0.6"
.Epsilon "1"
.Mu "1"
.ChangeBackgroundMaterial
End With

'@ change solver type

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
ChangeSolverType "HF Frequency Domain"

'@ define boundaries

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Boundary
.Xmin "unit cell"
.Xmax "unit cell"
.Ymin "unit cell"
.Ymax "unit cell"
End With

'@ define Floquet Port boundaries

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With FloquetPort
.Reset
.SetDialogTheta "0"
.SetDialogPhi "0"
.SetPolarizationIndependentOfScanAnglePhi "0.0", "False"
.SetSortCode "+beta/pw"
.SetCustomizedListFlag "False"
.Port "Zmin"
.SetNumberOfModesConsidered "2"
.SetDistanceToReferencePlane "0.0"
.SetUseCircularPolarization "False"
.Port "Zmax"
.SetNumberOfModesConsidered "2"
.SetDistanceToReferencePlane "0.0"
.SetUseCircularPolarization "False"
End With

'@ define material: FR4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Material
.Reset
.Name "FR4"
.Type "Normal"
.Epsilon "4.3"
.Mue "1"
.TanD "0"
.TanDFreq "0.0"
.TanDGiven "False"
.TanDModel "ConstTanD"
.Sigma "0"
.TanDM "0"
.TanDMFreq "0.0"
.TanDMGiven "False"
.TanDMModel "ConstTanD"
.SigmaM "0"
.Colour "0.800000", "0.800000", "0.300000"
.Create
End With

'@ define brick: Base:GroundPlane

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "GroundPlane"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10", "10"
.YRange "-10", "10"
.ZRange "0", "1"
.Create
End With

'@ define brick: Base:Vacuum

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "Vacuum"
.Component "Base"
.Material "Vacuum"
.XRange "-10", "10"
.YRange "-10", "10"
.ZRange "1", "6"
.Create
End With

'@ define brick: Base:Substrate

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "Substrate"
.Component "Base"
.Material "FR4"
.XRange "-10", "10"
.YRange "-10", "10"
.ZRange "6", "7.57"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-1", "-0.5"
.YRange "-1", "1"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-1", "1"
.YRange "0.5", "1"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "0.5", "1"
.YRange "-1", "1"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-1", "1"
.YRange "-0.5", "-1"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-3", "-3.5"
.YRange "-1", "7.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-1", "7.5"
.YRange "3.5", "3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "3.5", "3"
.YRange "-7.5", "1"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-7.5", "1"
.YRange "-3.5", "-3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:outersquaretopleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretopleft"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-1", "-0.5"
.YRange "3.5", "7.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:outersquarerighttop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarerighttop"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "3.5", "7.5"
.YRange "0.5", "1"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:outersquarelefttop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarelefttop"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-3.5", "-7.5"
.YRange "-0.5", "-1"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:outersquarebottomtop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottomtop"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "0.5", "1"
.YRange "-3.5", "-7.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:tipleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "tipleft"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-7.5", "-7"
.YRange "-0.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:tiptop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "tiptop"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "-0.5", "-3.5"
.YRange "7.5", "7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:tipright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "tipright"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "7.5", "7"
.YRange "0.5", "3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell0+1ix0+1i:tipbottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "tipbottom"
.Component "unitcell0+1ix0+1i"
.Material "Copper (annealed)"
.XRange "0.5", "3.5"
.YRange "-7.5", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell0+1ix0+1i

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell0+1ix0+1i"

