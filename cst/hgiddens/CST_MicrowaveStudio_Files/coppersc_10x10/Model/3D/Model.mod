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
.XRange "-75", "75"
.YRange "-75", "75"
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
.XRange "-75", "75"
.YRange "-75", "75"
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
.XRange "-75", "75"
.YRange "-75", "75"
.ZRange "6", "7.57"
.Create
End With

'@ define brick: unitcell1x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x1"

'@ define brick: unitcell1x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.XRange "-52.75", "-52.25"
.YRange "62.5", "72.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.XRange "-57.5", "-47.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x2"

'@ define brick: unitcell1x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "65.5", "69.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x3"
.Material "Copper (annealed)"
.XRange "-39.5", "-35.5"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x3"

'@ define brick: unitcell1x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x4"

'@ define brick: unitcell1x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.XRange "-7.75", "-7.25"
.YRange "62.5", "72.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.XRange "-12.5", "-2.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x5"

'@ define brick: unitcell1x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x6"

'@ define brick: unitcell1x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.XRange "22.25", "22.75"
.YRange "62.5", "72.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.XRange "17.5", "27.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x7"

'@ define brick: unitcell1x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x8"

'@ define brick: unitcell1x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x9"
.Material "Copper (annealed)"
.XRange "52.25", "52.75"
.YRange "62.5", "72.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x9"
.Material "Copper (annealed)"
.XRange "47.5", "57.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x9"

'@ define brick: unitcell1x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.XRange "67.25", "67.75"
.YRange "62.5", "72.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.XRange "62.5", "72.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x10"

'@ define brick: unitcell2x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.XRange "-67.75", "-67.25"
.YRange "47.5", "57.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.XRange "-72.5", "-62.5"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x1"

'@ define brick: unitcell2x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "47.75", "57.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.XRange "-57.25", "-47.75"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x2"

'@ define brick: unitcell2x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x3"

'@ define brick: unitcell2x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x4"

'@ define brick: unitcell2x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "48.25", "56.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.XRange "-11.75", "-3.25"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x5"

'@ define brick: unitcell2x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x6"

'@ define brick: unitcell2x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x7"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x7"
.Material "Copper (annealed)"
.XRange "19.75", "25.25"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x7"

'@ define brick: unitcell2x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x8"
.Material "Copper (annealed)"
.XRange "37.25", "37.75"
.YRange "47.5", "57.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x8"
.Material "Copper (annealed)"
.XRange "32.5", "42.5"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x8"

'@ define brick: unitcell2x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x9"
.Material "Copper (annealed)"
.XRange "52", "53"
.YRange "48.25", "56.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x9"
.Material "Copper (annealed)"
.XRange "48.25", "56.75"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x9"

'@ define brick: unitcell2x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x10"

'@ define brick: unitcell3x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.XRange "-67.75", "-67.25"
.YRange "32.5", "42.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.XRange "-72.5", "-62.5"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x1"

'@ define brick: unitcell3x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.XRange "-52.75", "-52.25"
.YRange "32.5", "42.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.XRange "-57.5", "-47.5"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x2"

'@ define brick: unitcell3x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.XRange "-37.75", "-37.25"
.YRange "32.5", "42.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.XRange "-42.5", "-32.5"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x3"

'@ define brick: unitcell3x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x4"

'@ define brick: unitcell3x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x5"

'@ define brick: unitcell3x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x6"

'@ define brick: unitcell3x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x7"

'@ define brick: unitcell3x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "32.75", "42.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x8"
.Material "Copper (annealed)"
.XRange "32.75", "42.25"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x8"

'@ define brick: unitcell3x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x9"
.Material "Copper (annealed)"
.XRange "52", "53"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x9"
.Material "Copper (annealed)"
.XRange "52", "53"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x9"

'@ define brick: unitcell3x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x10"
.Material "Copper (annealed)"
.XRange "67.25", "67.75"
.YRange "32.5", "42.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x10"
.Material "Copper (annealed)"
.XRange "62.5", "72.5"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x10"

'@ define brick: unitcell4x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.XRange "-67.75", "-67.25"
.YRange "17.5", "27.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.XRange "-72.5", "-62.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x1"

'@ define brick: unitcell4x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x2"
.Material "Copper (annealed)"
.XRange "-52.75", "-52.25"
.YRange "17.5", "27.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x2"
.Material "Copper (annealed)"
.XRange "-57.5", "-47.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x2"

'@ define brick: unitcell4x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x3"

'@ define brick: unitcell4x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "17.75", "27.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x4"
.Material "Copper (annealed)"
.XRange "-27.25", "-17.75"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x4"

