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
.XRange "-112.5", "112.5"
.YRange "-112.5", "112.5"
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
.XRange "-112.5", "112.5"
.YRange "-112.5", "112.5"
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
.XRange "-112.5", "112.5"
.YRange "-112.5", "112.5"
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
.XRange "-105.25", "-104.75"
.YRange "100", "110"
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
.XRange "-110", "-100"
.YRange "104.75", "105.25"
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
.XRange "-90.5", "-89.5"
.YRange "104.5", "105.5"
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
.XRange "-90.5", "-89.5"
.YRange "104.5", "105.5"
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
.XRange "-75.5", "-74.5"
.YRange "102.5", "107.5"
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
.XRange "-77.5", "-72.5"
.YRange "104.5", "105.5"
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
.XRange "-60.5", "-59.5"
.YRange "104.5", "105.5"
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
.XRange "-60.5", "-59.5"
.YRange "104.5", "105.5"
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
.XRange "-45.5", "-44.5"
.YRange "104.5", "105.5"
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
.XRange "-45.5", "-44.5"
.YRange "104.5", "105.5"
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
.XRange "-30.25", "-29.75"
.YRange "100", "110"
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
.XRange "-35", "-25"
.YRange "104.75", "105.25"
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
.XRange "-15.5", "-14.5"
.YRange "104.5", "105.5"
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
.XRange "-15.5", "-14.5"
.YRange "104.5", "105.5"
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
.XRange "-0.25", "0.25"
.YRange "100", "110"
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
.XRange "-5", "5"
.YRange "104.75", "105.25"
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
.XRange "14.5", "15.5"
.YRange "100.25", "109.75"
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
.XRange "10.25", "19.75"
.YRange "104.5", "105.5"
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
.XRange "29.75", "30.25"
.YRange "100", "110"
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
.XRange "25", "35"
.YRange "104.75", "105.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x10"

'@ define brick: unitcell1x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "100.25", "109.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x11"
.Material "Copper (annealed)"
.XRange "40.25", "49.75"
.YRange "104.5", "105.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x11"

'@ define brick: unitcell1x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "100", "110"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "104.75", "105.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x12"

'@ define brick: unitcell1x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "104.5", "105.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "104.5", "105.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x13"

'@ define brick: unitcell1x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "104.5", "105.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "104.5", "105.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x14"

'@ define brick: unitcell1x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "104.5", "105.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "104.5", "105.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x15"

'@ define brick: unitcell2x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "85.25", "94.75"
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
.XRange "-109.75", "-100.25"
.YRange "89.5", "90.5"
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
.XRange "-90.25", "-89.75"
.YRange "85", "95"
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
.XRange "-95", "-85"
.YRange "89.75", "90.25"
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
.XRange "-75.5", "-74.5"
.YRange "87", "93"
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
.XRange "-78", "-72"
.YRange "89.5", "90.5"
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
.XRange "-60.5", "-59.5"
.YRange "85.5", "94.5"
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
.XRange "-64.5", "-55.5"
.YRange "89.5", "90.5"
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
.XRange "-45.5", "-44.5"
.YRange "89.5", "90.5"
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
.XRange "-45.5", "-44.5"
.YRange "89.5", "90.5"
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
.XRange "-30.25", "-29.75"
.YRange "85", "95"
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
.XRange "-35", "-25"
.YRange "89.75", "90.25"
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
.XRange "-15.25", "-14.75"
.YRange "85", "95"
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
.XRange "-20", "-10"
.YRange "89.75", "90.25"
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
.XRange "-0.25", "0.25"
.YRange "85", "95"
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
.XRange "-5", "5"
.YRange "89.75", "90.25"
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
.XRange "14.5", "15.5"
.YRange "88.25", "91.75"
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
.XRange "13.25", "16.75"
.YRange "89.5", "90.5"
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
.XRange "29.75", "30.25"
.YRange "85", "95"
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
.XRange "25", "35"
.YRange "89.75", "90.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x10"

'@ define brick: unitcell2x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "89.5", "90.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "89.5", "90.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x11"

'@ define brick: unitcell2x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x12"
.Material "Copper (annealed)"
.XRange "59.5", "60.5"
.YRange "89.5", "90.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x12"
.Material "Copper (annealed)"
.XRange "59.5", "60.5"
.YRange "89.5", "90.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x12"

'@ define brick: unitcell2x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.XRange "74.75", "75.25"
.YRange "85", "95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.XRange "70", "80"
.YRange "89.75", "90.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x13"

'@ define brick: unitcell2x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "89.5", "90.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "89.5", "90.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x14"

