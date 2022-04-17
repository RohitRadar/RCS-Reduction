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
.XRange "-150", "150"
.YRange "-150", "150"
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
.XRange "-150", "150"
.YRange "-150", "150"
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
.XRange "-150", "150"
.YRange "-150", "150"
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
.XRange "-143", "-142"
.YRange "142", "143"
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
.XRange "-143", "-142"
.YRange "142", "143"
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
.XRange "-128", "-127"
.YRange "140.75", "144.25"
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
.XRange "-129.25", "-125.75"
.YRange "142", "143"
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
.XRange "-113", "-112"
.YRange "137.75", "147.25"
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
.XRange "-117.25", "-107.75"
.YRange "142", "143"
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
.XRange "-98", "-97"
.YRange "139.25", "145.75"
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
.XRange "-100.75", "-94.25"
.YRange "142", "143"
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
.XRange "-83", "-82"
.YRange "138.5", "146.5"
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
.XRange "-86.5", "-78.5"
.YRange "142", "143"
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
.XRange "-68", "-67"
.YRange "142", "143"
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
.XRange "-68", "-67"
.YRange "142", "143"
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
.XRange "-52.75", "-52.25"
.YRange "137.5", "147.5"
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
.XRange "-57.5", "-47.5"
.YRange "142.25", "142.75"
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
.XRange "-37.75", "-37.25"
.YRange "137.5", "147.5"
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
.XRange "-42.5", "-32.5"
.YRange "142.25", "142.75"
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
.XRange "-23", "-22"
.YRange "140.5", "144.5"
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
.XRange "-24.5", "-20.5"
.YRange "142", "143"
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
.XRange "-8", "-7"
.YRange "142", "143"
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
.XRange "-8", "-7"
.YRange "142", "143"
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
.XRange "7", "8"
.YRange "139.5", "145.5"
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
.XRange "4.5", "10.5"
.YRange "142", "143"
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
.XRange "22.25", "22.75"
.YRange "137.5", "147.5"
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
.XRange "17.5", "27.5"
.YRange "142.25", "142.75"
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
.XRange "37.25", "37.75"
.YRange "137.5", "147.5"
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
.XRange "32.5", "42.5"
.YRange "142.25", "142.75"
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
.XRange "52", "53"
.YRange "142", "143"
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
.XRange "52", "53"
.YRange "142", "143"
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
.XRange "67", "68"
.YRange "142", "143"
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
.XRange "67", "68"
.YRange "142", "143"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x15"

'@ define brick: unitcell1x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "142", "143"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "142", "143"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x16"

'@ define brick: unitcell1x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "142", "143"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "142", "143"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x17"

'@ define brick: unitcell1x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "137.75", "147.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x18"
.Material "Copper (annealed)"
.XRange "107.75", "117.25"
.YRange "142", "143"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x18"

'@ define brick: unitcell1x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "142", "143"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "142", "143"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x19"

'@ define brick: unitcell1x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell1x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell1x20"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "142", "143"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell1x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x20"

'@ define brick: unitcell2x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "127", "128"
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
.XRange "-143", "-142"
.YRange "127", "128"
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
.XRange "-128", "-127"
.YRange "123.5", "131.5"
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
.XRange "-131.5", "-123.5"
.YRange "127", "128"
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
.XRange "-112.75", "-112.25"
.YRange "122.5", "132.5"
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
.XRange "-117.5", "-107.5"
.YRange "127.25", "127.75"
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
.XRange "-98", "-97"
.YRange "127", "128"
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
.XRange "-98", "-97"
.YRange "127", "128"
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
.XRange "-83", "-82"
.YRange "124", "131"
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
.XRange "-86", "-79"
.YRange "127", "128"
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
.XRange "-68", "-67"
.YRange "124.75", "130.25"
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
.XRange "-70.25", "-64.75"
.YRange "127", "128"
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
.XRange "-53", "-52"
.YRange "123", "132"
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
.XRange "-57", "-48"
.YRange "127", "128"
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
.XRange "-37.75", "-37.25"
.YRange "122.5", "132.5"
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
.XRange "-42.5", "-32.5"
.YRange "127.25", "127.75"
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
.XRange "-22.75", "-22.25"
.YRange "122.5", "132.5"
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
.XRange "-27.5", "-17.5"
.YRange "127.25", "127.75"
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
.XRange "-8", "-7"
.YRange "127", "128"
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
.XRange "-8", "-7"
.YRange "127", "128"
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
.XRange "7", "8"
.YRange "127", "128"
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
.XRange "7", "8"
.YRange "127", "128"
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
.XRange "22.25", "22.75"
.YRange "122.5", "132.5"
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
.XRange "17.5", "27.5"
.YRange "127.25", "127.75"
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
.XRange "37", "38"
.YRange "124.25", "130.75"
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
.XRange "34.25", "40.75"
.YRange "127", "128"
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
.XRange "52.25", "52.75"
.YRange "122.5", "132.5"
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
.XRange "47.5", "57.5"
.YRange "127.25", "127.75"
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
.XRange "67", "68"
.YRange "127", "128"
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
.XRange "67", "68"
.YRange "127", "128"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x15"

'@ define brick: unitcell2x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "125", "130"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x16"
.Material "Copper (annealed)"
.XRange "80", "85"
.YRange "127", "128"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x16"

'@ define brick: unitcell2x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "127", "128"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "127", "128"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x17"

'@ define brick: unitcell2x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "127", "128"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "127", "128"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x18"

'@ define brick: unitcell2x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x19"
.Material "Copper (annealed)"
.XRange "127.25", "127.75"
.YRange "122.5", "132.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x19"
.Material "Copper (annealed)"
.XRange "122.5", "132.5"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x19"

'@ define brick: unitcell2x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell2x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "125", "130"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell2x20"
.Material "Copper (annealed)"
.XRange "140", "145"
.YRange "127", "128"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell2x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x20"

'@ define brick: unitcell3x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "112", "113"
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
.XRange "-143", "-142"
.YRange "112", "113"
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
.XRange "-128", "-127"
.YRange "107.75", "117.25"
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
.XRange "-132.25", "-122.75"
.YRange "112", "113"
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
.XRange "-112.75", "-112.25"
.YRange "107.5", "117.5"
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
.XRange "-117.5", "-107.5"
.YRange "112.25", "112.75"
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
.XRange "-97.75", "-97.25"
.YRange "107.5", "117.5"
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
.XRange "-102.5", "-92.5"
.YRange "112.25", "112.75"
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
.XRange "-83", "-82"
.YRange "112", "113"
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
.XRange "-83", "-82"
.YRange "112", "113"
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
.XRange "-68", "-67"
.YRange "108.25", "116.75"
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
.XRange "-71.75", "-63.25"
.YRange "112", "113"
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
.XRange "-53", "-52"
.YRange "108.75", "116.25"
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
.XRange "-56.25", "-48.75"
.YRange "112", "113"
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
.XRange "-38", "-37"
.YRange "108", "117"
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
.XRange "-42", "-33"
.YRange "112", "113"
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
.XRange "-23", "-22"
.YRange "112", "113"
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
.XRange "-23", "-22"
.YRange "112", "113"
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
.XRange "-8", "-7"
.YRange "112", "113"
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
.XRange "-8", "-7"
.YRange "112", "113"
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
.XRange "7", "8"
.YRange "112", "113"
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
.XRange "7", "8"
.YRange "112", "113"
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
.XRange "22.25", "22.75"
.YRange "107.5", "117.5"
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
.XRange "17.5", "27.5"
.YRange "112.25", "112.75"
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
.XRange "37", "38"
.YRange "112", "113"
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
.XRange "37", "38"
.YRange "112", "113"
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
.XRange "52.25", "52.75"
.YRange "107.5", "117.5"
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
.XRange "47.5", "57.5"
.YRange "112.25", "112.75"
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
.XRange "67.25", "67.75"
.YRange "107.5", "117.5"
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
.XRange "62.5", "72.5"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x15"

