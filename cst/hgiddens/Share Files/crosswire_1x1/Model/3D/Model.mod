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

'@ define brick: unitcell:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-1.5", "1.5"
.YRange "-5", "5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-5", "5"
.YRange "-1.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:topleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "topleft"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-3.5", "-4.5"
.YRange "3.5", "7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:toptop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "toptop"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-4.5", "4.5"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:topright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "topright"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "3.5", "4.5"
.YRange "3.5", "7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:rightleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "rightleft"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "3.5", "7"
.YRange "3.5", "4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:righttop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "righttop"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-4.5", "4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:rightright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "rightright"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "3.5", "7"
.YRange "-3.5", "-4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:bottomleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "bottomleft"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-3.5", "-4.5"
.YRange "-3.5", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:bottomtop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "bottomtop"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-4.5", "4.5"
.YRange "-7", "-8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:bottomright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "bottomright"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "3.5", "4.5"
.YRange "-3.5", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:leftleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "leftleft"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-3.5", "-7"
.YRange "-3.5", "-4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:lefttop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "lefttop"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-7", "-8"
.YRange "-4.5", "4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell:leftright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "leftright"
.Component "unitcell"
.Material "Copper (annealed)"
.XRange "-3.5", "-7"
.YRange "3.5", "4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell"