'@ define brick: unitcell2x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x15"
.Material "Copper (annealed)"
.XRange "104.75", "105.25"
.YRange "85", "95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x15"
.Material "Copper (annealed)"
.XRange "100", "110"
.YRange "89.75", "90.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x15"

'@ define brick: unitcell3x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.XRange "-105.25", "-104.75"
.YRange "70", "80"
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
.XRange "-110", "-100"
.YRange "74.75", "75.25"
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
.XRange "-90.5", "-89.5"
.YRange "74.5", "75.5"
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
.XRange "-90.5", "-89.5"
.YRange "74.5", "75.5"
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
.XRange "-75.5", "-74.5"
.YRange "74.5", "75.5"
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
.XRange "-75.5", "-74.5"
.YRange "74.5", "75.5"
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
.XRange "-60.25", "-59.75"
.YRange "70", "80"
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
.XRange "-65", "-55"
.YRange "74.75", "75.25"
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
.XRange "-45.5", "-44.5"
.YRange "72.75", "77.25"
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
.XRange "-47.25", "-42.75"
.YRange "74.5", "75.5"
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
.XRange "-30.5", "-29.5"
.YRange "74.5", "75.5"
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
.XRange "-30.5", "-29.5"
.YRange "74.5", "75.5"
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
.XRange "-15.5", "-14.5"
.YRange "74.5", "75.5"
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
.XRange "-15.5", "-14.5"
.YRange "74.5", "75.5"
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
.XRange "-0.25", "0.25"
.YRange "70", "80"
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
.XRange "-5", "5"
.YRange "74.75", "75.25"
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
.XRange "14.75", "15.25"
.YRange "70", "80"
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
.XRange "10", "20"
.YRange "74.75", "75.25"
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
.XRange "29.75", "30.25"
.YRange "70", "80"
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
.XRange "25", "35"
.YRange "74.75", "75.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x10"

'@ define brick: unitcell3x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "71.25", "78.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x11"
.Material "Copper (annealed)"
.XRange "41.25", "48.75"
.YRange "74.5", "75.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x11"

'@ define brick: unitcell3x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "70", "80"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "74.75", "75.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x12"

'@ define brick: unitcell3x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "74.5", "75.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "74.5", "75.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x13"

'@ define brick: unitcell3x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.XRange "89.75", "90.25"
.YRange "70", "80"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.XRange "85", "95"
.YRange "74.75", "75.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x14"

'@ define brick: unitcell3x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "74.25", "75.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x15"
.Material "Copper (annealed)"
.XRange "104.25", "105.75"
.YRange "74.5", "75.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x15"

'@ define brick: unitcell4x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.XRange "-105.25", "-104.75"
.YRange "55", "65"
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
.XRange "-110", "-100"
.YRange "59.75", "60.25"
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
.XRange "-90.25", "-89.75"
.YRange "55", "65"
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
.XRange "-95", "-85"
.YRange "59.75", "60.25"
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
.XRange "-75.25", "-74.75"
.YRange "55", "65"
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
.XRange "-80", "-70"
.YRange "59.75", "60.25"
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
.XRange "-60.5", "-59.5"
.YRange "55.25", "64.75"
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
.XRange "-64.75", "-55.25"
.YRange "59.5", "60.5"
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
.XRange "-45.5", "-44.5"
.YRange "59.5", "60.5"
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
.XRange "-45.5", "-44.5"
.YRange "59.5", "60.5"
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
.XRange "-30.25", "-29.75"
.YRange "55", "65"
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
.XRange "-35", "-25"
.YRange "59.75", "60.25"
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
.XRange "-15.25", "-14.75"
.YRange "55", "65"
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
.XRange "-20", "-10"
.YRange "59.75", "60.25"
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
.XRange "-0.25", "0.25"
.YRange "55", "65"
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
.XRange "-5", "5"
.YRange "59.75", "60.25"
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
.XRange "14.75", "15.25"
.YRange "55", "65"
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
.XRange "10", "20"
.YRange "59.75", "60.25"
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
.XRange "29.5", "30.5"
.YRange "55.75", "64.25"
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
.XRange "25.75", "34.25"
.YRange "59.5", "60.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x10"

'@ define brick: unitcell4x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "59.5", "60.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "59.5", "60.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x11"

'@ define brick: unitcell4x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "55", "65"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "59.75", "60.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x12"

'@ define brick: unitcell4x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "59.5", "60.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "59.5", "60.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x13"

'@ define brick: unitcell4x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x14"
.Material "Copper (annealed)"
.XRange "89.75", "90.25"
.YRange "55", "65"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x14"
.Material "Copper (annealed)"
.XRange "85", "95"
.YRange "59.75", "60.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x14"