'@ define brick: unitcell3x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x16"
.Material "Copper (annealed)"
.XRange "82.25", "82.75"
.YRange "107.5", "117.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x16"
.Material "Copper (annealed)"
.XRange "77.5", "87.5"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x16"

'@ define brick: unitcell3x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "107.75", "117.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x17"
.Material "Copper (annealed)"
.XRange "92.75", "102.25"
.YRange "112", "113"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x17"

'@ define brick: unitcell3x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "112", "113"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "112", "113"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x18"

'@ define brick: unitcell3x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x19"
.Material "Copper (annealed)"
.XRange "127.25", "127.75"
.YRange "107.5", "117.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x19"
.Material "Copper (annealed)"
.XRange "122.5", "132.5"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x19"

'@ define brick: unitcell3x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell3x20"
.Material "Copper (annealed)"
.XRange "142.25", "142.75"
.YRange "107.5", "117.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell3x20"
.Material "Copper (annealed)"
.XRange "137.5", "147.5"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell3x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x20"

'@ define brick: unitcell4x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.XRange "-142.75", "-142.25"
.YRange "92.5", "102.5"
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
.XRange "-147.5", "-137.5"
.YRange "97.25", "97.75"
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
.XRange "-128", "-127"
.YRange "97", "98"
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
.XRange "-128", "-127"
.YRange "97", "98"
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
.XRange "-112.75", "-112.25"
.YRange "92.5", "102.5"
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
.XRange "-117.5", "-107.5"
.YRange "97.25", "97.75"
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
.XRange "-98", "-97"
.YRange "97", "98"
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
.XRange "-98", "-97"
.YRange "97", "98"
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
.XRange "-83", "-82"
.YRange "96.5", "98.5"
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
.XRange "-83.5", "-81.5"
.YRange "97", "98"
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
.XRange "-68", "-67"
.YRange "94.75", "100.25"
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
.XRange "-70.25", "-64.75"
.YRange "97", "98"
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
.XRange "-53", "-52"
.YRange "94.25", "100.75"
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
.XRange "-55.75", "-49.25"
.YRange "97", "98"
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
.XRange "-38", "-37"
.YRange "97", "98"
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
.XRange "-38", "-37"
.YRange "97", "98"
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
.XRange "-23", "-22"
.YRange "97", "98"
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
.XRange "-23", "-22"
.YRange "97", "98"
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
.XRange "-7.75", "-7.25"
.YRange "92.5", "102.5"
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
.XRange "-12.5", "-2.5"
.YRange "97.25", "97.75"
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
.XRange "7", "8"
.YRange "97", "98"
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
.XRange "7", "8"
.YRange "97", "98"
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
.XRange "22", "23"
.YRange "97", "98"
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
.XRange "22", "23"
.YRange "97", "98"
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
.XRange "37", "38"
.YRange "97", "98"
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
.XRange "37", "38"
.YRange "97", "98"
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
.XRange "52.25", "52.75"
.YRange "92.5", "102.5"
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
.XRange "47.5", "57.5"
.YRange "97.25", "97.75"
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
.XRange "67", "68"
.YRange "95", "100"
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
.XRange "65", "70"
.YRange "97", "98"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x15"

'@ define brick: unitcell4x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x16"
.Material "Copper (annealed)"
.XRange "82.25", "82.75"
.YRange "92.5", "102.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x16"
.Material "Copper (annealed)"
.XRange "77.5", "87.5"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x16"

'@ define brick: unitcell4x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "97", "98"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "97", "98"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x17"

'@ define brick: unitcell4x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x18"
.Material "Copper (annealed)"
.XRange "112.25", "112.75"
.YRange "92.5", "102.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x18"
.Material "Copper (annealed)"
.XRange "107.5", "117.5"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x18"

'@ define brick: unitcell4x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "97", "98"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "97", "98"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x19"

'@ define brick: unitcell4x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell4x20"
.Material "Copper (annealed)"
.XRange "142.25", "142.75"
.YRange "92.5", "102.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell4x20"
.Material "Copper (annealed)"
.XRange "137.5", "147.5"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell4x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x20"

'@ define brick: unitcell5x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.XRange "-142.75", "-142.25"
.YRange "77.5", "87.5"
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
.XRange "-147.5", "-137.5"
.YRange "82.25", "82.75"
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
.XRange "-128", "-127"
.YRange "82", "83"
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
.XRange "-128", "-127"
.YRange "82", "83"
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
.XRange "-113", "-112"
.YRange "82", "83"
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
.XRange "-113", "-112"
.YRange "82", "83"
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
.XRange "-98", "-97"
.YRange "79.25", "85.75"
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
.XRange "-100.75", "-94.25"
.YRange "82", "83"
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
.XRange "-83", "-82"
.YRange "77.75", "87.25"
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
.XRange "-87.25", "-77.75"
.YRange "82", "83"
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
.XRange "-68", "-67"
.YRange "82", "83"
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
.XRange "-68", "-67"
.YRange "82", "83"
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
.XRange "-53", "-52"
.YRange "82", "83"
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
.XRange "-53", "-52"
.YRange "82", "83"
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
.XRange "-38", "-37"
.YRange "82", "83"
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
.XRange "-38", "-37"
.YRange "82", "83"
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
.XRange "-22.75", "-22.25"
.YRange "77.5", "87.5"
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
.XRange "-27.5", "-17.5"
.YRange "82.25", "82.75"
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
.XRange "-7.75", "-7.25"
.YRange "77.5", "87.5"
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
.XRange "-12.5", "-2.5"
.YRange "82.25", "82.75"
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
.XRange "7.25", "7.75"
.YRange "77.5", "87.5"
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
.XRange "2.5", "12.5"
.YRange "82.25", "82.75"
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
.XRange "22", "23"
.YRange "82", "83"
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
.XRange "22", "23"
.YRange "82", "83"
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
.XRange "37", "38"
.YRange "82", "83"
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
.XRange "37", "38"
.YRange "82", "83"
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
.XRange "52", "53"
.YRange "82", "83"
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
.XRange "52", "53"
.YRange "82", "83"
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
.XRange "67.25", "67.75"
.YRange "77.5", "87.5"
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
.XRange "62.5", "72.5"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x15"

'@ define brick: unitcell5x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x16"
.Material "Copper (annealed)"
.XRange "78.5", "86.5"
.YRange "82", "83"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x16"

'@ define brick: unitcell5x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x17"
.Material "Copper (annealed)"
.XRange "97.25", "97.75"
.YRange "77.5", "87.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x17"
.Material "Copper (annealed)"
.XRange "92.5", "102.5"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x17"

'@ define brick: unitcell5x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "82", "83"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "82", "83"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x18"

'@ define brick: unitcell5x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "82", "83"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "82", "83"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x19"

'@ define brick: unitcell5x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell5x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "82", "83"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell5x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "82", "83"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell5x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x20"

