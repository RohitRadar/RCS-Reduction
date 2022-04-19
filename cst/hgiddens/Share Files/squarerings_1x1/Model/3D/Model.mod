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

'@ define brick: unitcell:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-3", "-1"
.YRange "-3", "3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-3", "3"
.YRange "1", "3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "1", "3"
.YRange "-3", "3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-3", "3"
.YRange "-1", "-3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-4", "-6"
.YRange "-6", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-6", "6"
.YRange "6", "4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "6", "4"
.YRange "-6", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-6", "6"
.YRange "-6", "-4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-7", "-8"
.YRange "-8", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-8", "8"
.YRange "8", "7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "8", "7"
.YRange "-8", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-8", "8"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell"