'@ define brick: unitcell4x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "57", "63"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x15"
.Material "Copper (annealed)"
.XRange "102", "108"
.YRange "59.5", "60.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x15"

'@ define brick: unitcell5x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "44.5", "45.5"
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
.XRange "-105.5", "-104.5"
.YRange "44.5", "45.5"
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
.XRange "-90.5", "-89.5"
.YRange "44.5", "45.5"
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
.XRange "-90.5", "-89.5"
.YRange "44.5", "45.5"
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
.XRange "-75.25", "-74.75"
.YRange "40", "50"
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
.XRange "-80", "-70"
.YRange "44.75", "45.25"
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
.XRange "-60.5", "-59.5"
.YRange "44.5", "45.5"
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
.XRange "-60.5", "-59.5"
.YRange "44.5", "45.5"
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
.XRange "-45.25", "-44.75"
.YRange "40", "50"
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
.XRange "-50", "-40"
.YRange "44.75", "45.25"
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
.XRange "-30.25", "-29.75"
.YRange "40", "50"
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
.XRange "-35", "-25"
.YRange "44.75", "45.25"
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
.XRange "-15.5", "-14.5"
.YRange "44.5", "45.5"
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
.XRange "-15.5", "-14.5"
.YRange "44.5", "45.5"
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
.XRange "-0.5", "0.5"
.YRange "44.5", "45.5"
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
.XRange "-0.5", "0.5"
.YRange "44.5", "45.5"
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
.XRange "14.75", "15.25"
.YRange "40", "50"
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
.XRange "10", "20"
.YRange "44.75", "45.25"
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
.XRange "29.5", "30.5"
.YRange "44.5", "45.5"
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
.XRange "29.5", "30.5"
.YRange "44.5", "45.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x10"

'@ define brick: unitcell5x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x11"
.Material "Copper (annealed)"
.XRange "44.75", "45.25"
.YRange "40", "50"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x11"
.Material "Copper (annealed)"
.XRange "40", "50"
.YRange "44.75", "45.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x11"

'@ define brick: unitcell5x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "40", "50"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "44.75", "45.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x12"

'@ define brick: unitcell5x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.XRange "74.75", "75.25"
.YRange "40", "50"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.XRange "70", "80"
.YRange "44.75", "45.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x13"

'@ define brick: unitcell5x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "43.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x14"
.Material "Copper (annealed)"
.XRange "88.5", "91.5"
.YRange "44.5", "45.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x14"

'@ define brick: unitcell5x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "44.5", "45.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "44.5", "45.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x15"

'@ define brick: unitcell6x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "29.5", "30.5"
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
.XRange "-105.5", "-104.5"
.YRange "29.5", "30.5"
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
.XRange "-90.5", "-89.5"
.YRange "29.5", "30.5"
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
.XRange "-90.5", "-89.5"
.YRange "29.5", "30.5"
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
.XRange "-75.5", "-74.5"
.YRange "27", "33"
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
.XRange "-78", "-72"
.YRange "29.5", "30.5"
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
.XRange "-60.5", "-59.5"
.YRange "29.5", "30.5"
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
.XRange "-60.5", "-59.5"
.YRange "29.5", "30.5"
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
.XRange "-45.25", "-44.75"
.YRange "25", "35"
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
.XRange "-50", "-40"
.YRange "29.75", "30.25"
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
.XRange "-30.5", "-29.5"
.YRange "29.5", "30.5"
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
.XRange "-30.5", "-29.5"
.YRange "29.5", "30.5"
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
.XRange "-15.5", "-14.5"
.YRange "25.25", "34.75"
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
.XRange "-19.75", "-10.25"
.YRange "29.5", "30.5"
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
.XRange "-0.5", "0.5"
.YRange "29.5", "30.5"
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
.XRange "-0.5", "0.5"
.YRange "29.5", "30.5"
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
.XRange "14.75", "15.25"
.YRange "25", "35"
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
.XRange "10", "20"
.YRange "29.75", "30.25"
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
.XRange "29.5", "30.5"
.YRange "29.5", "30.5"
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
.XRange "29.5", "30.5"
.YRange "29.5", "30.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x10"

'@ define brick: unitcell6x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "26", "34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x11"
.Material "Copper (annealed)"
.XRange "41", "49"
.YRange "29.5", "30.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x11"

'@ define brick: unitcell6x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "25", "35"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "29.75", "30.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x12"

'@ define brick: unitcell6x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "29.5", "30.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "29.5", "30.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x13"

'@ define brick: unitcell6x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "29.5", "30.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "29.5", "30.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x14"