'@ define brick: unitcell6x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "67", "68"
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
.XRange "-143", "-142"
.YRange "67", "68"
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
.XRange "-127.75", "-127.25"
.YRange "62.5", "72.5"
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
.XRange "-132.5", "-122.5"
.YRange "67.25", "67.75"
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
.XRange "-112.75", "-112.25"
.YRange "62.5", "72.5"
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
.XRange "-117.5", "-107.5"
.YRange "67.25", "67.75"
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
.XRange "-98", "-97"
.YRange "63.75", "71.25"
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
.XRange "-101.25", "-93.75"
.YRange "67", "68"
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
.XRange "-82.75", "-82.25"
.YRange "62.5", "72.5"
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
.XRange "-87.5", "-77.5"
.YRange "67.25", "67.75"
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
.XRange "-68", "-67"
.YRange "67", "68"
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
.XRange "-68", "-67"
.YRange "67", "68"
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
.XRange "-53", "-52"
.YRange "67", "68"
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
.XRange "-53", "-52"
.YRange "67", "68"
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
.XRange "-38", "-37"
.YRange "67", "68"
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
.XRange "-38", "-37"
.YRange "67", "68"
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
.XRange "-23", "-22"
.YRange "67", "68"
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
.XRange "-23", "-22"
.YRange "67", "68"
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
.XRange "-8", "-7"
.YRange "62.75", "72.25"
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
.XRange "-12.25", "-2.75"
.YRange "67", "68"
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
.XRange "7.25", "7.75"
.YRange "62.5", "72.5"
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
.XRange "2.5", "12.5"
.YRange "67.25", "67.75"
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
.XRange "22.25", "22.75"
.YRange "62.5", "72.5"
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
.XRange "17.5", "27.5"
.YRange "67.25", "67.75"
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
.XRange "37", "38"
.YRange "67", "68"
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
.XRange "37", "38"
.YRange "67", "68"
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
.XRange "52", "53"
.YRange "62.75", "72.25"
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
.XRange "47.75", "57.25"
.YRange "67", "68"
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
.XRange "67.25", "67.75"
.YRange "62.5", "72.5"
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
.XRange "62.5", "72.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x15"

'@ define brick: unitcell6x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x16"
.Material "Copper (annealed)"
.XRange "82.25", "82.75"
.YRange "62.5", "72.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x16"
.Material "Copper (annealed)"
.XRange "77.5", "87.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x16"

'@ define brick: unitcell6x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x17"
.Material "Copper (annealed)"
.XRange "97.25", "97.75"
.YRange "62.5", "72.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x17"
.Material "Copper (annealed)"
.XRange "92.5", "102.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x17"

'@ define brick: unitcell6x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "64", "71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x18"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "67", "68"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x18"

'@ define brick: unitcell6x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x19"
.Material "Copper (annealed)"
.XRange "127.25", "127.75"
.YRange "62.5", "72.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x19"
.Material "Copper (annealed)"
.XRange "122.5", "132.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x19"

'@ define brick: unitcell6x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell6x20"
.Material "Copper (annealed)"
.XRange "142.25", "142.75"
.YRange "62.5", "72.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell6x20"
.Material "Copper (annealed)"
.XRange "137.5", "147.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell6x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x20"

'@ define brick: unitcell7x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "52", "53"
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
.XRange "-143", "-142"
.YRange "52", "53"
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
.XRange "-127.75", "-127.25"
.YRange "47.5", "57.5"
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
.XRange "-132.5", "-122.5"
.YRange "52.25", "52.75"
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
.XRange "-113", "-112"
.YRange "52", "53"
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
.XRange "-113", "-112"
.YRange "52", "53"
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
.XRange "-97.75", "-97.25"
.YRange "47.5", "57.5"
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
.XRange "-102.5", "-92.5"
.YRange "52.25", "52.75"
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
.XRange "-83", "-82"
.YRange "52", "53"
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
.XRange "-83", "-82"
.YRange "52", "53"
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
.XRange "-67.75", "-67.25"
.YRange "47.5", "57.5"
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
.XRange "-72.5", "-62.5"
.YRange "52.25", "52.75"
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
.XRange "-53", "-52"
.YRange "52", "53"
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
.XRange "-53", "-52"
.YRange "52", "53"
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
.XRange "-38", "-37"
.YRange "47.75", "57.25"
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
.XRange "-42.25", "-32.75"
.YRange "52", "53"
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
.XRange "-23", "-22"
.YRange "47.75", "57.25"
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
.XRange "-27.25", "-17.75"
.YRange "52", "53"
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
.XRange "-7.75", "-7.25"
.YRange "47.5", "57.5"
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
.XRange "-12.5", "-2.5"
.YRange "52.25", "52.75"
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
.XRange "7", "8"
.YRange "52", "53"
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
.XRange "7", "8"
.YRange "52", "53"
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
.XRange "22.25", "22.75"
.YRange "47.5", "57.5"
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
.XRange "17.5", "27.5"
.YRange "52.25", "52.75"
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
.XRange "37", "38"
.YRange "48.75", "56.25"
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
.XRange "33.75", "41.25"
.YRange "52", "53"
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
.XRange "52.25", "52.75"
.YRange "47.5", "57.5"
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
.XRange "47.5", "57.5"
.YRange "52.25", "52.75"
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
.XRange "67", "68"
.YRange "50", "55"
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
.XRange "65", "70"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x15"

'@ define brick: unitcell7x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x16"
.Material "Copper (annealed)"
.XRange "82.25", "82.75"
.YRange "47.5", "57.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x16"
.Material "Copper (annealed)"
.XRange "77.5", "87.5"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x16"

'@ define brick: unitcell7x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x17"

'@ define brick: unitcell7x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x18"
.Material "Copper (annealed)"
.XRange "112.25", "112.75"
.YRange "47.5", "57.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x18"
.Material "Copper (annealed)"
.XRange "107.5", "117.5"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x18"

'@ define brick: unitcell7x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x19"

'@ define brick: unitcell7x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell7x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "48.5", "56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell7x20"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "52", "53"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell7x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x20"

'@ define brick: unitcell8x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.XRange "-142.75", "-142.25"
.YRange "32.5", "42.5"
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
.XRange "-147.5", "-137.5"
.YRange "37.25", "37.75"
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
.XRange "-128", "-127"
.YRange "37", "38"
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
.XRange "-128", "-127"
.YRange "37", "38"
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
.XRange "-112.75", "-112.25"
.YRange "32.5", "42.5"
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
.XRange "-117.5", "-107.5"
.YRange "37.25", "37.75"
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
.XRange "-98", "-97"
.YRange "37", "38"
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
.XRange "-98", "-97"
.YRange "37", "38"
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
.XRange "-82.75", "-82.25"
.YRange "32.5", "42.5"
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
.XRange "-87.5", "-77.5"
.YRange "37.25", "37.75"
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
.XRange "-68", "-67"
.YRange "37", "38"
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
.XRange "-68", "-67"
.YRange "37", "38"
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
.XRange "-52.75", "-52.25"
.YRange "32.5", "42.5"
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
.XRange "-57.5", "-47.5"
.YRange "37.25", "37.75"
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
.XRange "-38", "-37"
.YRange "32.75", "42.25"
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
.XRange "-42.25", "-32.75"
.YRange "37", "38"
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
.XRange "-23", "-22"
.YRange "37", "38"
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
.XRange "-23", "-22"
.YRange "37", "38"
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
.XRange "-8", "-7"
.YRange "37", "38"
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
.XRange "-8", "-7"
.YRange "37", "38"
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
.XRange "7", "8"
.YRange "37", "38"
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
.XRange "7", "8"
.YRange "37", "38"
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
.XRange "22", "23"
.YRange "37", "38"
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
.XRange "22", "23"
.YRange "37", "38"
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
.XRange "37.25", "37.75"
.YRange "32.5", "42.5"
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
.XRange "32.5", "42.5"
.YRange "37.25", "37.75"
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
.XRange "52", "53"
.YRange "37", "38"
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
.XRange "52", "53"
.YRange "37", "38"
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
.XRange "67", "68"
.YRange "37", "38"
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
.XRange "67", "68"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x15"

'@ define brick: unitcell8x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x16"

'@ define brick: unitcell8x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "35.25", "39.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x17"
.Material "Copper (annealed)"
.XRange "95.25", "99.75"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x17"

'@ define brick: unitcell8x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "33.25", "41.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x18"
.Material "Copper (annealed)"
.XRange "108.25", "116.75"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x18"

'@ define brick: unitcell8x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "35", "40"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x19"
.Material "Copper (annealed)"
.XRange "125", "130"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x19"

'@ define brick: unitcell8x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell8x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell8x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "37", "38"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell8x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x20"