'@ define brick: unitcell4x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.XRange "-7.75", "-7.25"
.YRange "17.5", "27.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.XRange "-12.5", "-2.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x5"

'@ define brick: unitcell4x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x6"
.Material "Copper (annealed)"
.XRange "7.25", "7.75"
.YRange "17.5", "27.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x6"
.Material "Copper (annealed)"
.XRange "2.5", "12.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x6"

'@ define brick: unitcell4x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x7"
.Material "Copper (annealed)"
.XRange "22.25", "22.75"
.YRange "17.5", "27.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x7"
.Material "Copper (annealed)"
.XRange "17.5", "27.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x7"

'@ define brick: unitcell4x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x8"

'@ define brick: unitcell4x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.XRange "52.25", "52.75"
.YRange "17.5", "27.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.XRange "47.5", "57.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x9"

'@ define brick: unitcell4x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x10"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x10"

'@ define brick: unitcell5x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x1"

'@ define brick: unitcell5x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x2"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x2"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x2"

'@ define brick: unitcell5x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x3"
.Material "Copper (annealed)"
.XRange "-37.75", "-37.25"
.YRange "2.5", "12.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x3"
.Material "Copper (annealed)"
.XRange "-42.5", "-32.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x3"

'@ define brick: unitcell5x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x4"
.Material "Copper (annealed)"
.XRange "-22.75", "-22.25"
.YRange "2.5", "12.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x4"
.Material "Copper (annealed)"
.XRange "-27.5", "-17.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x4"

'@ define brick: unitcell5x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x5"

'@ define brick: unitcell5x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x6"

'@ define brick: unitcell5x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x7"
.Material "Copper (annealed)"
.XRange "22.25", "22.75"
.YRange "2.5", "12.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x7"
.Material "Copper (annealed)"
.XRange "17.5", "27.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x7"

'@ define brick: unitcell5x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x8"
.Material "Copper (annealed)"
.XRange "37.25", "37.75"
.YRange "2.5", "12.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x8"
.Material "Copper (annealed)"
.XRange "32.5", "42.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x8"

'@ define brick: unitcell5x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.XRange "52", "53"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.XRange "52", "53"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x9"

'@ define brick: unitcell5x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x10"

'@ define brick: unitcell6x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x1"

'@ define brick: unitcell6x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x2"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x2"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x2"

'@ define brick: unitcell6x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x3"

'@ define brick: unitcell6x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-12.25", "-2.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x4"
.Material "Copper (annealed)"
.XRange "-27.25", "-17.75"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x4"

'@ define brick: unitcell6x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x5"

'@ define brick: unitcell6x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x6"

'@ define brick: unitcell6x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x7"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "-12.25", "-2.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x7"
.Material "Copper (annealed)"
.XRange "17.75", "27.25"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x7"

'@ define brick: unitcell6x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x8"

'@ define brick: unitcell6x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x9"
.Material "Copper (annealed)"
.XRange "52", "53"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x9"
.Material "Copper (annealed)"
.XRange "52", "53"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x9"

'@ define brick: unitcell6x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x10"

'@ define brick: unitcell7x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-27.25", "-17.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.XRange "-72.25", "-62.75"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x1"

'@ define brick: unitcell7x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x2"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "-27.25", "-17.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x2"
.Material "Copper (annealed)"
.XRange "-57.25", "-47.75"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x2"

'@ define brick: unitcell7x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x3"

'@ define brick: unitcell7x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x4"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x4"

'@ define brick: unitcell7x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-27.25", "-17.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x5"
.Material "Copper (annealed)"
.XRange "-12.25", "-2.75"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x5"

'@ define brick: unitcell7x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-26.75", "-18.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x6"
.Material "Copper (annealed)"
.XRange "3.25", "11.75"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x6"

'@ define brick: unitcell7x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x7"
.Material "Copper (annealed)"
.XRange "22.25", "22.75"
.YRange "-27.5", "-17.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x7"
.Material "Copper (annealed)"
.XRange "17.5", "27.5"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x7"

'@ define brick: unitcell7x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x8"

'@ define brick: unitcell7x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x9"
.Material "Copper (annealed)"
.XRange "52.25", "52.75"
.YRange "-27.5", "-17.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x9"
.Material "Copper (annealed)"
.XRange "47.5", "57.5"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x9"

'@ define brick: unitcell7x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x10"

'@ define brick: unitcell8x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.XRange "-67.75", "-67.25"
.YRange "-42.5", "-32.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.XRange "-72.5", "-62.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x1"