'@ define brick: unitcell6x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "26.25", "33.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x15"
.Material "Copper (annealed)"
.XRange "101.25", "108.75"
.YRange "29.5", "30.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x15"

'@ define brick: unitcell7x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "14.5", "15.5"
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
.XRange "-105.5", "-104.5"
.YRange "14.5", "15.5"
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
.XRange "-90.5", "-89.5"
.YRange "10.75", "19.25"
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
.XRange "-94.25", "-85.75"
.YRange "14.5", "15.5"
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
.XRange "-75.25", "-74.75"
.YRange "10", "20"
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
.XRange "-80", "-70"
.YRange "14.75", "15.25"
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
.XRange "-60.5", "-59.5"
.YRange "11", "19"
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
.XRange "-64", "-56"
.YRange "14.5", "15.5"
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
.XRange "-45.5", "-44.5"
.YRange "14.5", "15.5"
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
.XRange "-45.5", "-44.5"
.YRange "14.5", "15.5"
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
.XRange "-30.5", "-29.5"
.YRange "10.75", "19.25"
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
.XRange "-34.25", "-25.75"
.YRange "14.5", "15.5"
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
.XRange "-15.25", "-14.75"
.YRange "10", "20"
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
.XRange "-20", "-10"
.YRange "14.75", "15.25"
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
.XRange "-0.5", "0.5"
.YRange "14.5", "15.5"
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
.XRange "-0.5", "0.5"
.YRange "14.5", "15.5"
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
.XRange "14.5", "15.5"
.YRange "10.5", "19.5"
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
.XRange "10.5", "19.5"
.YRange "14.5", "15.5"
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
.XRange "29.75", "30.25"
.YRange "10", "20"
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
.XRange "25", "35"
.YRange "14.75", "15.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x10"

'@ define brick: unitcell7x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "11.25", "18.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x11"
.Material "Copper (annealed)"
.XRange "41.25", "48.75"
.YRange "14.5", "15.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x11"

'@ define brick: unitcell7x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "10", "20"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "14.75", "15.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x12"

'@ define brick: unitcell7x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x13"
.Material "Copper (annealed)"
.XRange "74.75", "75.25"
.YRange "10", "20"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x13"
.Material "Copper (annealed)"
.XRange "70", "80"
.YRange "14.75", "15.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x13"

'@ define brick: unitcell7x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "10.25", "19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x14"
.Material "Copper (annealed)"
.XRange "85.25", "94.75"
.YRange "14.5", "15.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x14"

'@ define brick: unitcell7x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.XRange "104.75", "105.25"
.YRange "10", "20"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.XRange "100", "110"
.YRange "14.75", "15.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x15"

'@ define brick: unitcell8x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "-2.5", "2.5"
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
.XRange "-107.5", "-102.5"
.YRange "-0.5", "0.5"
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
.XRange "-90.5", "-89.5"
.YRange "-3", "3"
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
.XRange "-93", "-87"
.YRange "-0.5", "0.5"
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
.XRange "-75.25", "-74.75"
.YRange "-5", "5"
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
.XRange "-80", "-70"
.YRange "-0.25", "0.25"
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
.XRange "-60.5", "-59.5"
.YRange "-4.5", "4.5"
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
.XRange "-64.5", "-55.5"
.YRange "-0.5", "0.5"
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
.XRange "-45.5", "-44.5"
.YRange "-0.5", "0.5"
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
.XRange "-45.5", "-44.5"
.YRange "-0.5", "0.5"
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
.XRange "-30.25", "-29.75"
.YRange "-5", "5"
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
.XRange "-35", "-25"
.YRange "-0.25", "0.25"
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
.XRange "-15.25", "-14.75"
.YRange "-5", "5"
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
.XRange "-20", "-10"
.YRange "-0.25", "0.25"
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
.XRange "-0.5", "0.5"
.YRange "-0.5", "0.5"
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
.XRange "-0.5", "0.5"
.YRange "-0.5", "0.5"
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
.XRange "14.75", "15.25"
.YRange "-5", "5"
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
.XRange "10", "20"
.YRange "-0.25", "0.25"
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
.XRange "29.5", "30.5"
.YRange "-3.25", "3.25"
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
.XRange "26.75", "33.25"
.YRange "-0.5", "0.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x10"

'@ define brick: unitcell8x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-0.5", "0.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-0.5", "0.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x11"

'@ define brick: unitcell8x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x12"
.Material "Copper (annealed)"
.XRange "59.5", "60.5"
.YRange "-4.5", "4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x12"
.Material "Copper (annealed)"
.XRange "55.5", "64.5"
.YRange "-0.5", "0.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x12"