'@ define brick: unitcell9x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "22", "23"
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
.XRange "-143", "-142"
.YRange "22", "23"
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
.XRange "-128", "-127"
.YRange "17.75", "27.25"
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
.XRange "-132.25", "-122.75"
.YRange "22", "23"
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
.XRange "-113", "-112"
.YRange "22", "23"
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
.XRange "-113", "-112"
.YRange "22", "23"
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
.XRange "-98", "-97"
.YRange "22", "23"
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
.XRange "-98", "-97"
.YRange "22", "23"
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
.XRange "-82.75", "-82.25"
.YRange "17.5", "27.5"
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
.XRange "-87.5", "-77.5"
.YRange "22.25", "22.75"
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
.XRange "-68", "-67"
.YRange "22", "23"
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
.XRange "-68", "-67"
.YRange "22", "23"
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
.XRange "-52.75", "-52.25"
.YRange "17.5", "27.5"
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
.XRange "-57.5", "-47.5"
.YRange "22.25", "22.75"
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
.XRange "-37.75", "-37.25"
.YRange "17.5", "27.5"
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
.XRange "-42.5", "-32.5"
.YRange "22.25", "22.75"
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
.XRange "-22.75", "-22.25"
.YRange "17.5", "27.5"
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
.XRange "-27.5", "-17.5"
.YRange "22.25", "22.75"
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
.XRange "-8", "-7"
.YRange "17.75", "27.25"
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
.XRange "-12.25", "-2.75"
.YRange "22", "23"
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
.XRange "7", "8"
.YRange "17.75", "27.25"
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
.XRange "2.75", "12.25"
.YRange "22", "23"
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
.XRange "22", "23"
.YRange "17.75", "27.25"
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
.XRange "17.75", "27.25"
.YRange "22", "23"
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
.XRange "37", "38"
.YRange "22", "23"
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
.XRange "37", "38"
.YRange "22", "23"
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
.XRange "52.25", "52.75"
.YRange "17.5", "27.5"
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
.XRange "47.5", "57.5"
.YRange "22.25", "22.75"
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
.XRange "67", "68"
.YRange "20", "25"
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
.XRange "65", "70"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x15"

'@ define brick: unitcell9x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "19", "26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x16"
.Material "Copper (annealed)"
.XRange "79", "86"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x16"

'@ define brick: unitcell9x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x17"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x17"

'@ define brick: unitcell9x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x18"

'@ define brick: unitcell9x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "20", "25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x19"
.Material "Copper (annealed)"
.XRange "125", "130"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x19"

'@ define brick: unitcell9x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell9x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "20", "25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell9x20"
.Material "Copper (annealed)"
.XRange "140", "145"
.YRange "22", "23"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell9x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x20"

'@ define brick: unitcell10x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.XRange "-142.75", "-142.25"
.YRange "2.5", "12.5"
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
.XRange "-147.5", "-137.5"
.YRange "7.25", "7.75"
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
.XRange "-127.75", "-127.25"
.YRange "2.5", "12.5"
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
.XRange "-132.5", "-122.5"
.YRange "7.25", "7.75"
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
.XRange "-113", "-112"
.YRange "7", "8"
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
.XRange "-113", "-112"
.YRange "7", "8"
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
.XRange "-98", "-97"
.YRange "3.75", "11.25"
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
.XRange "-101.25", "-93.75"
.YRange "7", "8"
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
.XRange "-83", "-82"
.YRange "2.75", "12.25"
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
.XRange "-87.25", "-77.75"
.YRange "7", "8"
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
.XRange "-68", "-67"
.YRange "2.75", "12.25"
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
.XRange "-72.25", "-62.75"
.YRange "7", "8"
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
.XRange "-53", "-52"
.YRange "7", "8"
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
.XRange "-53", "-52"
.YRange "7", "8"
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
.XRange "-38", "-37"
.YRange "7", "8"
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
.XRange "-38", "-37"
.YRange "7", "8"
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
.XRange "-23", "-22"
.YRange "3.25", "11.75"
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
.XRange "-26.75", "-18.25"
.YRange "7", "8"
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
.XRange "-8", "-7"
.YRange "7", "8"
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
.XRange "-8", "-7"
.YRange "7", "8"
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
.XRange "7", "8"
.YRange "7", "8"
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
.XRange "7", "8"
.YRange "7", "8"
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
.XRange "22.25", "22.75"
.YRange "2.5", "12.5"
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
.XRange "17.5", "27.5"
.YRange "7.25", "7.75"
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
.XRange "37", "38"
.YRange "7", "8"
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
.XRange "37", "38"
.YRange "7", "8"
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
.XRange "52", "53"
.YRange "7", "8"
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
.XRange "52", "53"
.YRange "7", "8"
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
.XRange "67.25", "67.75"
.YRange "2.5", "12.5"
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
.XRange "62.5", "72.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x15"

'@ define brick: unitcell10x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x16"
.Material "Copper (annealed)"
.XRange "79", "86"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x16"

'@ define brick: unitcell10x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "3.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x17"
.Material "Copper (annealed)"
.XRange "93.5", "101.5"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x17"

'@ define brick: unitcell10x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x18"

'@ define brick: unitcell10x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "2.75", "12.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x19"
.Material "Copper (annealed)"
.XRange "122.75", "132.25"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x19"

'@ define brick: unitcell10x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell10x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "5.25", "9.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell10x20"
.Material "Copper (annealed)"
.XRange "140.25", "144.75"
.YRange "7", "8"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell10x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x20"

'@ define brick: unitcell11x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-8", "-7"
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
.XRange "-143", "-142"
.YRange "-8", "-7"
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
.XRange "-128", "-127"
.YRange "-8", "-7"
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
.XRange "-128", "-127"
.YRange "-8", "-7"
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
.XRange "-113", "-112"
.YRange "-8", "-7"
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
.XRange "-113", "-112"
.YRange "-8", "-7"
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
.XRange "-97.75", "-97.25"
.YRange "-12.5", "-2.5"
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
.XRange "-102.5", "-92.5"
.YRange "-7.75", "-7.25"
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
.XRange "-83", "-82"
.YRange "-12.25", "-2.75"
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
.XRange "-87.25", "-77.75"
.YRange "-8", "-7"
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
.XRange "-68", "-67"
.YRange "-9.5", "-5.5"
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
.XRange "-69.5", "-65.5"
.YRange "-8", "-7"
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
.XRange "-53", "-52"
.YRange "-8", "-7"
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
.XRange "-53", "-52"
.YRange "-8", "-7"
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
.XRange "-38", "-37"
.YRange "-8", "-7"
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
.XRange "-38", "-37"
.YRange "-8", "-7"
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
.XRange "-23", "-22"
.YRange "-12", "-3"
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
.XRange "-27", "-18"
.YRange "-8", "-7"
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
.XRange "-8", "-7"
.YRange "-8", "-7"
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
.XRange "-8", "-7"
.YRange "-8", "-7"
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
.XRange "7", "8"
.YRange "-8", "-7"
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
.XRange "7", "8"
.YRange "-8", "-7"
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
.XRange "22.25", "22.75"
.YRange "-12.5", "-2.5"
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
.XRange "17.5", "27.5"
.YRange "-7.75", "-7.25"
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
.XRange "37.25", "37.75"
.YRange "-12.5", "-2.5"
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
.XRange "32.5", "42.5"
.YRange "-7.75", "-7.25"
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
.XRange "52", "53"
.YRange "-8", "-7"
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
.XRange "52", "53"
.YRange "-8", "-7"
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
.XRange "67.25", "67.75"
.YRange "-12.5", "-2.5"
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
.XRange "62.5", "72.5"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x15"

'@ define brick: unitcell11x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x16"
.Material "Copper (annealed)"
.XRange "82.25", "82.75"
.YRange "-12.5", "-2.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x16"
.Material "Copper (annealed)"
.XRange "77.5", "87.5"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x16"

'@ define brick: unitcell11x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "-8.75", "-6.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x17"
.Material "Copper (annealed)"
.XRange "96.25", "98.75"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x17"

'@ define brick: unitcell11x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x18"