'@ define brick: unitcell8x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x2"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "-41", "-34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x2"
.Material "Copper (annealed)"
.XRange "-56", "-49"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x2"

'@ define brick: unitcell8x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-42.25", "-32.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x3"
.Material "Copper (annealed)"
.XRange "-42.25", "-32.75"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x3"

'@ define brick: unitcell8x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x4"
.Material "Copper (annealed)"
.XRange "-22.75", "-22.25"
.YRange "-42.5", "-32.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x4"
.Material "Copper (annealed)"
.XRange "-27.5", "-17.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x4"

'@ define brick: unitcell8x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x5"

'@ define brick: unitcell8x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x6"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x6"

'@ define brick: unitcell8x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x7"

'@ define brick: unitcell8x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "-42", "-33"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.XRange "33", "42"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x8"

'@ define brick: unitcell8x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.XRange "52", "53"
.YRange "-40.5", "-34.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.XRange "49.5", "55.5"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x9"

'@ define brick: unitcell8x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x10"
.Material "Copper (annealed)"
.XRange "67.25", "67.75"
.YRange "-42.5", "-32.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x10"
.Material "Copper (annealed)"
.XRange "62.5", "72.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x10"

'@ define brick: unitcell9x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x1"

'@ define brick: unitcell9x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x2"
.Material "Copper (annealed)"
.XRange "-52.75", "-52.25"
.YRange "-57.5", "-47.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x2"
.Material "Copper (annealed)"
.XRange "-57.5", "-47.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x2"

'@ define brick: unitcell9x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x3"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x3"

'@ define brick: unitcell9x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x4"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x4"

'@ define brick: unitcell9x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x5"

'@ define brick: unitcell9x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x6"
.Material "Copper (annealed)"
.XRange "7.25", "7.75"
.YRange "-57.5", "-47.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x6"
.Material "Copper (annealed)"
.XRange "2.5", "12.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x6"

'@ define brick: unitcell9x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x7"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "-57.25", "-47.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x7"
.Material "Copper (annealed)"
.XRange "17.75", "27.25"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x7"

'@ define brick: unitcell9x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x8"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "-56.75", "-48.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x8"
.Material "Copper (annealed)"
.XRange "33.25", "41.75"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x8"

'@ define brick: unitcell9x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x9"
.Material "Copper (annealed)"
.XRange "52.25", "52.75"
.YRange "-57.5", "-47.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x9"
.Material "Copper (annealed)"
.XRange "47.5", "57.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x9"

'@ define brick: unitcell9x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "-56.75", "-48.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x10"
.Material "Copper (annealed)"
.XRange "63.25", "71.75"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x10"

'@ define brick: unitcell10x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.XRange "-67.75", "-67.25"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.XRange "-72.5", "-62.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x1"

'@ define brick: unitcell10x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x2"
.Material "Copper (annealed)"
.XRange "-52.75", "-52.25"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x2"
.Material "Copper (annealed)"
.XRange "-57.5", "-47.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x2"

'@ define brick: unitcell10x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.XRange "-37.75", "-37.25"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.XRange "-42.5", "-32.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x3"

'@ define brick: unitcell10x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x4"
.Material "Copper (annealed)"
.XRange "-22.75", "-22.25"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x4"
.Material "Copper (annealed)"
.XRange "-27.5", "-17.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x4"

'@ define brick: unitcell10x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-68", "-67"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-68", "-67"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x5"

'@ define brick: unitcell10x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x6"
.Material "Copper (annealed)"
.XRange "7.25", "7.75"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x6"
.Material "Copper (annealed)"
.XRange "2.5", "12.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x6"

'@ define brick: unitcell10x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x7"
.Material "Copper (annealed)"
.XRange "22.25", "22.75"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x7"
.Material "Copper (annealed)"
.XRange "17.5", "27.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x7"

'@ define brick: unitcell10x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x8"
.Material "Copper (annealed)"
.XRange "37.25", "37.75"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x8"
.Material "Copper (annealed)"
.XRange "32.5", "42.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x8"

'@ define brick: unitcell10x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x9"
.Material "Copper (annealed)"
.XRange "52", "53"
.YRange "-71.25", "-63.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x9"
.Material "Copper (annealed)"
.XRange "48.75", "56.25"
.YRange "-68", "-67"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x9"

'@ define brick: unitcell10x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x10"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "-72.25", "-62.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x10"
.Material "Copper (annealed)"
.XRange "62.75", "72.25"
.YRange "-68", "-67"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x10"