'@ define brick: unitcell8x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "-4.75", "4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x13"
.Material "Copper (annealed)"
.XRange "70.25", "79.75"
.YRange "-0.5", "0.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x13"

'@ define brick: unitcell8x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.XRange "89.75", "90.25"
.YRange "-5", "5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.XRange "85", "95"
.YRange "-0.25", "0.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x14"

'@ define brick: unitcell8x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x15"
.Material "Copper (annealed)"
.XRange "104.75", "105.25"
.YRange "-5", "5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x15"
.Material "Copper (annealed)"
.XRange "100", "110"
.YRange "-0.25", "0.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x15"

'@ define brick: unitcell9x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.XRange "-105.25", "-104.75"
.YRange "-20", "-10"
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
.XRange "-110", "-100"
.YRange "-15.25", "-14.75"
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
.XRange "-90.5", "-89.5"
.YRange "-19.75", "-10.25"
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
.XRange "-94.75", "-85.25"
.YRange "-15.5", "-14.5"
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
.XRange "-75.25", "-74.75"
.YRange "-20", "-10"
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
.XRange "-80", "-70"
.YRange "-15.25", "-14.75"
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
.XRange "-60.25", "-59.75"
.YRange "-20", "-10"
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
.XRange "-65", "-55"
.YRange "-15.25", "-14.75"
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
.XRange "-45.5", "-44.5"
.YRange "-15.5", "-14.5"
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
.XRange "-45.5", "-44.5"
.YRange "-15.5", "-14.5"
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
.XRange "-30.5", "-29.5"
.YRange "-16.75", "-13.25"
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
.XRange "-31.75", "-28.25"
.YRange "-15.5", "-14.5"
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
.XRange "-15.25", "-14.75"
.YRange "-20", "-10"
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
.XRange "-20", "-10"
.YRange "-15.25", "-14.75"
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
.XRange "-0.5", "0.5"
.YRange "-17.75", "-12.25"
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
.XRange "-2.75", "2.75"
.YRange "-15.5", "-14.5"
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
.XRange "14.5", "15.5"
.YRange "-18.75", "-11.25"
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
.XRange "11.25", "18.75"
.YRange "-15.5", "-14.5"
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
.XRange "29.75", "30.25"
.YRange "-20", "-10"
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
.XRange "25", "35"
.YRange "-15.25", "-14.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x10"

'@ define brick: unitcell9x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-15.5", "-14.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-15.5", "-14.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x11"

'@ define brick: unitcell9x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "-20", "-10"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "-15.25", "-14.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x12"

'@ define brick: unitcell9x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "-17.75", "-12.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x13"
.Material "Copper (annealed)"
.XRange "72.25", "77.75"
.YRange "-15.5", "-14.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x13"

'@ define brick: unitcell9x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "-19.75", "-10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x14"
.Material "Copper (annealed)"
.XRange "85.25", "94.75"
.YRange "-15.5", "-14.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x14"

'@ define brick: unitcell9x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.XRange "104.75", "105.25"
.YRange "-20", "-10"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.XRange "100", "110"
.YRange "-15.25", "-14.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x15"

'@ define brick: unitcell10x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "-33.25", "-26.75"
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
.XRange "-108.25", "-101.75"
.YRange "-30.5", "-29.5"
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
.XRange "-90.5", "-89.5"
.YRange "-33.5", "-26.5"
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
.XRange "-93.5", "-86.5"
.YRange "-30.5", "-29.5"
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
.XRange "-75.25", "-74.75"
.YRange "-35", "-25"
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
.XRange "-80", "-70"
.YRange "-30.25", "-29.75"
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
.XRange "-60.5", "-59.5"
.YRange "-30.5", "-29.5"
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
.XRange "-60.5", "-59.5"
.YRange "-30.5", "-29.5"
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
.XRange "-45.25", "-44.75"
.YRange "-35", "-25"
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
.XRange "-50", "-40"
.YRange "-30.25", "-29.75"
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
.XRange "-30.5", "-29.5"
.YRange "-30.5", "-29.5"
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
.XRange "-30.5", "-29.5"
.YRange "-30.5", "-29.5"
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
.XRange "-15.25", "-14.75"
.YRange "-35", "-25"
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
.XRange "-20", "-10"
.YRange "-30.25", "-29.75"
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
.XRange "-0.25", "0.25"
.YRange "-35", "-25"
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
.XRange "-5", "5"
.YRange "-30.25", "-29.75"
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
.XRange "14.75", "15.25"
.YRange "-35", "-25"
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
.XRange "10", "20"
.YRange "-30.25", "-29.75"
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
.XRange "29.5", "30.5"
.YRange "-30.5", "-29.5"
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
.XRange "29.5", "30.5"
.YRange "-30.5", "-29.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x10"