'@ define brick: unitcell11x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x19"
.Material "Copper (annealed)"
.XRange "127.25", "127.75"
.YRange "-12.5", "-2.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x19"
.Material "Copper (annealed)"
.XRange "122.5", "132.5"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x19"

'@ define brick: unitcell11x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell11x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-12.25", "-2.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell11x20"
.Material "Copper (annealed)"
.XRange "137.75", "147.25"
.YRange "-8", "-7"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell11x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x20"

'@ define brick: unitcell12x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-27.25", "-17.75"
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
.XRange "-147.25", "-137.75"
.YRange "-23", "-22"
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
.XRange "-128", "-127"
.YRange "-23", "-22"
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
.XRange "-128", "-127"
.YRange "-23", "-22"
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
.XRange "-112.75", "-112.25"
.YRange "-27.5", "-17.5"
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
.XRange "-117.5", "-107.5"
.YRange "-22.75", "-22.25"
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
.XRange "-98", "-97"
.YRange "-25.75", "-19.25"
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
.XRange "-100.75", "-94.25"
.YRange "-23", "-22"
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
.XRange "-82.75", "-82.25"
.YRange "-27.5", "-17.5"
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
.XRange "-87.5", "-77.5"
.YRange "-22.75", "-22.25"
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
.XRange "-68", "-67"
.YRange "-23", "-22"
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
.XRange "-68", "-67"
.YRange "-23", "-22"
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
.XRange "-53", "-52"
.YRange "-23.25", "-21.75"
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
.XRange "-53.25", "-51.75"
.YRange "-23", "-22"
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
.XRange "-37.75", "-37.25"
.YRange "-27.5", "-17.5"
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
.XRange "-42.5", "-32.5"
.YRange "-22.75", "-22.25"
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
.XRange "-22.75", "-22.25"
.YRange "-27.5", "-17.5"
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
.XRange "-27.5", "-17.5"
.YRange "-22.75", "-22.25"
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
.XRange "-7.75", "-7.25"
.YRange "-27.5", "-17.5"
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
.XRange "-12.5", "-2.5"
.YRange "-22.75", "-22.25"
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
.XRange "7.25", "7.75"
.YRange "-27.5", "-17.5"
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
.XRange "2.5", "12.5"
.YRange "-22.75", "-22.25"
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
.XRange "22", "23"
.YRange "-26.5", "-18.5"
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
.XRange "18.5", "26.5"
.YRange "-23", "-22"
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
.XRange "37", "38"
.YRange "-23", "-22"
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
.XRange "37", "38"
.YRange "-23", "-22"
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
.XRange "52", "53"
.YRange "-27", "-18"
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
.XRange "48", "57"
.YRange "-23", "-22"
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
.XRange "67.25", "67.75"
.YRange "-27.5", "-17.5"
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
.XRange "62.5", "72.5"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x15"

'@ define brick: unitcell12x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x16"
.Material "Copper (annealed)"
.XRange "82.25", "82.75"
.YRange "-27.5", "-17.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x16"
.Material "Copper (annealed)"
.XRange "77.5", "87.5"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x16"

'@ define brick: unitcell12x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x17"
.Material "Copper (annealed)"
.XRange "97.25", "97.75"
.YRange "-27.5", "-17.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x17"
.Material "Copper (annealed)"
.XRange "92.5", "102.5"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x17"

'@ define brick: unitcell12x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x18"
.Material "Copper (annealed)"
.XRange "112.25", "112.75"
.YRange "-27.5", "-17.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x18"
.Material "Copper (annealed)"
.XRange "107.5", "117.5"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x18"

'@ define brick: unitcell12x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x19"

'@ define brick: unitcell12x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell12x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-27.25", "-17.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell12x20"
.Material "Copper (annealed)"
.XRange "137.75", "147.25"
.YRange "-23", "-22"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell12x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x20"

'@ define brick: unitcell13x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-38", "-37"
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
.XRange "-143", "-142"
.YRange "-38", "-37"
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
.XRange "-127.75", "-127.25"
.YRange "-42.5", "-32.5"
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
.XRange "-132.5", "-122.5"
.YRange "-37.75", "-37.25"
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
.XRange "-113", "-112"
.YRange "-38", "-37"
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
.XRange "-113", "-112"
.YRange "-38", "-37"
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
.XRange "-98", "-97"
.YRange "-38", "-37"
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
.XRange "-98", "-97"
.YRange "-38", "-37"
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
.XRange "-83", "-82"
.YRange "-38", "-37"
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
.XRange "-83", "-82"
.YRange "-38", "-37"
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
.XRange "-68", "-67"
.YRange "-38", "-37"
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
.XRange "-68", "-67"
.YRange "-38", "-37"
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
.XRange "-52.75", "-52.25"
.YRange "-42.5", "-32.5"
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
.XRange "-57.5", "-47.5"
.YRange "-37.75", "-37.25"
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
.XRange "-38", "-37"
.YRange "-41", "-34"
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
.XRange "-41", "-34"
.YRange "-38", "-37"
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
.XRange "-23", "-22"
.YRange "-38", "-37"
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
.XRange "-23", "-22"
.YRange "-38", "-37"
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
.XRange "-8", "-7"
.YRange "-38", "-37"
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
.XRange "-8", "-7"
.YRange "-38", "-37"
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
.XRange "7", "8"
.YRange "-38", "-37"
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
.XRange "7", "8"
.YRange "-38", "-37"
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
.XRange "22.25", "22.75"
.YRange "-42.5", "-32.5"
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
.XRange "17.5", "27.5"
.YRange "-37.75", "-37.25"
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
.XRange "37", "38"
.YRange "-41.75", "-33.25"
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
.XRange "33.25", "41.75"
.YRange "-38", "-37"
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
.XRange "52", "53"
.YRange "-42.25", "-32.75"
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
.XRange "47.75", "57.25"
.YRange "-38", "-37"
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
.XRange "67", "68"
.YRange "-38", "-37"
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
.XRange "67", "68"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x15"

'@ define brick: unitcell13x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x16"
.Material "Copper (annealed)"
.XRange "82.25", "82.75"
.YRange "-42.5", "-32.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x16"
.Material "Copper (annealed)"
.XRange "77.5", "87.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x16"

'@ define brick: unitcell13x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x17"
.Material "Copper (annealed)"
.XRange "97.25", "97.75"
.YRange "-42.5", "-32.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x17"
.Material "Copper (annealed)"
.XRange "92.5", "102.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x17"

'@ define brick: unitcell13x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-42.25", "-32.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x18"
.Material "Copper (annealed)"
.XRange "107.75", "117.25"
.YRange "-38", "-37"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x18"

'@ define brick: unitcell13x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x19"
.Material "Copper (annealed)"
.XRange "127.25", "127.75"
.YRange "-42.5", "-32.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x19"
.Material "Copper (annealed)"
.XRange "122.5", "132.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x19"

'@ define brick: unitcell13x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell13x20"
.Material "Copper (annealed)"
.XRange "142.25", "142.75"
.YRange "-42.5", "-32.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell13x20"
.Material "Copper (annealed)"
.XRange "137.5", "147.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell13x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x20"