'@ define brick: unitcell10x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-30.5", "-29.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-30.5", "-29.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x11"

'@ define brick: unitcell10x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "-35", "-25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "-30.25", "-29.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x12"

'@ define brick: unitcell10x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "-30.5", "-29.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "-30.5", "-29.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x13"

'@ define brick: unitcell10x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.XRange "89.75", "90.25"
.YRange "-35", "-25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.XRange "85", "95"
.YRange "-30.25", "-29.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x14"

'@ define brick: unitcell10x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "-34.75", "-25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x15"
.Material "Copper (annealed)"
.XRange "100.25", "109.75"
.YRange "-30.5", "-29.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x15"

'@ define brick: unitcell11x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "-49", "-41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.XRange "-109", "-101"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x1"

'@ define brick: unitcell11x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.XRange "-90.5", "-89.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.XRange "-90.5", "-89.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x2"

'@ define brick: unitcell11x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.XRange "-75.25", "-74.75"
.YRange "-50", "-40"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.XRange "-80", "-70"
.YRange "-45.25", "-44.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x3"

'@ define brick: unitcell11x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.XRange "-60.5", "-59.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.XRange "-60.5", "-59.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x4"

'@ define brick: unitcell11x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x5"
.Material "Copper (annealed)"
.XRange "-45.25", "-44.75"
.YRange "-50", "-40"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x5"
.Material "Copper (annealed)"
.XRange "-50", "-40"
.YRange "-45.25", "-44.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x5"

'@ define brick: unitcell11x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.XRange "-30.5", "-29.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.XRange "-30.5", "-29.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x6"

'@ define brick: unitcell11x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.XRange "-15.5", "-14.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.XRange "-15.5", "-14.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x7"

'@ define brick: unitcell11x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.XRange "-0.5", "0.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.XRange "-0.5", "0.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x8"

'@ define brick: unitcell11x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.XRange "14.5", "15.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.XRange "14.5", "15.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x9"

'@ define brick: unitcell11x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.XRange "29.75", "30.25"
.YRange "-50", "-40"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.XRange "25", "35"
.YRange "-45.25", "-44.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x10"

'@ define brick: unitcell11x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.XRange "44.75", "45.25"
.YRange "-50", "-40"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.XRange "40", "50"
.YRange "-45.25", "-44.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x11"

'@ define brick: unitcell11x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.XRange "59.5", "60.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.XRange "59.5", "60.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x12"

'@ define brick: unitcell11x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x13"

'@ define brick: unitcell11x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x14"

'@ define brick: unitcell11x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "-46.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x15"
.Material "Copper (annealed)"
.XRange "103.5", "106.5"
.YRange "-45.5", "-44.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x15"

'@ define brick: unitcell12x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.XRange "-105.25", "-104.75"
.YRange "-65", "-55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.XRange "-110", "-100"
.YRange "-60.25", "-59.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x1"

'@ define brick: unitcell12x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x2"
.Material "Copper (annealed)"
.XRange "-90.5", "-89.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x2"
.Material "Copper (annealed)"
.XRange "-90.5", "-89.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x2"

'@ define brick: unitcell12x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.XRange "-75.5", "-74.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.XRange "-75.5", "-74.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x3"

'@ define brick: unitcell12x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.XRange "-60.25", "-59.75"
.YRange "-65", "-55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.XRange "-65", "-55"
.YRange "-60.25", "-59.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x4"

'@ define brick: unitcell12x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.XRange "-45.5", "-44.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.XRange "-45.5", "-44.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x5"

'@ define brick: unitcell12x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x6"
.Material "Copper (annealed)"
.XRange "-30.5", "-29.5"
.YRange "-64.5", "-55.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x6"
.Material "Copper (annealed)"
.XRange "-34.5", "-25.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x6"

'@ define brick: unitcell12x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x7"
.Material "Copper (annealed)"
.XRange "-15.25", "-14.75"
.YRange "-65", "-55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x7"
.Material "Copper (annealed)"
.XRange "-20", "-10"
.YRange "-60.25", "-59.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x7"

'@ define brick: unitcell12x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.XRange "-0.5", "0.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.XRange "-0.5", "0.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x8"

'@ define brick: unitcell12x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.XRange "14.75", "15.25"
.YRange "-65", "-55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.XRange "10", "20"
.YRange "-60.25", "-59.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x9"