'@ define brick: unitcell14x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-57.25", "-47.75"
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
.XRange "-147.25", "-137.75"
.YRange "-53", "-52"
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
.XRange "-128", "-127"
.YRange "-56.5", "-48.5"
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
.XRange "-131.5", "-123.5"
.YRange "-53", "-52"
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
.XRange "-113", "-112"
.YRange "-56.75", "-48.25"
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
.XRange "-116.75", "-108.25"
.YRange "-53", "-52"
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
.XRange "-98", "-97"
.YRange "-53", "-52"
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
.XRange "-98", "-97"
.YRange "-53", "-52"
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
.XRange "-83", "-82"
.YRange "-53", "-52"
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
.XRange "-83", "-82"
.YRange "-53", "-52"
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
.XRange "-68", "-67"
.YRange "-53", "-52"
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
.XRange "-68", "-67"
.YRange "-53", "-52"
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
.XRange "-53", "-52"
.YRange "-56", "-49"
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
.XRange "-56", "-49"
.YRange "-53", "-52"
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
.XRange "-37.75", "-37.25"
.YRange "-57.5", "-47.5"
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
.XRange "-42.5", "-32.5"
.YRange "-52.75", "-52.25"
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
.XRange "-23", "-22"
.YRange "-54.5", "-50.5"
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
.XRange "-24.5", "-20.5"
.YRange "-53", "-52"
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
.XRange "-7.75", "-7.25"
.YRange "-57.5", "-47.5"
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
.XRange "-12.5", "-2.5"
.YRange "-52.75", "-52.25"
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
.XRange "7", "8"
.YRange "-53", "-52"
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
.XRange "7", "8"
.YRange "-53", "-52"
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
.XRange "22.25", "22.75"
.YRange "-57.5", "-47.5"
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
.XRange "17.5", "27.5"
.YRange "-52.75", "-52.25"
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
.XRange "37.25", "37.75"
.YRange "-57.5", "-47.5"
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
.XRange "32.5", "42.5"
.YRange "-52.75", "-52.25"
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
.XRange "52", "53"
.YRange "-53", "-52"
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
.XRange "52", "53"
.YRange "-53", "-52"
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
.XRange "67.25", "67.75"
.YRange "-57.5", "-47.5"
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
.XRange "62.5", "72.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x15"

'@ define brick: unitcell14x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x16"

'@ define brick: unitcell14x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x17"
.Material "Copper (annealed)"
.XRange "97.25", "97.75"
.YRange "-57.5", "-47.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x17"
.Material "Copper (annealed)"
.XRange "92.5", "102.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x17"

'@ define brick: unitcell14x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x18"
.Material "Copper (annealed)"
.XRange "112.25", "112.75"
.YRange "-57.5", "-47.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x18"
.Material "Copper (annealed)"
.XRange "107.5", "117.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x18"

'@ define brick: unitcell14x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-57.25", "-47.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x19"
.Material "Copper (annealed)"
.XRange "122.75", "132.25"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x19"

'@ define brick: unitcell14x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell14x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell14x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-53", "-52"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell14x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x20"

'@ define brick: unitcell15x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.XRange "-142.75", "-142.25"
.YRange "-72.5", "-62.5"
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
.XRange "-147.5", "-137.5"
.YRange "-67.75", "-67.25"
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
.XRange "-127.75", "-127.25"
.YRange "-72.5", "-62.5"
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
.XRange "-132.5", "-122.5"
.YRange "-67.75", "-67.25"
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
.XRange "-113", "-112"
.YRange "-68", "-67"
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
.XRange "-113", "-112"
.YRange "-68", "-67"
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
.XRange "-98", "-97"
.YRange "-70.75", "-64.25"
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
.XRange "-100.75", "-94.25"
.YRange "-68", "-67"
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
.XRange "-83", "-82"
.YRange "-68", "-67"
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
.XRange "-83", "-82"
.YRange "-68", "-67"
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
.XRange "-68", "-67"
.YRange "-68", "-67"
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
.XRange "-68", "-67"
.YRange "-68", "-67"
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
.XRange "-53", "-52"
.YRange "-68", "-67"
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
.XRange "-53", "-52"
.YRange "-68", "-67"
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
.XRange "-38", "-37"
.YRange "-68", "-67"
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
.XRange "-38", "-37"
.YRange "-68", "-67"
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
.XRange "-23", "-22"
.YRange "-72.25", "-62.75"
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
.XRange "-27.25", "-17.75"
.YRange "-68", "-67"
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
.XRange "-8", "-7"
.YRange "-68", "-67"
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
.XRange "-8", "-7"
.YRange "-68", "-67"
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
.XRange "7", "8"
.YRange "-72", "-63"
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
.XRange "3", "12"
.YRange "-68", "-67"
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
.XRange "22.25", "22.75"
.YRange "-72.5", "-62.5"
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
.XRange "17.5", "27.5"
.YRange "-67.75", "-67.25"
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
.XRange "37.25", "37.75"
.YRange "-72.5", "-62.5"
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
.XRange "32.5", "42.5"
.YRange "-67.75", "-67.25"
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
.XRange "52", "53"
.YRange "-68", "-67"
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
.XRange "52", "53"
.YRange "-68", "-67"
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
.XRange "67.25", "67.75"
.YRange "-72.5", "-62.5"
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
.XRange "62.5", "72.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x15"

'@ define brick: unitcell15x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x16"
.Material "Copper (annealed)"
.XRange "82.25", "82.75"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x16"
.Material "Copper (annealed)"
.XRange "77.5", "87.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x16"

'@ define brick: unitcell15x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x17"
.Material "Copper (annealed)"
.XRange "97.25", "97.75"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x17"
.Material "Copper (annealed)"
.XRange "92.5", "102.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x17"

'@ define brick: unitcell15x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-68", "-67"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-68", "-67"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x18"

'@ define brick: unitcell15x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x19"
.Material "Copper (annealed)"
.XRange "127.25", "127.75"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x19"
.Material "Copper (annealed)"
.XRange "122.5", "132.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x19"

'@ define brick: unitcell15x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell15x20"
.Material "Copper (annealed)"
.XRange "142.25", "142.75"
.YRange "-72.5", "-62.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell15x20"
.Material "Copper (annealed)"
.XRange "137.5", "147.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x20"

'@ define brick: unitcell16x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-87", "-78"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x1"
.Material "Copper (annealed)"
.XRange "-147", "-138"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x1"

'@ define brick: unitcell16x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x2"
.Material "Copper (annealed)"
.XRange "-127.75", "-127.25"
.YRange "-87.5", "-77.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x2"
.Material "Copper (annealed)"
.XRange "-132.5", "-122.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x2"

'@ define brick: unitcell16x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x3"
.Material "Copper (annealed)"
.XRange "-113", "-112"
.YRange "-86.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x3"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x3"

'@ define brick: unitcell16x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x4"
.Material "Copper (annealed)"
.XRange "-97.75", "-97.25"
.YRange "-87.5", "-77.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x4"
.Material "Copper (annealed)"
.XRange "-102.5", "-92.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x4"

'@ define brick: unitcell16x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x5"
.Material "Copper (annealed)"
.XRange "-82.75", "-82.25"
.YRange "-87.5", "-77.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x5"
.Material "Copper (annealed)"
.XRange "-87.5", "-77.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x5"

'@ define brick: unitcell16x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x6"
.Material "Copper (annealed)"
.XRange "-67.75", "-67.25"
.YRange "-87.5", "-77.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x6"
.Material "Copper (annealed)"
.XRange "-72.5", "-62.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x6"

'@ define brick: unitcell16x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x7"
.Material "Copper (annealed)"
.XRange "-52.75", "-52.25"
.YRange "-87.5", "-77.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x7"
.Material "Copper (annealed)"
.XRange "-57.5", "-47.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x7"

'@ define brick: unitcell16x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x8"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x8"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x8"

'@ define brick: unitcell16x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x9"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-86.25", "-78.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x9"
.Material "Copper (annealed)"
.XRange "-26.25", "-18.75"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x9"

'@ define brick: unitcell16x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x10"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-87", "-78"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x10"
.Material "Copper (annealed)"
.XRange "-12", "-3"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x10"

'@ define brick: unitcell16x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x11"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-87", "-78"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x11"
.Material "Copper (annealed)"
.XRange "3", "12"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x11"

'@ define brick: unitcell16x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x12"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "-87.25", "-77.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x12"
.Material "Copper (annealed)"
.XRange "17.75", "27.25"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x12"

'@ define brick: unitcell16x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x13"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x13"
.Material "Copper (annealed)"
.XRange "37", "38"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x13"

'@ define brick: unitcell16x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x14"
.Material "Copper (annealed)"
.XRange "52.25", "52.75"
.YRange "-87.5", "-77.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x14"
.Material "Copper (annealed)"
.XRange "47.5", "57.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x14"

'@ define brick: unitcell16x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x15"
.Material "Copper (annealed)"
.XRange "67.25", "67.75"
.YRange "-87.5", "-77.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x15"
.Material "Copper (annealed)"
.XRange "62.5", "72.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x15"

'@ define brick: unitcell16x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "-87", "-78"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x16"
.Material "Copper (annealed)"
.XRange "78", "87"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x16"

'@ define brick: unitcell16x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x17"
.Material "Copper (annealed)"
.XRange "97.25", "97.75"
.YRange "-87.5", "-77.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x17"
.Material "Copper (annealed)"
.XRange "92.5", "102.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x17"

'@ define brick: unitcell16x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x18"

'@ define brick: unitcell16x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-86.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x19"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x19"

'@ define brick: unitcell16x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell16x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell16x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-83", "-82"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell16x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x20"

'@ define brick: unitcell17x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-102", "-93"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x1"
.Material "Copper (annealed)"
.XRange "-147", "-138"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x1"

'@ define brick: unitcell17x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x2"
.Material "Copper (annealed)"
.XRange "-128", "-127"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x2"
.Material "Copper (annealed)"
.XRange "-128", "-127"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x2"

'@ define brick: unitcell17x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x3"
.Material "Copper (annealed)"
.XRange "-113", "-112"
.YRange "-102.25", "-92.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x3"
.Material "Copper (annealed)"
.XRange "-117.25", "-107.75"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x3"

'@ define brick: unitcell17x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x4"
.Material "Copper (annealed)"
.XRange "-97.75", "-97.25"
.YRange "-102.5", "-92.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x4"
.Material "Copper (annealed)"
.XRange "-102.5", "-92.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x4"

'@ define brick: unitcell17x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x5"
.Material "Copper (annealed)"
.XRange "-83", "-82"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x5"
.Material "Copper (annealed)"
.XRange "-83", "-82"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x5"

'@ define brick: unitcell17x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x6"
.Material "Copper (annealed)"
.XRange "-67.75", "-67.25"
.YRange "-102.5", "-92.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x6"
.Material "Copper (annealed)"
.XRange "-72.5", "-62.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x6"

'@ define brick: unitcell17x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x7"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "-100.5", "-94.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x7"
.Material "Copper (annealed)"
.XRange "-55.5", "-49.5"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x7"

'@ define brick: unitcell17x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x8"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x8"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x8"

'@ define brick: unitcell17x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x9"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-101.75", "-93.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x9"
.Material "Copper (annealed)"
.XRange "-26.75", "-18.25"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x9"

'@ define brick: unitcell17x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x10"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x10"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x10"

'@ define brick: unitcell17x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x11"
.Material "Copper (annealed)"
.XRange "7.25", "7.75"
.YRange "-102.5", "-92.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x11"
.Material "Copper (annealed)"
.XRange "2.5", "12.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x11"

'@ define brick: unitcell17x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x12"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "-102.25", "-92.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x12"
.Material "Copper (annealed)"
.XRange "17.75", "27.25"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x12"

'@ define brick: unitcell17x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x13"
.Material "Copper (annealed)"
.XRange "37.25", "37.75"
.YRange "-102.5", "-92.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x13"
.Material "Copper (annealed)"
.XRange "32.5", "42.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x13"

'@ define brick: unitcell17x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x14"
.Material "Copper (annealed)"
.XRange "52.25", "52.75"
.YRange "-102.5", "-92.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x14"
.Material "Copper (annealed)"
.XRange "47.5", "57.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x14"

'@ define brick: unitcell17x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x15"
.Material "Copper (annealed)"
.XRange "67.25", "67.75"
.YRange "-102.5", "-92.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x15"
.Material "Copper (annealed)"
.XRange "62.5", "72.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x15"

'@ define brick: unitcell17x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x16"

'@ define brick: unitcell17x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x17"

'@ define brick: unitcell17x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x18"
.Material "Copper (annealed)"
.XRange "112.25", "112.75"
.YRange "-102.5", "-92.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x18"
.Material "Copper (annealed)"
.XRange "107.5", "117.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x18"

'@ define brick: unitcell17x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x19"

'@ define brick: unitcell17x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell17x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell17x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-98", "-97"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell17x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x20"

'@ define brick: unitcell18x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x1"
.Material "Copper (annealed)"
.XRange "-142.75", "-142.25"
.YRange "-117.5", "-107.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x1"
.Material "Copper (annealed)"
.XRange "-147.5", "-137.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x1"

'@ define brick: unitcell18x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x2"
.Material "Copper (annealed)"
.XRange "-127.75", "-127.25"
.YRange "-117.5", "-107.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x2"
.Material "Copper (annealed)"
.XRange "-132.5", "-122.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x2"

'@ define brick: unitcell18x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x3"
.Material "Copper (annealed)"
.XRange "-113", "-112"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x3"
.Material "Copper (annealed)"
.XRange "-113", "-112"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x3"

'@ define brick: unitcell18x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x4"
.Material "Copper (annealed)"
.XRange "-98", "-97"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x4"
.Material "Copper (annealed)"
.XRange "-98", "-97"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x4"

'@ define brick: unitcell18x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x5"
.Material "Copper (annealed)"
.XRange "-83", "-82"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x5"
.Material "Copper (annealed)"
.XRange "-83", "-82"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x5"

'@ define brick: unitcell18x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x6"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x6"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x6"

'@ define brick: unitcell18x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x7"
.Material "Copper (annealed)"
.XRange "-52.75", "-52.25"
.YRange "-117.5", "-107.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x7"
.Material "Copper (annealed)"
.XRange "-57.5", "-47.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x7"

'@ define brick: unitcell18x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x8"
.Material "Copper (annealed)"
.XRange "-37.75", "-37.25"
.YRange "-117.5", "-107.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x8"
.Material "Copper (annealed)"
.XRange "-42.5", "-32.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x8"

'@ define brick: unitcell18x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x9"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-117.25", "-107.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x9"
.Material "Copper (annealed)"
.XRange "-27.25", "-17.75"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x9"

'@ define brick: unitcell18x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x10"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x10"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x10"

'@ define brick: unitcell18x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x11"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x11"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x11"

'@ define brick: unitcell18x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x12"
.Material "Copper (annealed)"
.XRange "22", "23"
.YRange "-117.25", "-107.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x12"
.Material "Copper (annealed)"
.XRange "17.75", "27.25"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x12"

'@ define brick: unitcell18x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x13"
.Material "Copper (annealed)"
.XRange "37.25", "37.75"
.YRange "-117.5", "-107.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x13"
.Material "Copper (annealed)"
.XRange "32.5", "42.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x13"

'@ define brick: unitcell18x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x14"
.Material "Copper (annealed)"
.XRange "52.25", "52.75"
.YRange "-117.5", "-107.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x14"
.Material "Copper (annealed)"
.XRange "47.5", "57.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x14"

'@ define brick: unitcell18x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x15"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x15"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x15"

'@ define brick: unitcell18x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x16"
.Material "Copper (annealed)"
.XRange "82.25", "82.75"
.YRange "-117.5", "-107.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x16"
.Material "Copper (annealed)"
.XRange "77.5", "87.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x16"

'@ define brick: unitcell18x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x17"
.Material "Copper (annealed)"
.XRange "97.25", "97.75"
.YRange "-117.5", "-107.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x17"
.Material "Copper (annealed)"
.XRange "92.5", "102.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x17"

'@ define brick: unitcell18x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x18"

'@ define brick: unitcell18x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-116.5", "-108.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x19"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x19"

'@ define brick: unitcell18x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell18x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-116.75", "-108.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell18x20"
.Material "Copper (annealed)"
.XRange "138.25", "146.75"
.YRange "-113", "-112"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell18x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x20"