'@ define brick: unitcell12x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.XRange "29.5", "30.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.XRange "29.5", "30.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x10"

'@ define brick: unitcell12x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x11"

'@ define brick: unitcell12x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "-65", "-55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "-60.25", "-59.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x12"

'@ define brick: unitcell12x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.XRange "74.75", "75.25"
.YRange "-65", "-55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.XRange "70", "80"
.YRange "-60.25", "-59.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x13"

'@ define brick: unitcell12x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "-60.5", "-59.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x14"

'@ define brick: unitcell12x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x15"
.Material "Copper (annealed)"
.XRange "104.75", "105.25"
.YRange "-65", "-55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x15"
.Material "Copper (annealed)"
.XRange "100", "110"
.YRange "-60.25", "-59.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x15"

'@ define brick: unitcell13x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x1"

'@ define brick: unitcell13x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x2"
.Material "Copper (annealed)"
.XRange "-90.25", "-89.75"
.YRange "-80", "-70"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x2"
.Material "Copper (annealed)"
.XRange "-95", "-85"
.YRange "-75.25", "-74.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x2"

'@ define brick: unitcell13x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x3"
.Material "Copper (annealed)"
.XRange "-75.5", "-74.5"
.YRange "-78.5", "-71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x3"
.Material "Copper (annealed)"
.XRange "-78.5", "-71.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x3"

'@ define brick: unitcell13x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x4"
.Material "Copper (annealed)"
.XRange "-60.25", "-59.75"
.YRange "-80", "-70"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x4"
.Material "Copper (annealed)"
.XRange "-65", "-55"
.YRange "-75.25", "-74.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x4"

'@ define brick: unitcell13x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x5"
.Material "Copper (annealed)"
.XRange "-45.5", "-44.5"
.YRange "-79.5", "-70.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x5"
.Material "Copper (annealed)"
.XRange "-49.5", "-40.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x5"

'@ define brick: unitcell13x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.XRange "-30.5", "-29.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.XRange "-30.5", "-29.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x6"

'@ define brick: unitcell13x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.XRange "-15.5", "-14.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.XRange "-15.5", "-14.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x7"

'@ define brick: unitcell13x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x8"
.Material "Copper (annealed)"
.XRange "-0.5", "0.5"
.YRange "-79.25", "-70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x8"
.Material "Copper (annealed)"
.XRange "-4.25", "4.25"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x8"

'@ define brick: unitcell13x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x9"
.Material "Copper (annealed)"
.XRange "14.5", "15.5"
.YRange "-78.5", "-71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x9"
.Material "Copper (annealed)"
.XRange "11.5", "18.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x9"

'@ define brick: unitcell13x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x10"
.Material "Copper (annealed)"
.XRange "29.75", "30.25"
.YRange "-80", "-70"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x10"
.Material "Copper (annealed)"
.XRange "25", "35"
.YRange "-75.25", "-74.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x10"

'@ define brick: unitcell13x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x11"

'@ define brick: unitcell13x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "-80", "-70"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "-75.25", "-74.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x12"

'@ define brick: unitcell13x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x13"
.Material "Copper (annealed)"
.XRange "74.75", "75.25"
.YRange "-80", "-70"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x13"
.Material "Copper (annealed)"
.XRange "70", "80"
.YRange "-75.25", "-74.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x13"

'@ define brick: unitcell13x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "-78", "-72"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x14"
.Material "Copper (annealed)"
.XRange "87", "93"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x14"

'@ define brick: unitcell13x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "-75.5", "-74.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x15"

'@ define brick: unitcell14x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x1"

'@ define brick: unitcell14x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x2"
.Material "Copper (annealed)"
.XRange "-90.5", "-89.5"
.YRange "-94.25", "-85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x2"
.Material "Copper (annealed)"
.XRange "-94.25", "-85.75"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x2"

'@ define brick: unitcell14x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x3"
.Material "Copper (annealed)"
.XRange "-75.25", "-74.75"
.YRange "-95", "-85"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x3"
.Material "Copper (annealed)"
.XRange "-80", "-70"
.YRange "-90.25", "-89.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x3"

'@ define brick: unitcell14x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x4"
.Material "Copper (annealed)"
.XRange "-60.25", "-59.75"
.YRange "-95", "-85"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x4"
.Material "Copper (annealed)"
.XRange "-65", "-55"
.YRange "-90.25", "-89.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x4"

'@ define brick: unitcell14x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.XRange "-45.25", "-44.75"
.YRange "-95", "-85"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.XRange "-50", "-40"
.YRange "-90.25", "-89.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x5"

'@ define brick: unitcell14x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x6"
.Material "Copper (annealed)"
.XRange "-30.25", "-29.75"
.YRange "-95", "-85"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x6"
.Material "Copper (annealed)"
.XRange "-35", "-25"
.YRange "-90.25", "-89.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x6"

'@ define brick: unitcell14x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x7"
.Material "Copper (annealed)"
.XRange "-15.25", "-14.75"
.YRange "-95", "-85"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x7"
.Material "Copper (annealed)"
.XRange "-20", "-10"
.YRange "-90.25", "-89.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x7"

'@ define brick: unitcell14x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x8"
.Material "Copper (annealed)"
.XRange "-0.5", "0.5"
.YRange "-94", "-86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x8"
.Material "Copper (annealed)"
.XRange "-4", "4"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x8"

'@ define brick: unitcell14x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x9"
.Material "Copper (annealed)"
.XRange "14.75", "15.25"
.YRange "-95", "-85"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x9"
.Material "Copper (annealed)"
.XRange "10", "20"
.YRange "-90.25", "-89.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x9"

'@ define brick: unitcell14x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.XRange "29.75", "30.25"
.YRange "-95", "-85"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.XRange "25", "35"
.YRange "-90.25", "-89.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x10"

'@ define brick: unitcell14x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x11"

'@ define brick: unitcell14x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.XRange "59.5", "60.5"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.XRange "59.5", "60.5"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x12"

'@ define brick: unitcell14x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "-93.5", "-86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x13"
.Material "Copper (annealed)"
.XRange "71.5", "78.5"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x13"

'@ define brick: unitcell14x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x14"
.Material "Copper (annealed)"
.XRange "89.75", "90.25"
.YRange "-95", "-85"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x14"
.Material "Copper (annealed)"
.XRange "85", "95"
.YRange "-90.25", "-89.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x14"

'@ define brick: unitcell14x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.XRange "104.5", "105.5"
.YRange "-90.5", "-89.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x15"

'@ define brick: unitcell15x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.XRange "-105.5", "-104.5"
.YRange "-108.5", "-101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.XRange "-108.5", "-101.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x1"

'@ define brick: unitcell15x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x2"
.Material "Copper (annealed)"
.XRange "-90.5", "-89.5"
.YRange "-109.25", "-100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x2"
.Material "Copper (annealed)"
.XRange "-94.25", "-85.75"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x2"

'@ define brick: unitcell15x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.XRange "-75.5", "-74.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.XRange "-75.5", "-74.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x3"

'@ define brick: unitcell15x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x4"
.Material "Copper (annealed)"
.XRange "-60.25", "-59.75"
.YRange "-110", "-100"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x4"
.Material "Copper (annealed)"
.XRange "-65", "-55"
.YRange "-105.25", "-104.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x4"

'@ define brick: unitcell15x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.XRange "-45.5", "-44.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.XRange "-45.5", "-44.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x5"

'@ define brick: unitcell15x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.XRange "-30.25", "-29.75"
.YRange "-110", "-100"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.XRange "-35", "-25"
.YRange "-105.25", "-104.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x6"

'@ define brick: unitcell15x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.XRange "-15.5", "-14.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.XRange "-15.5", "-14.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x7"

'@ define brick: unitcell15x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.XRange "-0.5", "0.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.XRange "-0.5", "0.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x8"

'@ define brick: unitcell15x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.XRange "14.75", "15.25"
.YRange "-110", "-100"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.XRange "10", "20"
.YRange "-105.25", "-104.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x9"

'@ define brick: unitcell15x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.XRange "29.5", "30.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.XRange "29.5", "30.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x10"

'@ define brick: unitcell15x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x11"
.Material "Copper (annealed)"
.XRange "44.5", "45.5"
.YRange "-108.75", "-101.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x11"
.Material "Copper (annealed)"
.XRange "41.25", "48.75"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x11"

'@ define brick: unitcell15x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x12"
.Material "Copper (annealed)"
.XRange "59.75", "60.25"
.YRange "-110", "-100"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x12"
.Material "Copper (annealed)"
.XRange "55", "65"
.YRange "-105.25", "-104.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x12"

'@ define brick: unitcell15x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x13"
.Material "Copper (annealed)"
.XRange "74.5", "75.5"
.YRange "-109.25", "-100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x13"
.Material "Copper (annealed)"
.XRange "70.75", "79.25"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x13"

'@ define brick: unitcell15x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.XRange "89.5", "90.5"
.YRange "-105.5", "-104.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x14"

'@ define brick: unitcell15x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.XRange "104.75", "105.25"
.YRange "-110", "-100"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.XRange "100", "110"
.YRange "-105.25", "-104.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x15"