'@ define brick: unitcell19x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x1"

'@ define brick: unitcell19x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x2"
.Material "Copper (annealed)"
.XRange "-128", "-127"
.YRange "-131.75", "-123.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x2"
.Material "Copper (annealed)"
.XRange "-131.75", "-123.25"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x2"

'@ define brick: unitcell19x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x3"
.Material "Copper (annealed)"
.XRange "-112.75", "-112.25"
.YRange "-132.5", "-122.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x3"
.Material "Copper (annealed)"
.XRange "-117.5", "-107.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x3"

'@ define brick: unitcell19x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x4"
.Material "Copper (annealed)"
.XRange "-98", "-97"
.YRange "-131.75", "-123.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x4"
.Material "Copper (annealed)"
.XRange "-101.75", "-93.25"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x4"

'@ define brick: unitcell19x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x5"
.Material "Copper (annealed)"
.XRange "-83", "-82"
.YRange "-128.25", "-126.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x5"
.Material "Copper (annealed)"
.XRange "-83.25", "-81.75"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x5"

'@ define brick: unitcell19x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x6"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-131.75", "-123.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x6"
.Material "Copper (annealed)"
.XRange "-71.75", "-63.25"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x6"

'@ define brick: unitcell19x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x7"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x7"
.Material "Copper (annealed)"
.XRange "-53", "-52"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x7"

'@ define brick: unitcell19x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x8"
.Material "Copper (annealed)"
.XRange "-38", "-37"
.YRange "-130.25", "-124.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x8"
.Material "Copper (annealed)"
.XRange "-40.25", "-34.75"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x8"

'@ define brick: unitcell19x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x9"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x9"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x9"

'@ define brick: unitcell19x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x10"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x10"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x10"

'@ define brick: unitcell19x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x11"
.Material "Copper (annealed)"
.XRange "7.25", "7.75"
.YRange "-132.5", "-122.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x11"
.Material "Copper (annealed)"
.XRange "2.5", "12.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x11"

'@ define brick: unitcell19x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x12"
.Material "Copper (annealed)"
.XRange "22.25", "22.75"
.YRange "-132.5", "-122.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x12"
.Material "Copper (annealed)"
.XRange "17.5", "27.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x12"

'@ define brick: unitcell19x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x13"
.Material "Copper (annealed)"
.XRange "37.25", "37.75"
.YRange "-132.5", "-122.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x13"
.Material "Copper (annealed)"
.XRange "32.5", "42.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x13"

'@ define brick: unitcell19x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x14"
.Material "Copper (annealed)"
.XRange "52.25", "52.75"
.YRange "-132.5", "-122.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x14"
.Material "Copper (annealed)"
.XRange "47.5", "57.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x14"

'@ define brick: unitcell19x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x15"
.Material "Copper (annealed)"
.XRange "67.25", "67.75"
.YRange "-132.5", "-122.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x15"
.Material "Copper (annealed)"
.XRange "62.5", "72.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x15"

'@ define brick: unitcell19x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "-131.75", "-123.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x16"
.Material "Copper (annealed)"
.XRange "78.25", "86.75"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x16"

'@ define brick: unitcell19x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x17"
.Material "Copper (annealed)"
.XRange "97.25", "97.75"
.YRange "-132.5", "-122.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x17"
.Material "Copper (annealed)"
.XRange "92.5", "102.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x17"

'@ define brick: unitcell19x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-131.25", "-123.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x18"
.Material "Copper (annealed)"
.XRange "108.75", "116.25"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x18"

'@ define brick: unitcell19x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x19"

'@ define brick: unitcell19x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell19x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell19x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-128", "-127"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell19x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x20"

'@ define brick: unitcell20x1:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x1:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x1"
.Material "Copper (annealed)"
.XRange "-143", "-142"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x1"

'@ define brick: unitcell20x2:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x2"
.Material "Copper (annealed)"
.XRange "-128", "-127"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x2:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x2"
.Material "Copper (annealed)"
.XRange "-128", "-127"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x2"

'@ define brick: unitcell20x3:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x3"
.Material "Copper (annealed)"
.XRange "-113", "-112"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x3:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x3"
.Material "Copper (annealed)"
.XRange "-113", "-112"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x3"

'@ define brick: unitcell20x4:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x4"
.Material "Copper (annealed)"
.XRange "-98", "-97"
.YRange "-145.75", "-139.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x4:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x4"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x4"

'@ define brick: unitcell20x5:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x5"
.Material "Copper (annealed)"
.XRange "-83", "-82"
.YRange "-147.25", "-137.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x5:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x5"
.Material "Copper (annealed)"
.XRange "-87.25", "-77.75"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x5"

'@ define brick: unitcell20x6:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x6"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x6:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x6"
.Material "Copper (annealed)"
.XRange "-68", "-67"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x6"

'@ define brick: unitcell20x7:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x7"
.Material "Copper (annealed)"
.XRange "-52.75", "-52.25"
.YRange "-147.5", "-137.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x7:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x7"
.Material "Copper (annealed)"
.XRange "-57.5", "-47.5"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x7"

'@ define brick: unitcell20x8:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x8"
.Material "Copper (annealed)"
.XRange "-37.75", "-37.25"
.YRange "-147.5", "-137.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x8:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x8"
.Material "Copper (annealed)"
.XRange "-42.5", "-32.5"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x8"

'@ define brick: unitcell20x9:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x9"
.Material "Copper (annealed)"
.XRange "-23", "-22"
.YRange "-147.25", "-137.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x9:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x9"
.Material "Copper (annealed)"
.XRange "-27.25", "-17.75"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x9"

'@ define brick: unitcell20x10:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x10"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x10:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x10"
.Material "Copper (annealed)"
.XRange "-8", "-7"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x10"

'@ define brick: unitcell20x11:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x11"
.Material "Copper (annealed)"
.XRange "7", "8"
.YRange "-146.25", "-138.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x11:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x11"
.Material "Copper (annealed)"
.XRange "3.75", "11.25"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x11"

'@ define brick: unitcell20x12:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x12"
.Material "Copper (annealed)"
.XRange "22.25", "22.75"
.YRange "-147.5", "-137.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x12:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x12"
.Material "Copper (annealed)"
.XRange "17.5", "27.5"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x12"

'@ define brick: unitcell20x13:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x13"
.Material "Copper (annealed)"
.XRange "37.25", "37.75"
.YRange "-147.5", "-137.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x13:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x13"
.Material "Copper (annealed)"
.XRange "32.5", "42.5"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x13"

'@ define brick: unitcell20x14:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x14"
.Material "Copper (annealed)"
.XRange "52.25", "52.75"
.YRange "-147.5", "-137.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x14:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x14"
.Material "Copper (annealed)"
.XRange "47.5", "57.5"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x14"

'@ define brick: unitcell20x15:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x15"
.Material "Copper (annealed)"
.XRange "67", "68"
.YRange "-147.25", "-137.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x15:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x15"
.Material "Copper (annealed)"
.XRange "62.75", "72.25"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x15"

'@ define brick: unitcell20x16:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x16:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x16"
.Material "Copper (annealed)"
.XRange "82", "83"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x16"

'@ define brick: unitcell20x17:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x17:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x17"
.Material "Copper (annealed)"
.XRange "97", "98"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x17"

'@ define brick: unitcell20x18:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x18:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x18"
.Material "Copper (annealed)"
.XRange "112", "113"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x18"

'@ define brick: unitcell20x19:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x19"
.Material "Copper (annealed)"
.XRange "127", "128"
.YRange "-145", "-140"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x19:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x19"
.Material "Copper (annealed)"
.XRange "125", "130"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x19"

'@ define brick: unitcell20x20:vertical

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "vertical"
.Component "unitcell20x20"
.Material "Copper (annealed)"
.XRange "142", "143"
.YRange "-146.5", "-138.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x20:horizontal

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "horizontal"
.Component "unitcell20x20"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "-143", "-142"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x20"

