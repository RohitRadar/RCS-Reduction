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
.XRange "-142.75", "-142.25"
.YRange "135.75", "149.25"
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
.XRange "-149.25", "-135.75"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "149.25", "149.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "135.75", "135.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.XRange "-149.45", "-149.25"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.XRange "-135.75", "-135.55"
.YRange "141.5", "143.5"
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
.XRange "-127.75", "-127.25"
.YRange "135.25", "149.75"
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
.XRange "-134.75", "-120.25"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "149.75", "149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "135.25", "135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.XRange "-134.95", "-134.75"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.XRange "-120.25", "-120.05"
.YRange "141.5", "143.5"
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
.XRange "-112.75", "-112.25"
.YRange "139.75", "145.25"
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
.XRange "-115.25", "-109.75"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "145.25", "145.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "139.75", "139.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x3"
.Material "Copper (annealed)"
.XRange "-115.45", "-115.25"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x3"
.Material "Copper (annealed)"
.XRange "-109.75", "-109.55"
.YRange "141.5", "143.5"
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
.XRange "-97.75", "-97.25"
.YRange "140.25", "144.75"
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
.XRange "-99.75", "-95.25"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "144.75", "144.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "140.25", "140.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.XRange "-99.95", "-99.75"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.XRange "-95.25", "-95.05"
.YRange "141.5", "143.5"
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
.XRange "-82.75", "-82.25"
.YRange "142", "143"
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
.XRange "-83", "-82"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "143", "143.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "142", "141.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.XRange "-83.2", "-83"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.XRange "-82", "-81.8"
.YRange "141.5", "143.5"
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
.XRange "-67.75", "-67.25"
.YRange "135.5", "149.5"
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
.XRange "-74.5", "-60.5"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "149.5", "149.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "135.5", "135.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x6"
.Material "Copper (annealed)"
.XRange "-74.7", "-74.5"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x6"
.Material "Copper (annealed)"
.XRange "-60.5", "-60.3"
.YRange "141.5", "143.5"
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
.YRange "135.5", "149.5"
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
.XRange "-59.5", "-45.5"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "149.5", "149.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "135.5", "135.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.XRange "-59.7", "-59.5"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.XRange "-45.5", "-45.3"
.YRange "141.5", "143.5"
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
.YRange "141.5", "143.5"
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
.XRange "-38.5", "-36.5"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "143.5", "143.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "141.5", "141.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x8"
.Material "Copper (annealed)"
.XRange "-38.7", "-38.5"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x8"
.Material "Copper (annealed)"
.XRange "-36.5", "-36.3"
.YRange "141.5", "143.5"
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
.XRange "-22.75", "-22.25"
.YRange "142", "143"
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
.XRange "-23", "-22"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "143", "143.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "142", "141.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x9"
.Material "Copper (annealed)"
.XRange "-23.2", "-23"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x9"
.Material "Copper (annealed)"
.XRange "-22", "-21.8"
.YRange "141.5", "143.5"
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
.XRange "-7.75", "-7.25"
.YRange "135.25", "149.75"
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
.XRange "-14.75", "-0.25"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "149.75", "149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "135.25", "135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.XRange "-14.95", "-14.75"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.XRange "-0.25", "-0.05"
.YRange "141.5", "143.5"
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
.XRange "7.25", "7.75"
.YRange "142", "143"
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
.XRange "7", "8"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "143", "143.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "142", "141.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x11"
.Material "Copper (annealed)"
.XRange "6.8", "7"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x11"
.Material "Copper (annealed)"
.XRange "8", "8.2"
.YRange "141.5", "143.5"
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
.YRange "138.25", "146.75"
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
.XRange "18.25", "26.75"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "146.75", "146.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "138.25", "138.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.XRange "18.05", "18.25"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.XRange "26.75", "26.95"
.YRange "141.5", "143.5"
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
.YRange "137.25", "147.75"
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
.XRange "32.25", "42.75"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "147.75", "147.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "137.25", "137.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.XRange "32.05", "32.25"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.XRange "42.75", "42.95"
.YRange "141.5", "143.5"
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
.XRange "52.25", "52.75"
.YRange "135.5", "149.5"
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
.XRange "45.5", "59.5"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "149.5", "149.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "135.5", "135.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.XRange "45.3", "45.5"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.XRange "59.5", "59.7"
.YRange "141.5", "143.5"
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
.XRange "67.25", "67.75"
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
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "143", "143.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "142", "141.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.XRange "66.8", "67"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.XRange "68", "68.2"
.YRange "141.5", "143.5"
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
.XRange "82.25", "82.75"
.YRange "135.5", "149.5"
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
.XRange "75.5", "89.5"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "149.5", "149.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "135.5", "135.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x16"
.Material "Copper (annealed)"
.XRange "75.3", "75.5"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x16"
.Material "Copper (annealed)"
.XRange "89.5", "89.7"
.YRange "141.5", "143.5"
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
.XRange "97.25", "97.75"
.YRange "135.25", "149.75"
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
.XRange "90.25", "104.75"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "149.75", "149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "135.25", "135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x17"
.Material "Copper (annealed)"
.XRange "90.05", "90.25"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x17"
.Material "Copper (annealed)"
.XRange "104.75", "104.95"
.YRange "141.5", "143.5"
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
.XRange "112.25", "112.75"
.YRange "138.75", "146.25"
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
.XRange "108.75", "116.25"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "146.25", "146.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "138.75", "138.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x18"
.Material "Copper (annealed)"
.XRange "108.55", "108.75"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x18"
.Material "Copper (annealed)"
.XRange "116.25", "116.45"
.YRange "141.5", "143.5"
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
.XRange "127.25", "127.75"
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
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "143", "143.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "142", "141.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x19"
.Material "Copper (annealed)"
.XRange "126.8", "127"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x19"
.Material "Copper (annealed)"
.XRange "128", "128.2"
.YRange "141.5", "143.5"
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
.XRange "142.25", "142.75"
.YRange "140.5", "144.5"
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
.XRange "140.5", "144.5"
.YRange "142.25", "142.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "144.5", "144.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell1x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "140.5", "140.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell1x20"
.Material "Copper (annealed)"
.XRange "140.3", "140.5"
.YRange "141.5", "143.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell1x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell1x20"
.Material "Copper (annealed)"
.XRange "144.5", "144.7"
.YRange "141.5", "143.5"
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
.XRange "-142.75", "-142.25"
.YRange "120.25", "134.75"
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
.XRange "-149.75", "-135.25"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "134.75", "134.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "120.25", "120.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.XRange "-149.95", "-149.75"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.XRange "-135.25", "-135.05"
.YRange "126.5", "128.5"
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
.XRange "-127.75", "-127.25"
.YRange "126", "129"
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
.XRange "-129", "-126"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "129", "129.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "126", "125.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.XRange "-129.2", "-129"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.XRange "-126", "-125.8"
.YRange "126.5", "128.5"
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
.YRange "124.5", "130.5"
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
.XRange "-115.5", "-109.5"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "130.5", "130.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "124.5", "124.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x3"
.Material "Copper (annealed)"
.XRange "-115.7", "-115.5"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x3"
.Material "Copper (annealed)"
.XRange "-109.5", "-109.3"
.YRange "126.5", "128.5"
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
.XRange "-97.75", "-97.25"
.YRange "122", "133"
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
.XRange "-103", "-92"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "133", "133.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "122", "121.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x4"
.Material "Copper (annealed)"
.XRange "-103.2", "-103"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x4"
.Material "Copper (annealed)"
.XRange "-92", "-91.8"
.YRange "126.5", "128.5"
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
.XRange "-82.75", "-82.25"
.YRange "127", "128"
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
.XRange "-83", "-82"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "128", "128.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "127", "126.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.XRange "-83.2", "-83"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.XRange "-82", "-81.8"
.YRange "126.5", "128.5"
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
.XRange "-67.75", "-67.25"
.YRange "127", "128"
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
.XRange "-68", "-67"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "128", "128.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "127", "126.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.XRange "-68.2", "-68"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.XRange "-67", "-66.8"
.YRange "126.5", "128.5"
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
.XRange "-52.75", "-52.25"
.YRange "124.25", "130.75"
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
.XRange "-55.75", "-49.25"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "130.75", "130.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "124.25", "124.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x7"
.Material "Copper (annealed)"
.XRange "-55.95", "-55.75"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x7"
.Material "Copper (annealed)"
.XRange "-49.25", "-49.05"
.YRange "126.5", "128.5"
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
.YRange "123.75", "131.25"
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
.XRange "-41.25", "-33.75"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "131.25", "131.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "123.75", "123.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x8"
.Material "Copper (annealed)"
.XRange "-41.45", "-41.25"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x8"
.Material "Copper (annealed)"
.XRange "-33.75", "-33.55"
.YRange "126.5", "128.5"
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
.YRange "123.75", "131.25"
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
.XRange "-26.25", "-18.75"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "131.25", "131.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "123.75", "123.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x9"
.Material "Copper (annealed)"
.XRange "-26.45", "-26.25"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x9"
.Material "Copper (annealed)"
.XRange "-18.75", "-18.55"
.YRange "126.5", "128.5"
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
.XRange "-7.75", "-7.25"
.YRange "121.5", "133.5"
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
.XRange "-13.5", "-1.5"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "133.5", "133.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "121.5", "121.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.XRange "-13.7", "-13.5"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.XRange "-1.5", "-1.3"
.YRange "126.5", "128.5"
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
.XRange "7.25", "7.75"
.YRange "120.75", "134.25"
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
.XRange "0.75", "14.25"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "134.25", "134.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "120.75", "120.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.XRange "0.55", "0.75"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.XRange "14.25", "14.45"
.YRange "126.5", "128.5"
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
.YRange "122", "133"
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
.XRange "17", "28"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "133", "133.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "122", "121.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x12"
.Material "Copper (annealed)"
.XRange "16.8", "17"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x12"
.Material "Copper (annealed)"
.XRange "28", "28.2"
.YRange "126.5", "128.5"
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
.XRange "37.25", "37.75"
.YRange "127", "128"
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
.XRange "37", "38"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "128", "128.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "127", "126.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.XRange "36.8", "37"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.XRange "38", "38.2"
.YRange "126.5", "128.5"
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
.YRange "123", "132"
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
.XRange "48", "57"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "132", "132.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "123", "122.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.XRange "47.8", "48"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.XRange "57", "57.2"
.YRange "126.5", "128.5"
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
.XRange "67.25", "67.75"
.YRange "120.25", "134.75"
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
.XRange "60.25", "74.75"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "134.75", "134.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "120.25", "120.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x15"
.Material "Copper (annealed)"
.XRange "60.05", "60.25"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x15"
.Material "Copper (annealed)"
.XRange "74.75", "74.95"
.YRange "126.5", "128.5"
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
.XRange "82.25", "82.75"
.YRange "127", "128"
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
.XRange "82", "83"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "128", "128.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "127", "126.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x16"
.Material "Copper (annealed)"
.XRange "81.8", "82"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x16"
.Material "Copper (annealed)"
.XRange "83", "83.2"
.YRange "126.5", "128.5"
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
.XRange "97.25", "97.75"
.YRange "122.25", "132.75"
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
.XRange "92.25", "102.75"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "132.75", "132.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "122.25", "122.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x17"
.Material "Copper (annealed)"
.XRange "92.05", "92.25"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x17"
.Material "Copper (annealed)"
.XRange "102.75", "102.95"
.YRange "126.5", "128.5"
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
.XRange "112.25", "112.75"
.YRange "121.25", "133.75"
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
.XRange "106.25", "118.75"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "133.75", "133.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "121.25", "121.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x18"
.Material "Copper (annealed)"
.XRange "106.05", "106.25"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x18"
.Material "Copper (annealed)"
.XRange "118.75", "118.95"
.YRange "126.5", "128.5"
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
.YRange "122.25", "132.75"
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
.XRange "122.25", "132.75"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "132.75", "132.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "122.25", "122.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x19"
.Material "Copper (annealed)"
.XRange "122.05", "122.25"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x19"
.Material "Copper (annealed)"
.XRange "132.75", "132.95"
.YRange "126.5", "128.5"
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
.XRange "142.25", "142.75"
.YRange "124.75", "130.25"
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
.XRange "139.75", "145.25"
.YRange "127.25", "127.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "130.25", "130.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell2x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "124.75", "124.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell2x20"
.Material "Copper (annealed)"
.XRange "139.55", "139.75"
.YRange "126.5", "128.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell2x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell2x20"
.Material "Copper (annealed)"
.XRange "145.25", "145.45"
.YRange "126.5", "128.5"
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
.XRange "-142.75", "-142.25"
.YRange "107", "118"
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
.XRange "-148", "-137"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "118", "118.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "107", "106.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.XRange "-148.2", "-148"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.XRange "-137", "-136.8"
.YRange "111.5", "113.5"
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
.XRange "-127.75", "-127.25"
.YRange "110", "115"
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
.XRange "-130", "-125"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "115", "115.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "110", "109.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.XRange "-130.2", "-130"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.XRange "-125", "-124.8"
.YRange "111.5", "113.5"
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
.YRange "107", "118"
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
.XRange "-118", "-107"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "118", "118.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "107", "106.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.XRange "-118.2", "-118"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.XRange "-107", "-106.8"
.YRange "111.5", "113.5"
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
.YRange "108.5", "116.5"
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
.XRange "-101.5", "-93.5"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "116.5", "116.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "108.5", "108.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.XRange "-101.7", "-101.5"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.XRange "-93.5", "-93.3"
.YRange "111.5", "113.5"
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
.XRange "-82.75", "-82.25"
.YRange "107", "118"
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
.XRange "-88", "-77"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "118", "118.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "107", "106.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x5"
.Material "Copper (annealed)"
.XRange "-88.2", "-88"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x5"
.Material "Copper (annealed)"
.XRange "-77", "-76.8"
.YRange "111.5", "113.5"
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
.XRange "-67.75", "-67.25"
.YRange "112", "113"
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
.XRange "-68", "-67"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "113", "113.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "112", "111.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.XRange "-68.2", "-68"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.XRange "-67", "-66.8"
.YRange "111.5", "113.5"
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
.XRange "-52.75", "-52.25"
.YRange "105.25", "119.75"
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
.XRange "-59.75", "-45.25"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "119.75", "119.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "105.25", "105.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.XRange "-59.95", "-59.75"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.XRange "-45.25", "-45.05"
.YRange "111.5", "113.5"
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
.XRange "-37.75", "-37.25"
.YRange "109.75", "115.25"
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
.XRange "-40.25", "-34.75"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "115.25", "115.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "109.75", "109.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x8"
.Material "Copper (annealed)"
.XRange "-40.45", "-40.25"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x8"
.Material "Copper (annealed)"
.XRange "-34.75", "-34.55"
.YRange "111.5", "113.5"
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
.XRange "-22.75", "-22.25"
.YRange "105.75", "119.25"
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
.XRange "-29.25", "-15.75"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "119.25", "119.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "105.75", "105.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x9"
.Material "Copper (annealed)"
.XRange "-29.45", "-29.25"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x9"
.Material "Copper (annealed)"
.XRange "-15.75", "-15.55"
.YRange "111.5", "113.5"
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
.XRange "-7.75", "-7.25"
.YRange "106.5", "118.5"
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
.XRange "-13.5", "-1.5"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "118.5", "118.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "106.5", "106.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x10"
.Material "Copper (annealed)"
.XRange "-13.7", "-13.5"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x10"
.Material "Copper (annealed)"
.XRange "-1.5", "-1.3"
.YRange "111.5", "113.5"
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
.XRange "7.25", "7.75"
.YRange "106.25", "118.75"
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
.XRange "1.25", "13.75"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "118.75", "118.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "106.25", "106.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x11"
.Material "Copper (annealed)"
.XRange "1.05", "1.25"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x11"
.Material "Copper (annealed)"
.XRange "13.75", "13.95"
.YRange "111.5", "113.5"
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
.YRange "105.75", "119.25"
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
.XRange "15.75", "29.25"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "119.25", "119.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "105.75", "105.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.XRange "15.55", "15.75"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.XRange "29.25", "29.45"
.YRange "111.5", "113.5"
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
.XRange "37.25", "37.75"
.YRange "106.75", "118.25"
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
.XRange "31.75", "43.25"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "118.25", "118.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "106.75", "106.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.XRange "31.55", "31.75"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.XRange "43.25", "43.45"
.YRange "111.5", "113.5"
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
.YRange "112", "113"
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
.XRange "52", "53"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "113", "113.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "112", "111.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.XRange "51.8", "52"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.XRange "53", "53.2"
.YRange "111.5", "113.5"
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
.YRange "109.25", "115.75"
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
.XRange "64.25", "70.75"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "115.75", "115.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "109.25", "109.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x15"
.Material "Copper (annealed)"
.XRange "64.05", "64.25"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x15"
.Material "Copper (annealed)"
.XRange "70.75", "70.95"
.YRange "111.5", "113.5"
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
.YRange "112", "113"
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
.XRange "82", "83"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "113", "113.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "112", "111.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x16"
.Material "Copper (annealed)"
.XRange "81.8", "82"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x16"
.Material "Copper (annealed)"
.XRange "83", "83.2"
.YRange "111.5", "113.5"
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
.XRange "97.25", "97.75"
.YRange "105.25", "119.75"
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
.XRange "90.25", "104.75"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "119.75", "119.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "105.25", "105.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x17"
.Material "Copper (annealed)"
.XRange "90.05", "90.25"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x17"
.Material "Copper (annealed)"
.XRange "104.75", "104.95"
.YRange "111.5", "113.5"
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
.XRange "112.25", "112.75"
.YRange "105.25", "119.75"
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
.XRange "105.25", "119.75"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "119.75", "119.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "105.25", "105.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x18"
.Material "Copper (annealed)"
.XRange "105.05", "105.25"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x18"
.Material "Copper (annealed)"
.XRange "119.75", "119.95"
.YRange "111.5", "113.5"
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
.YRange "107.75", "117.25"
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
.XRange "122.75", "132.25"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "117.25", "117.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "107.75", "107.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x19"
.Material "Copper (annealed)"
.XRange "122.55", "122.75"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x19"
.Material "Copper (annealed)"
.XRange "132.25", "132.45"
.YRange "111.5", "113.5"
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
.YRange "108.5", "116.5"
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
.XRange "138.5", "146.5"
.YRange "112.25", "112.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "116.5", "116.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell3x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "108.5", "108.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell3x20"
.Material "Copper (annealed)"
.XRange "138.3", "138.5"
.YRange "111.5", "113.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell3x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell3x20"
.Material "Copper (annealed)"
.XRange "146.5", "146.7"
.YRange "111.5", "113.5"
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
.YRange "94", "101"
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
.XRange "-146", "-139"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "101", "101.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "94", "93.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.XRange "-146.2", "-146"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.XRange "-139", "-138.8"
.YRange "96.5", "98.5"
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
.XRange "-127.75", "-127.25"
.YRange "90.75", "104.25"
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
.XRange "-134.25", "-120.75"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "104.25", "104.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "90.75", "90.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x2"
.Material "Copper (annealed)"
.XRange "-134.45", "-134.25"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x2"
.Material "Copper (annealed)"
.XRange "-120.75", "-120.55"
.YRange "96.5", "98.5"
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
.YRange "95.25", "99.75"
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
.XRange "-114.75", "-110.25"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "99.75", "99.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "95.25", "95.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.XRange "-114.95", "-114.75"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.XRange "-110.25", "-110.05"
.YRange "96.5", "98.5"
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
.XRange "-97.75", "-97.25"
.YRange "91.5", "103.5"
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
.XRange "-103.5", "-91.5"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "103.5", "103.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "91.5", "91.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x4"
.Material "Copper (annealed)"
.XRange "-103.7", "-103.5"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x4"
.Material "Copper (annealed)"
.XRange "-91.5", "-91.3"
.YRange "96.5", "98.5"
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
.XRange "-82.75", "-82.25"
.YRange "97", "98"
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
.XRange "-83", "-82"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "98", "98.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "97", "96.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.XRange "-83.2", "-83"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.XRange "-82", "-81.8"
.YRange "96.5", "98.5"
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
.XRange "-67.75", "-67.25"
.YRange "95.75", "99.25"
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
.XRange "-69.25", "-65.75"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "99.25", "99.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "95.75", "95.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x6"
.Material "Copper (annealed)"
.XRange "-69.45", "-69.25"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x6"
.Material "Copper (annealed)"
.XRange "-65.75", "-65.55"
.YRange "96.5", "98.5"
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
.XRange "-52.75", "-52.25"
.YRange "91.25", "103.75"
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
.XRange "-58.75", "-46.25"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "103.75", "103.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "91.25", "91.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x7"
.Material "Copper (annealed)"
.XRange "-58.95", "-58.75"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x7"
.Material "Copper (annealed)"
.XRange "-46.25", "-46.05"
.YRange "96.5", "98.5"
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
.XRange "-37.75", "-37.25"
.YRange "93", "102"
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
.XRange "-42", "-33"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "102", "102.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "93", "92.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x8"
.Material "Copper (annealed)"
.XRange "-42.2", "-42"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x8"
.Material "Copper (annealed)"
.XRange "-33", "-32.8"
.YRange "96.5", "98.5"
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
.XRange "-22.75", "-22.25"
.YRange "90.75", "104.25"
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
.XRange "-29.25", "-15.75"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "104.25", "104.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "90.75", "90.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.XRange "-29.45", "-29.25"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.XRange "-15.75", "-15.55"
.YRange "96.5", "98.5"
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
.YRange "93", "102"
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
.XRange "-12", "-3"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "102", "102.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "93", "92.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x10"
.Material "Copper (annealed)"
.XRange "-12.2", "-12"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x10"
.Material "Copper (annealed)"
.XRange "-3", "-2.8"
.YRange "96.5", "98.5"
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
.XRange "7.25", "7.75"
.YRange "92.75", "102.25"
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
.XRange "2.75", "12.25"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "102.25", "102.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "92.75", "92.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x11"
.Material "Copper (annealed)"
.XRange "2.55", "2.75"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x11"
.Material "Copper (annealed)"
.XRange "12.25", "12.45"
.YRange "96.5", "98.5"
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
.XRange "22.25", "22.75"
.YRange "92.25", "102.75"
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
.XRange "17.25", "27.75"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "102.75", "102.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "92.25", "92.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x12"
.Material "Copper (annealed)"
.XRange "17.05", "17.25"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x12"
.Material "Copper (annealed)"
.XRange "27.75", "27.95"
.YRange "96.5", "98.5"
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
.XRange "37.25", "37.75"
.YRange "90.25", "104.75"
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
.XRange "30.25", "44.75"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "104.75", "104.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "90.25", "90.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.XRange "30.05", "30.25"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.XRange "44.75", "44.95"
.YRange "96.5", "98.5"
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
.YRange "92.75", "102.25"
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
.XRange "47.75", "57.25"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "102.25", "102.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "92.75", "92.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x14"
.Material "Copper (annealed)"
.XRange "47.55", "47.75"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x14"
.Material "Copper (annealed)"
.XRange "57.25", "57.45"
.YRange "96.5", "98.5"
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
.XRange "67.25", "67.75"
.YRange "90.25", "104.75"
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
.XRange "60.25", "74.75"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "104.75", "104.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "90.25", "90.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x15"
.Material "Copper (annealed)"
.XRange "60.05", "60.25"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x15"
.Material "Copper (annealed)"
.XRange "74.75", "74.95"
.YRange "96.5", "98.5"
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
.YRange "94.25", "100.75"
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
.XRange "79.25", "85.75"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "100.75", "100.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "94.25", "94.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x16"
.Material "Copper (annealed)"
.XRange "79.05", "79.25"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x16"
.Material "Copper (annealed)"
.XRange "85.75", "85.95"
.YRange "96.5", "98.5"
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
.XRange "97.25", "97.75"
.YRange "91.5", "103.5"
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
.XRange "91.5", "103.5"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "103.5", "103.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "91.5", "91.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x17"
.Material "Copper (annealed)"
.XRange "91.3", "91.5"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x17"
.Material "Copper (annealed)"
.XRange "103.5", "103.7"
.YRange "96.5", "98.5"
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
.YRange "93.5", "101.5"
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
.XRange "108.5", "116.5"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "101.5", "101.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "93.5", "93.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x18"
.Material "Copper (annealed)"
.XRange "108.3", "108.5"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x18"
.Material "Copper (annealed)"
.XRange "116.5", "116.7"
.YRange "96.5", "98.5"
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
.XRange "127.25", "127.75"
.YRange "92.75", "102.25"
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
.XRange "122.75", "132.25"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "102.25", "102.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "92.75", "92.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x19"
.Material "Copper (annealed)"
.XRange "122.55", "122.75"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x19"
.Material "Copper (annealed)"
.XRange "132.25", "132.45"
.YRange "96.5", "98.5"
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
.YRange "90.75", "104.25"
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
.XRange "135.75", "149.25"
.YRange "97.25", "97.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "104.25", "104.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell4x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "90.75", "90.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell4x20"
.Material "Copper (annealed)"
.XRange "135.55", "135.75"
.YRange "96.5", "98.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell4x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell4x20"
.Material "Copper (annealed)"
.XRange "149.25", "149.45"
.YRange "96.5", "98.5"
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
.YRange "78.75", "86.25"
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
.XRange "-146.25", "-138.75"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "86.25", "86.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "78.75", "78.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.XRange "-146.45", "-146.25"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.XRange "-138.75", "-138.55"
.YRange "81.5", "83.5"
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
.XRange "-127.75", "-127.25"
.YRange "75.5", "89.5"
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
.XRange "-134.5", "-120.5"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "89.5", "89.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "75.5", "75.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x2"
.Material "Copper (annealed)"
.XRange "-134.7", "-134.5"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x2"
.Material "Copper (annealed)"
.XRange "-120.5", "-120.3"
.YRange "81.5", "83.5"
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
.XRange "-112.75", "-112.25"
.YRange "77.25", "87.75"
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
.XRange "-117.75", "-107.25"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "87.75", "87.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "77.25", "77.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x3"
.Material "Copper (annealed)"
.XRange "-117.95", "-117.75"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x3"
.Material "Copper (annealed)"
.XRange "-107.25", "-107.05"
.YRange "81.5", "83.5"
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
.XRange "-97.75", "-97.25"
.YRange "79.5", "85.5"
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
.XRange "-100.5", "-94.5"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "85.5", "85.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "79.5", "79.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x4"
.Material "Copper (annealed)"
.XRange "-100.7", "-100.5"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x4"
.Material "Copper (annealed)"
.XRange "-94.5", "-94.3"
.YRange "81.5", "83.5"
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
.XRange "-82.75", "-82.25"
.YRange "80.75", "84.25"
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
.XRange "-84.25", "-80.75"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "84.25", "84.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "80.75", "80.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x5"
.Material "Copper (annealed)"
.XRange "-84.45", "-84.25"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x5"
.Material "Copper (annealed)"
.XRange "-80.75", "-80.55"
.YRange "81.5", "83.5"
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
.XRange "-67.75", "-67.25"
.YRange "75.25", "89.75"
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
.XRange "-74.75", "-60.25"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "89.75", "89.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "75.25", "75.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.XRange "-74.95", "-74.75"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.XRange "-60.25", "-60.05"
.YRange "81.5", "83.5"
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
.XRange "-52.75", "-52.25"
.YRange "75.75", "89.25"
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
.XRange "-59.25", "-45.75"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "89.25", "89.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "75.75", "75.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x7"
.Material "Copper (annealed)"
.XRange "-59.45", "-59.25"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x7"
.Material "Copper (annealed)"
.XRange "-45.75", "-45.55"
.YRange "81.5", "83.5"
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
.XRange "-37.75", "-37.25"
.YRange "75.25", "89.75"
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
.XRange "-44.75", "-30.25"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "89.75", "89.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "75.25", "75.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x8"
.Material "Copper (annealed)"
.XRange "-44.95", "-44.75"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x8"
.Material "Copper (annealed)"
.XRange "-30.25", "-30.05"
.YRange "81.5", "83.5"
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
.YRange "79", "86"
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
.XRange "-26", "-19"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "86", "86.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "79", "78.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.XRange "-26.2", "-26"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.XRange "-19", "-18.8"
.YRange "81.5", "83.5"
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
.YRange "79.75", "85.25"
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
.XRange "-10.25", "-4.75"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "85.25", "85.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "79.75", "79.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.XRange "-10.45", "-10.25"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.XRange "-4.75", "-4.55"
.YRange "81.5", "83.5"
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
.YRange "77.75", "87.25"
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
.XRange "2.75", "12.25"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "87.25", "87.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "77.75", "77.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x11"
.Material "Copper (annealed)"
.XRange "2.55", "2.75"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x11"
.Material "Copper (annealed)"
.XRange "12.25", "12.45"
.YRange "81.5", "83.5"
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
.XRange "22.25", "22.75"
.YRange "77", "88"
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
.XRange "17", "28"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "88", "88.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "77", "76.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.XRange "16.8", "17"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.XRange "28", "28.2"
.YRange "81.5", "83.5"
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
.XRange "37.25", "37.75"
.YRange "76.5", "88.5"
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
.XRange "31.5", "43.5"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "88.5", "88.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "76.5", "76.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.XRange "31.3", "31.5"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.XRange "43.5", "43.7"
.YRange "81.5", "83.5"
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
.XRange "52.25", "52.75"
.YRange "76", "89"
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
.XRange "46", "59"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "89", "89.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "76", "75.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x14"
.Material "Copper (annealed)"
.XRange "45.8", "46"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x14"
.Material "Copper (annealed)"
.XRange "59", "59.2"
.YRange "81.5", "83.5"
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
.YRange "79", "86"
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
.XRange "64", "71"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "86", "86.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "79", "78.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.XRange "63.8", "64"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.XRange "71", "71.2"
.YRange "81.5", "83.5"
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
.XRange "82.25", "82.75"
.YRange "82", "83"
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
.XRange "82", "83"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "83", "83.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "82", "81.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x16"
.Material "Copper (annealed)"
.XRange "81.8", "82"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x16"
.Material "Copper (annealed)"
.XRange "83", "83.2"
.YRange "81.5", "83.5"
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
.YRange "79.5", "85.5"
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
.XRange "94.5", "100.5"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "85.5", "85.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "79.5", "79.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x17"
.Material "Copper (annealed)"
.XRange "94.3", "94.5"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x17"
.Material "Copper (annealed)"
.XRange "100.5", "100.7"
.YRange "81.5", "83.5"
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
.XRange "112.25", "112.75"
.YRange "75.25", "89.75"
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
.XRange "105.25", "119.75"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "89.75", "89.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "75.25", "75.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x18"
.Material "Copper (annealed)"
.XRange "105.05", "105.25"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x18"
.Material "Copper (annealed)"
.XRange "119.75", "119.95"
.YRange "81.5", "83.5"
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
.XRange "127.25", "127.75"
.YRange "77", "88"
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
.XRange "122", "133"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "88", "88.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "77", "76.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x19"
.Material "Copper (annealed)"
.XRange "121.8", "122"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x19"
.Material "Copper (annealed)"
.XRange "133", "133.2"
.YRange "81.5", "83.5"
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
.XRange "142.25", "142.75"
.YRange "76", "89"
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
.XRange "136", "149"
.YRange "82.25", "82.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "89", "89.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell5x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "76", "75.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell5x20"
.Material "Copper (annealed)"
.XRange "135.8", "136"
.YRange "81.5", "83.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell5x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell5x20"
.Material "Copper (annealed)"
.XRange "149", "149.2"
.YRange "81.5", "83.5"
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
.XRange "-142.75", "-142.25"
.YRange "62.25", "72.75"
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
.XRange "-147.75", "-137.25"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "72.75", "72.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "62.25", "62.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.XRange "-147.95", "-147.75"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.XRange "-137.25", "-137.05"
.YRange "66.5", "68.5"
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
.YRange "61.5", "73.5"
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
.XRange "-133.5", "-121.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "73.5", "73.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "61.5", "61.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x2"
.Material "Copper (annealed)"
.XRange "-133.7", "-133.5"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x2"
.Material "Copper (annealed)"
.XRange "-121.5", "-121.3"
.YRange "66.5", "68.5"
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
.YRange "63.5", "71.5"
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
.XRange "-116.5", "-108.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "71.5", "71.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "63.5", "63.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x3"
.Material "Copper (annealed)"
.XRange "-116.7", "-116.5"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x3"
.Material "Copper (annealed)"
.XRange "-108.5", "-108.3"
.YRange "66.5", "68.5"
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
.XRange "-97.75", "-97.25"
.YRange "64.5", "70.5"
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
.XRange "-100.5", "-94.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "70.5", "70.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "64.5", "64.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x4"
.Material "Copper (annealed)"
.XRange "-100.7", "-100.5"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x4"
.Material "Copper (annealed)"
.XRange "-94.5", "-94.3"
.YRange "66.5", "68.5"
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
.YRange "62.75", "72.25"
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
.XRange "-87.25", "-77.75"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "72.25", "72.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "62.75", "62.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x5"
.Material "Copper (annealed)"
.XRange "-87.45", "-87.25"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x5"
.Material "Copper (annealed)"
.XRange "-77.75", "-77.55"
.YRange "66.5", "68.5"
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
.XRange "-67.75", "-67.25"
.YRange "60.25", "74.75"
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
.XRange "-74.75", "-60.25"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "74.75", "74.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "60.25", "60.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.XRange "-74.95", "-74.75"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.XRange "-60.25", "-60.05"
.YRange "66.5", "68.5"
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
.XRange "-52.75", "-52.25"
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
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "68", "68.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "67", "66.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x7"
.Material "Copper (annealed)"
.XRange "-53.2", "-53"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x7"
.Material "Copper (annealed)"
.XRange "-52", "-51.8"
.YRange "66.5", "68.5"
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
.XRange "-37.75", "-37.25"
.YRange "60.25", "74.75"
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
.XRange "-44.75", "-30.25"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "74.75", "74.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "60.25", "60.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.XRange "-44.95", "-44.75"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.XRange "-30.25", "-30.05"
.YRange "66.5", "68.5"
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
.XRange "-22.75", "-22.25"
.YRange "61.5", "73.5"
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
.XRange "-28.5", "-16.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "73.5", "73.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "61.5", "61.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x9"
.Material "Copper (annealed)"
.XRange "-28.7", "-28.5"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x9"
.Material "Copper (annealed)"
.XRange "-16.5", "-16.3"
.YRange "66.5", "68.5"
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
.XRange "-7.75", "-7.25"
.YRange "65.5", "69.5"
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
.XRange "-9.5", "-5.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "69.5", "69.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "65.5", "65.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.XRange "-9.7", "-9.5"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.XRange "-5.5", "-5.3"
.YRange "66.5", "68.5"
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
.YRange "63.75", "71.25"
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
.XRange "3.75", "11.25"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "71.25", "71.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "63.75", "63.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x11"
.Material "Copper (annealed)"
.XRange "3.55", "3.75"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x11"
.Material "Copper (annealed)"
.XRange "11.25", "11.45"
.YRange "66.5", "68.5"
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
.YRange "63.5", "71.5"
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
.XRange "18.5", "26.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "71.5", "71.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "63.5", "63.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.XRange "18.3", "18.5"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.XRange "26.5", "26.7"
.YRange "66.5", "68.5"
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
.XRange "37.25", "37.75"
.YRange "60.25", "74.75"
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
.XRange "30.25", "44.75"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "74.75", "74.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "60.25", "60.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x13"
.Material "Copper (annealed)"
.XRange "30.05", "30.25"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x13"
.Material "Copper (annealed)"
.XRange "44.75", "44.95"
.YRange "66.5", "68.5"
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
.XRange "52.25", "52.75"
.YRange "64.5", "70.5"
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
.XRange "49.5", "55.5"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "70.5", "70.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "64.5", "64.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.XRange "49.3", "49.5"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.XRange "55.5", "55.7"
.YRange "66.5", "68.5"
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
.YRange "63", "72"
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
.XRange "63", "72"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "72", "72.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "63", "62.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x15"
.Material "Copper (annealed)"
.XRange "62.8", "63"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x15"
.Material "Copper (annealed)"
.XRange "72", "72.2"
.YRange "66.5", "68.5"
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
.YRange "62", "73"
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
.XRange "77", "88"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "73", "73.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "62", "61.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x16"
.Material "Copper (annealed)"
.XRange "76.8", "77"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x16"
.Material "Copper (annealed)"
.XRange "88", "88.2"
.YRange "66.5", "68.5"
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
.YRange "65", "70"
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
.XRange "95", "100"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "70", "70.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "65", "64.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x17"
.Material "Copper (annealed)"
.XRange "94.8", "95"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x17"
.Material "Copper (annealed)"
.XRange "100", "100.2"
.YRange "66.5", "68.5"
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
.XRange "112.25", "112.75"
.YRange "67", "68"
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
.XRange "112", "113"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "68", "68.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "67", "66.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x18"
.Material "Copper (annealed)"
.XRange "111.8", "112"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x18"
.Material "Copper (annealed)"
.XRange "113", "113.2"
.YRange "66.5", "68.5"
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
.YRange "64.25", "70.75"
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
.XRange "124.25", "130.75"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "70.75", "70.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "64.25", "64.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x19"
.Material "Copper (annealed)"
.XRange "124.05", "124.25"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x19"
.Material "Copper (annealed)"
.XRange "130.75", "130.95"
.YRange "66.5", "68.5"
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
.YRange "63", "72"
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
.XRange "138", "147"
.YRange "67.25", "67.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "72", "72.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell6x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "63", "62.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell6x20"
.Material "Copper (annealed)"
.XRange "137.8", "138"
.YRange "66.5", "68.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell6x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell6x20"
.Material "Copper (annealed)"
.XRange "147", "147.2"
.YRange "66.5", "68.5"
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
.XRange "-142.75", "-142.25"
.YRange "45.25", "59.75"
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
.XRange "-149.75", "-135.25"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "59.75", "59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "45.25", "45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.XRange "-149.95", "-149.75"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.XRange "-135.25", "-135.05"
.YRange "51.5", "53.5"
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
.YRange "47.25", "57.75"
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
.XRange "-132.75", "-122.25"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "57.75", "57.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "47.25", "47.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x2"
.Material "Copper (annealed)"
.XRange "-132.95", "-132.75"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x2"
.Material "Copper (annealed)"
.XRange "-122.25", "-122.05"
.YRange "51.5", "53.5"
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
.XRange "-112.75", "-112.25"
.YRange "45.25", "59.75"
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
.XRange "-119.75", "-105.25"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "59.75", "59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "45.25", "45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x3"
.Material "Copper (annealed)"
.XRange "-119.95", "-119.75"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x3"
.Material "Copper (annealed)"
.XRange "-105.25", "-105.05"
.YRange "51.5", "53.5"
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
.YRange "49.75", "55.25"
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
.XRange "-100.25", "-94.75"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "55.25", "55.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "49.75", "49.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x4"
.Material "Copper (annealed)"
.XRange "-100.45", "-100.25"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x4"
.Material "Copper (annealed)"
.XRange "-94.75", "-94.55"
.YRange "51.5", "53.5"
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
.XRange "-82.75", "-82.25"
.YRange "45.25", "59.75"
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
.XRange "-89.75", "-75.25"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "59.75", "59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "45.25", "45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x5"
.Material "Copper (annealed)"
.XRange "-89.95", "-89.75"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x5"
.Material "Copper (annealed)"
.XRange "-75.25", "-75.05"
.YRange "51.5", "53.5"
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
.YRange "52", "53"
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
.XRange "-68", "-67"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "53", "53.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "52", "51.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x6"
.Material "Copper (annealed)"
.XRange "-68.2", "-68"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x6"
.Material "Copper (annealed)"
.XRange "-67", "-66.8"
.YRange "51.5", "53.5"
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
.XRange "-52.75", "-52.25"
.YRange "46.25", "58.75"
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
.XRange "-58.75", "-46.25"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "58.75", "58.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "46.25", "46.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x7"
.Material "Copper (annealed)"
.XRange "-58.95", "-58.75"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x7"
.Material "Copper (annealed)"
.XRange "-46.25", "-46.05"
.YRange "51.5", "53.5"
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
.XRange "-37.75", "-37.25"
.YRange "45.25", "59.75"
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
.XRange "-44.75", "-30.25"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "59.75", "59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "45.25", "45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.XRange "-44.95", "-44.75"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.XRange "-30.25", "-30.05"
.YRange "51.5", "53.5"
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
.XRange "-22.75", "-22.25"
.YRange "52", "53"
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
.XRange "-23", "-22"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "53", "53.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "52", "51.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x9"
.Material "Copper (annealed)"
.XRange "-23.2", "-23"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x9"
.Material "Copper (annealed)"
.XRange "-22", "-21.8"
.YRange "51.5", "53.5"
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
.YRange "52", "53"
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
.XRange "-8", "-7"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "53", "53.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "52", "51.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.XRange "-8.2", "-8"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.XRange "-7", "-6.8"
.YRange "51.5", "53.5"
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
.XRange "7.25", "7.75"
.YRange "47.25", "57.75"
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
.XRange "2.25", "12.75"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "57.75", "57.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "47.25", "47.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x11"
.Material "Copper (annealed)"
.XRange "2.05", "2.25"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x11"
.Material "Copper (annealed)"
.XRange "12.75", "12.95"
.YRange "51.5", "53.5"
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
.YRange "48", "57"
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
.XRange "18", "27"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "57", "57.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "48", "47.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.XRange "17.8", "18"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.XRange "27", "27.2"
.YRange "51.5", "53.5"
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
.XRange "37.25", "37.75"
.YRange "49", "56"
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
.XRange "34", "41"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "56", "56.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "49", "48.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x13"
.Material "Copper (annealed)"
.XRange "33.8", "34"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x13"
.Material "Copper (annealed)"
.XRange "41", "41.2"
.YRange "51.5", "53.5"
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
.YRange "47.75", "57.25"
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
.XRange "47.75", "57.25"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "57.25", "57.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "47.75", "47.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x14"
.Material "Copper (annealed)"
.XRange "47.55", "47.75"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x14"
.Material "Copper (annealed)"
.XRange "57.25", "57.45"
.YRange "51.5", "53.5"
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
.XRange "67.25", "67.75"
.YRange "45.25", "59.75"
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
.XRange "60.25", "74.75"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "59.75", "59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "45.25", "45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.XRange "60.05", "60.25"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.XRange "74.75", "74.95"
.YRange "51.5", "53.5"
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
.YRange "47", "58"
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
.XRange "77", "88"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "58", "58.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "47", "46.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x16"
.Material "Copper (annealed)"
.XRange "76.8", "77"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x16"
.Material "Copper (annealed)"
.XRange "88", "88.2"
.YRange "51.5", "53.5"
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
.XRange "97.25", "97.75"
.YRange "47.25", "57.75"
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
.XRange "92.25", "102.75"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "57.75", "57.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "47.25", "47.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x17"
.Material "Copper (annealed)"
.XRange "92.05", "92.25"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x17"
.Material "Copper (annealed)"
.XRange "102.75", "102.95"
.YRange "51.5", "53.5"
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
.YRange "50", "55"
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
.XRange "110", "115"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "55", "55.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "50", "49.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x18"
.Material "Copper (annealed)"
.XRange "109.8", "110"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x18"
.Material "Copper (annealed)"
.XRange "115", "115.2"
.YRange "51.5", "53.5"
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
.XRange "127.25", "127.75"
.YRange "45.25", "59.75"
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
.XRange "120.25", "134.75"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "59.75", "59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "45.25", "45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x19"
.Material "Copper (annealed)"
.XRange "120.05", "120.25"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x19"
.Material "Copper (annealed)"
.XRange "134.75", "134.95"
.YRange "51.5", "53.5"
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
.XRange "142.25", "142.75"
.YRange "52", "53"
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
.XRange "142", "143"
.YRange "52.25", "52.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "53", "53.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell7x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "52", "51.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell7x20"
.Material "Copper (annealed)"
.XRange "141.8", "142"
.YRange "51.5", "53.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell7x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell7x20"
.Material "Copper (annealed)"
.XRange "143", "143.2"
.YRange "51.5", "53.5"
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
.YRange "33.5", "41.5"
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
.XRange "-146.5", "-138.5"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "41.5", "41.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "33.5", "33.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.XRange "-146.7", "-146.5"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.XRange "-138.5", "-138.3"
.YRange "36.5", "38.5"
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
.XRange "-127.75", "-127.25"
.YRange "32", "43"
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
.XRange "-133", "-122"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "43", "43.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "32", "31.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x2"
.Material "Copper (annealed)"
.XRange "-133.2", "-133"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x2"
.Material "Copper (annealed)"
.XRange "-122", "-121.8"
.YRange "36.5", "38.5"
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
.YRange "34.25", "40.75"
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
.XRange "-115.75", "-109.25"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "40.75", "40.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "34.25", "34.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x3"
.Material "Copper (annealed)"
.XRange "-115.95", "-115.75"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x3"
.Material "Copper (annealed)"
.XRange "-109.25", "-109.05"
.YRange "36.5", "38.5"
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
.XRange "-97.75", "-97.25"
.YRange "30.5", "44.5"
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
.XRange "-104.5", "-90.5"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "44.5", "44.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "30.5", "30.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x4"
.Material "Copper (annealed)"
.XRange "-104.7", "-104.5"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x4"
.Material "Copper (annealed)"
.XRange "-90.5", "-90.3"
.YRange "36.5", "38.5"
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
.YRange "32.75", "42.25"
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
.XRange "-87.25", "-77.75"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "42.25", "42.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "32.75", "32.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.XRange "-87.45", "-87.25"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.XRange "-77.75", "-77.55"
.YRange "36.5", "38.5"
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
.XRange "-67.75", "-67.25"
.YRange "31", "44"
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
.XRange "-74", "-61"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "44", "44.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "31", "30.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x6"
.Material "Copper (annealed)"
.XRange "-74.2", "-74"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x6"
.Material "Copper (annealed)"
.XRange "-61", "-60.8"
.YRange "36.5", "38.5"
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
.YRange "33.5", "41.5"
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
.XRange "-56.5", "-48.5"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "41.5", "41.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "33.5", "33.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.XRange "-56.7", "-56.5"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.XRange "-48.5", "-48.3"
.YRange "36.5", "38.5"
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
.XRange "-37.75", "-37.25"
.YRange "35.25", "39.75"
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
.XRange "-39.75", "-35.25"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "39.75", "39.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "35.25", "35.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.XRange "-39.95", "-39.75"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.XRange "-35.25", "-35.05"
.YRange "36.5", "38.5"
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
.XRange "-22.75", "-22.25"
.YRange "31.25", "43.75"
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
.XRange "-28.75", "-16.25"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "43.75", "43.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "31.25", "31.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.XRange "-28.95", "-28.75"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.XRange "-16.25", "-16.05"
.YRange "36.5", "38.5"
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
.XRange "-7.75", "-7.25"
.YRange "31.5", "43.5"
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
.XRange "-13.5", "-1.5"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "43.5", "43.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "31.5", "31.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x10"
.Material "Copper (annealed)"
.XRange "-13.7", "-13.5"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x10"
.Material "Copper (annealed)"
.XRange "-1.5", "-1.3"
.YRange "36.5", "38.5"
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
.XRange "7.25", "7.75"
.YRange "30.75", "44.25"
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
.XRange "0.75", "14.25"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "44.25", "44.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "30.75", "30.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x11"
.Material "Copper (annealed)"
.XRange "0.55", "0.75"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x11"
.Material "Copper (annealed)"
.XRange "14.25", "14.45"
.YRange "36.5", "38.5"
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
.XRange "22.25", "22.75"
.YRange "30.25", "44.75"
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
.XRange "15.25", "29.75"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "44.75", "44.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "30.25", "30.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x12"
.Material "Copper (annealed)"
.XRange "15.05", "15.25"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x12"
.Material "Copper (annealed)"
.XRange "29.75", "29.95"
.YRange "36.5", "38.5"
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
.YRange "36.75", "38.25"
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
.XRange "36.75", "38.25"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "38.25", "38.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "36.75", "36.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x13"
.Material "Copper (annealed)"
.XRange "36.55", "36.75"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x13"
.Material "Copper (annealed)"
.XRange "38.25", "38.45"
.YRange "36.5", "38.5"
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
.XRange "52.25", "52.75"
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
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "38", "38.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "37", "36.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.XRange "51.8", "52"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.XRange "53", "53.2"
.YRange "36.5", "38.5"
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
.XRange "67.25", "67.75"
.YRange "32", "43"
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
.XRange "62", "73"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "43", "43.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "32", "31.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x15"
.Material "Copper (annealed)"
.XRange "61.8", "62"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x15"
.Material "Copper (annealed)"
.XRange "73", "73.2"
.YRange "36.5", "38.5"
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
.XRange "82.25", "82.75"
.YRange "32.25", "42.75"
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
.XRange "77.25", "87.75"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "42.75", "42.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "32.25", "32.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x16"
.Material "Copper (annealed)"
.XRange "77.05", "77.25"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x16"
.Material "Copper (annealed)"
.XRange "87.75", "87.95"
.YRange "36.5", "38.5"
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
.XRange "97.25", "97.75"
.YRange "30.25", "44.75"
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
.XRange "90.25", "104.75"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "44.75", "44.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "30.25", "30.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x17"
.Material "Copper (annealed)"
.XRange "90.05", "90.25"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x17"
.Material "Copper (annealed)"
.XRange "104.75", "104.95"
.YRange "36.5", "38.5"
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
.XRange "112.25", "112.75"
.YRange "37", "38"
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
.XRange "112", "113"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "38", "38.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "37", "36.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x18"
.Material "Copper (annealed)"
.XRange "111.8", "112"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x18"
.Material "Copper (annealed)"
.XRange "113", "113.2"
.YRange "36.5", "38.5"
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
.XRange "127.25", "127.75"
.YRange "37", "38"
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
.XRange "127", "128"
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "38", "38.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "37", "36.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x19"
.Material "Copper (annealed)"
.XRange "126.8", "127"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x19"
.Material "Copper (annealed)"
.XRange "128", "128.2"
.YRange "36.5", "38.5"
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
.XRange "142.25", "142.75"
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
.YRange "37.25", "37.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "38", "38.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell8x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "37", "36.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell8x20"
.Material "Copper (annealed)"
.XRange "141.8", "142"
.YRange "36.5", "38.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell8x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell8x20"
.Material "Copper (annealed)"
.XRange "143", "143.2"
.YRange "36.5", "38.5"
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
.XRange "-142.75", "-142.25"
.YRange "17.25", "27.75"
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
.XRange "-147.75", "-137.25"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "27.75", "27.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "17.25", "17.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.XRange "-147.95", "-147.75"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.XRange "-137.25", "-137.05"
.YRange "21.5", "23.5"
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
.XRange "-127.75", "-127.25"
.YRange "22", "23"
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
.XRange "-128", "-127"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "23", "23.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "22", "21.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x2"
.Material "Copper (annealed)"
.XRange "-128.2", "-128"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x2"
.Material "Copper (annealed)"
.XRange "-127", "-126.8"
.YRange "21.5", "23.5"
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
.XRange "-112.75", "-112.25"
.YRange "16", "29"
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
.XRange "-119", "-106"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "29", "29.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "16", "15.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x3"
.Material "Copper (annealed)"
.XRange "-119.2", "-119"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x3"
.Material "Copper (annealed)"
.XRange "-106", "-105.8"
.YRange "21.5", "23.5"
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
.XRange "-97.75", "-97.25"
.YRange "17", "28"
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
.XRange "-103", "-92"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "28", "28.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "17", "16.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x4"
.Material "Copper (annealed)"
.XRange "-103.2", "-103"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x4"
.Material "Copper (annealed)"
.XRange "-92", "-91.8"
.YRange "21.5", "23.5"
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
.YRange "18", "27"
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
.XRange "-87", "-78"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "27", "27.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "18", "17.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.XRange "-87.2", "-87"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.XRange "-78", "-77.8"
.YRange "21.5", "23.5"
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
.XRange "-67.75", "-67.25"
.YRange "15.25", "29.75"
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
.XRange "-74.75", "-60.25"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "29.75", "29.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "15.25", "15.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x6"
.Material "Copper (annealed)"
.XRange "-74.95", "-74.75"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x6"
.Material "Copper (annealed)"
.XRange "-60.25", "-60.05"
.YRange "21.5", "23.5"
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
.YRange "19.25", "25.75"
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
.XRange "-55.75", "-49.25"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "25.75", "25.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "19.25", "19.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x7"
.Material "Copper (annealed)"
.XRange "-55.95", "-55.75"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x7"
.Material "Copper (annealed)"
.XRange "-49.25", "-49.05"
.YRange "21.5", "23.5"
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
.YRange "17", "28"
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
.XRange "-43", "-32"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "28", "28.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "17", "16.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x8"
.Material "Copper (annealed)"
.XRange "-43.2", "-43"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x8"
.Material "Copper (annealed)"
.XRange "-32", "-31.8"
.YRange "21.5", "23.5"
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
.YRange "22", "23"
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
.XRange "-23", "-22"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "23", "23.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "22", "21.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x9"
.Material "Copper (annealed)"
.XRange "-23.2", "-23"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x9"
.Material "Copper (annealed)"
.XRange "-22", "-21.8"
.YRange "21.5", "23.5"
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
.XRange "-7.75", "-7.25"
.YRange "21.5", "23.5"
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
.XRange "-8.5", "-6.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "23.5", "23.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "21.5", "21.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x10"
.Material "Copper (annealed)"
.XRange "-8.7", "-8.5"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x10"
.Material "Copper (annealed)"
.XRange "-6.5", "-6.3"
.YRange "21.5", "23.5"
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
.XRange "7.25", "7.75"
.YRange "20.5", "24.5"
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
.XRange "5.5", "9.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "24.5", "24.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "20.5", "20.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.XRange "5.3", "5.5"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.XRange "9.5", "9.7"
.YRange "21.5", "23.5"
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
.XRange "22.25", "22.75"
.YRange "19.75", "25.25"
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
.XRange "19.75", "25.25"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "25.25", "25.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "19.75", "19.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x12"
.Material "Copper (annealed)"
.XRange "19.55", "19.75"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x12"
.Material "Copper (annealed)"
.XRange "25.25", "25.45"
.YRange "21.5", "23.5"
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
.XRange "37.25", "37.75"
.YRange "15.75", "29.25"
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
.XRange "30.75", "44.25"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "29.25", "29.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "15.75", "15.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x13"
.Material "Copper (annealed)"
.XRange "30.55", "30.75"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x13"
.Material "Copper (annealed)"
.XRange "44.25", "44.45"
.YRange "21.5", "23.5"
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
.YRange "17.25", "27.75"
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
.XRange "47.25", "57.75"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "27.75", "27.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "17.25", "17.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x14"
.Material "Copper (annealed)"
.XRange "47.05", "47.25"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x14"
.Material "Copper (annealed)"
.XRange "57.75", "57.95"
.YRange "21.5", "23.5"
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
.XRange "67.25", "67.75"
.YRange "22", "23"
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
.XRange "67", "68"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "23", "23.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "22", "21.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.XRange "66.8", "67"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.XRange "68", "68.2"
.YRange "21.5", "23.5"
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
.XRange "82.25", "82.75"
.YRange "21.25", "23.75"
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
.XRange "81.25", "83.75"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "23.75", "23.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "21.25", "21.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x16"
.Material "Copper (annealed)"
.XRange "81.05", "81.25"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x16"
.Material "Copper (annealed)"
.XRange "83.75", "83.95"
.YRange "21.5", "23.5"
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
.XRange "97.25", "97.75"
.YRange "15.5", "29.5"
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
.XRange "90.5", "104.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "29.5", "29.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "15.5", "15.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x17"
.Material "Copper (annealed)"
.XRange "90.3", "90.5"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x17"
.Material "Copper (annealed)"
.XRange "104.5", "104.7"
.YRange "21.5", "23.5"
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
.XRange "112.25", "112.75"
.YRange "15.25", "29.75"
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
.XRange "105.25", "119.75"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "29.75", "29.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "15.25", "15.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x18"
.Material "Copper (annealed)"
.XRange "105.05", "105.25"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x18"
.Material "Copper (annealed)"
.XRange "119.75", "119.95"
.YRange "21.5", "23.5"
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
.XRange "127.25", "127.75"
.YRange "16.5", "28.5"
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
.XRange "121.5", "133.5"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "28.5", "28.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "16.5", "16.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x19"
.Material "Copper (annealed)"
.XRange "121.3", "121.5"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x19"
.Material "Copper (annealed)"
.XRange "133.5", "133.7"
.YRange "21.5", "23.5"
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
.XRange "142.25", "142.75"
.YRange "15.25", "29.75"
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
.XRange "135.25", "149.75"
.YRange "22.25", "22.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "29.75", "29.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell9x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "15.25", "15.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell9x20"
.Material "Copper (annealed)"
.XRange "135.05", "135.25"
.YRange "21.5", "23.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell9x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell9x20"
.Material "Copper (annealed)"
.XRange "149.75", "149.95"
.YRange "21.5", "23.5"
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
.YRange "3", "12"
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
.XRange "-147", "-138"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "12", "12.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "3", "2.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.XRange "-147.2", "-147"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.XRange "-138", "-137.8"
.YRange "6.5", "8.5"
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
.YRange "1.75", "13.25"
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
.XRange "-133.25", "-121.75"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "13.25", "13.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "1.75", "1.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x2"
.Material "Copper (annealed)"
.XRange "-133.45", "-133.25"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x2"
.Material "Copper (annealed)"
.XRange "-121.75", "-121.55"
.YRange "6.5", "8.5"
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
.XRange "-112.75", "-112.25"
.YRange "3", "12"
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
.XRange "-117", "-108"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "12", "12.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "3", "2.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.XRange "-117.2", "-117"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.XRange "-108", "-107.8"
.YRange "6.5", "8.5"
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
.XRange "-97.75", "-97.25"
.YRange "0.25", "14.75"
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
.XRange "-104.75", "-90.25"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "14.75", "14.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "0.25", "0.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x4"
.Material "Copper (annealed)"
.XRange "-104.95", "-104.75"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x4"
.Material "Copper (annealed)"
.XRange "-90.25", "-90.05"
.YRange "6.5", "8.5"
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
.XRange "-82.75", "-82.25"
.YRange "7", "8"
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
.XRange "-83", "-82"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "8", "8.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "7", "6.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.XRange "-83.2", "-83"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.XRange "-82", "-81.8"
.YRange "6.5", "8.5"
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
.XRange "-67.75", "-67.25"
.YRange "4.25", "10.75"
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
.XRange "-70.75", "-64.25"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "10.75", "10.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "4.25", "4.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x6"
.Material "Copper (annealed)"
.XRange "-70.95", "-70.75"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x6"
.Material "Copper (annealed)"
.XRange "-64.25", "-64.05"
.YRange "6.5", "8.5"
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
.XRange "-52.75", "-52.25"
.YRange "1", "14"
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
.XRange "-59", "-46"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "14", "14.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "1", "0.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x7"
.Material "Copper (annealed)"
.XRange "-59.2", "-59"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x7"
.Material "Copper (annealed)"
.XRange "-46", "-45.8"
.YRange "6.5", "8.5"
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
.XRange "-37.75", "-37.25"
.YRange "0.5", "14.5"
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
.XRange "-44.5", "-30.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "14.5", "14.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "0.5", "0.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x8"
.Material "Copper (annealed)"
.XRange "-44.7", "-44.5"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x8"
.Material "Copper (annealed)"
.XRange "-30.5", "-30.3"
.YRange "6.5", "8.5"
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
.XRange "-22.75", "-22.25"
.YRange "7", "8"
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
.XRange "-23", "-22"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "8", "8.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "7", "6.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x9"
.Material "Copper (annealed)"
.XRange "-23.2", "-23"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x9"
.Material "Copper (annealed)"
.XRange "-22", "-21.8"
.YRange "6.5", "8.5"
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
.XRange "-7.75", "-7.25"
.YRange "2", "13"
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
.XRange "-13", "-2"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "13", "13.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "2", "1.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x10"
.Material "Copper (annealed)"
.XRange "-13.2", "-13"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x10"
.Material "Copper (annealed)"
.XRange "-2", "-1.8"
.YRange "6.5", "8.5"
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
.XRange "7.25", "7.75"
.YRange "1", "14"
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
.XRange "1", "14"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "14", "14.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "1", "0.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.XRange "0.8", "1"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.XRange "14", "14.2"
.YRange "6.5", "8.5"
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
.YRange "7", "8"
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
.XRange "22", "23"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "8", "8.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "7", "6.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x12"
.Material "Copper (annealed)"
.XRange "21.8", "22"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x12"
.Material "Copper (annealed)"
.XRange "23", "23.2"
.YRange "6.5", "8.5"
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
.XRange "37.25", "37.75"
.YRange "0.5", "14.5"
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
.XRange "30.5", "44.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "14.5", "14.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "0.5", "0.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.XRange "30.3", "30.5"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.XRange "44.5", "44.7"
.YRange "6.5", "8.5"
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
.XRange "52.25", "52.75"
.YRange "0.5", "14.5"
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
.XRange "45.5", "59.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "14.5", "14.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "0.5", "0.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.XRange "45.3", "45.5"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.XRange "59.5", "59.7"
.YRange "6.5", "8.5"
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
.YRange "7", "8"
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
.XRange "67", "68"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "8", "8.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "7", "6.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x15"
.Material "Copper (annealed)"
.XRange "66.8", "67"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x15"
.Material "Copper (annealed)"
.XRange "68", "68.2"
.YRange "6.5", "8.5"
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
.XRange "82.25", "82.75"
.YRange "5", "10"
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
.XRange "80", "85"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "10", "10.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "5", "4.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x16"
.Material "Copper (annealed)"
.XRange "79.8", "80"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x16"
.Material "Copper (annealed)"
.XRange "85", "85.2"
.YRange "6.5", "8.5"
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
.XRange "97.25", "97.75"
.YRange "4", "11"
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
.XRange "94", "101"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "11", "11.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "4", "3.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x17"
.Material "Copper (annealed)"
.XRange "93.8", "94"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x17"
.Material "Copper (annealed)"
.XRange "101", "101.2"
.YRange "6.5", "8.5"
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
.XRange "112.25", "112.75"
.YRange "0.5", "14.5"
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
.XRange "105.5", "119.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "14.5", "14.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "0.5", "0.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x18"
.Material "Copper (annealed)"
.XRange "105.3", "105.5"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x18"
.Material "Copper (annealed)"
.XRange "119.5", "119.7"
.YRange "6.5", "8.5"
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
.XRange "127.25", "127.75"
.YRange "3.5", "11.5"
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
.XRange "123.5", "131.5"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "11.5", "11.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "3.5", "3.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x19"
.Material "Copper (annealed)"
.XRange "123.3", "123.5"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x19"
.Material "Copper (annealed)"
.XRange "131.5", "131.7"
.YRange "6.5", "8.5"
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
.XRange "142.25", "142.75"
.YRange "0.25", "14.75"
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
.XRange "135.25", "149.75"
.YRange "7.25", "7.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "14.75", "14.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell10x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "0.25", "0.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell10x20"
.Material "Copper (annealed)"
.XRange "135.05", "135.25"
.YRange "6.5", "8.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell10x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell10x20"
.Material "Copper (annealed)"
.XRange "149.75", "149.95"
.YRange "6.5", "8.5"
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
.XRange "-142.75", "-142.25"
.YRange "-14.75", "-0.25"
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
.XRange "-149.75", "-135.25"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-0.25", "-0.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-14.75", "-14.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.XRange "-149.95", "-149.75"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.XRange "-135.25", "-135.05"
.YRange "-8.5", "-6.5"
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
.XRange "-127.75", "-127.25"
.YRange "-12.25", "-2.75"
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
.XRange "-132.25", "-122.75"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-2.75", "-2.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-12.25", "-12.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.XRange "-132.45", "-132.25"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.XRange "-122.75", "-122.55"
.YRange "-8.5", "-6.5"
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
.XRange "-112.75", "-112.25"
.YRange "-13.5", "-1.5"
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
.XRange "-118.5", "-106.5"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-1.5", "-1.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-13.5", "-13.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.XRange "-118.7", "-118.5"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.XRange "-106.5", "-106.3"
.YRange "-8.5", "-6.5"
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
.YRange "-10.75", "-4.25"
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
.XRange "-100.75", "-94.25"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-4.25", "-4.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-10.75", "-10.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.XRange "-100.95", "-100.75"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.XRange "-94.25", "-94.05"
.YRange "-8.5", "-6.5"
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
.XRange "-82.75", "-82.25"
.YRange "-9.5", "-5.5"
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
.XRange "-84.5", "-80.5"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-5.5", "-5.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-9.5", "-9.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x5"
.Material "Copper (annealed)"
.XRange "-84.7", "-84.5"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x5"
.Material "Copper (annealed)"
.XRange "-80.5", "-80.3"
.YRange "-8.5", "-6.5"
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
.XRange "-67.75", "-67.25"
.YRange "-9.75", "-5.25"
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
.XRange "-69.75", "-65.25"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-5.25", "-5.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-9.75", "-9.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.XRange "-69.95", "-69.75"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.XRange "-65.25", "-65.05"
.YRange "-8.5", "-6.5"
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
.XRange "-52.75", "-52.25"
.YRange "-13.5", "-1.5"
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
.XRange "-58.5", "-46.5"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-1.5", "-1.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-13.5", "-13.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.XRange "-58.7", "-58.5"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.XRange "-46.5", "-46.3"
.YRange "-8.5", "-6.5"
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
.XRange "-37.75", "-37.25"
.YRange "-13.25", "-1.75"
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
.XRange "-43.25", "-31.75"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-1.75", "-1.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-13.25", "-13.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.XRange "-43.45", "-43.25"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.XRange "-31.75", "-31.55"
.YRange "-8.5", "-6.5"
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
.XRange "-22.75", "-22.25"
.YRange "-11.5", "-3.5"
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
.XRange "-26.5", "-18.5"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-3.5", "-3.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-11.5", "-11.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.XRange "-26.7", "-26.5"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.XRange "-18.5", "-18.3"
.YRange "-8.5", "-6.5"
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
.XRange "-7.75", "-7.25"
.YRange "-14", "-1"
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
.XRange "-14", "-1"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-1", "-0.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-14", "-14.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.XRange "-14.2", "-14"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.XRange "-1", "-0.8"
.YRange "-8.5", "-6.5"
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
.XRange "7.25", "7.75"
.YRange "-14.75", "-0.25"
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
.XRange "0.25", "14.75"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-0.25", "-0.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-14.75", "-14.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.XRange "0.05", "0.25"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.XRange "14.75", "14.95"
.YRange "-8.5", "-6.5"
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
.YRange "-11", "-4"
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
.XRange "19", "26"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-4", "-3.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-11", "-11.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.XRange "18.8", "19"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.XRange "26", "26.2"
.YRange "-8.5", "-6.5"
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
.YRange "-13.75", "-1.25"
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
.XRange "31.25", "43.75"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-1.25", "-1.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-13.75", "-13.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.XRange "31.05", "31.25"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.XRange "43.75", "43.95"
.YRange "-8.5", "-6.5"
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
.XRange "52.25", "52.75"
.YRange "-14", "-1"
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
.XRange "46", "59"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-1", "-0.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-14", "-14.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.XRange "45.8", "46"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.XRange "59", "59.2"
.YRange "-8.5", "-6.5"
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
.YRange "-10.25", "-4.75"
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
.XRange "64.75", "70.25"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-4.75", "-4.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-10.25", "-10.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x15"
.Material "Copper (annealed)"
.XRange "64.55", "64.75"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x15"
.Material "Copper (annealed)"
.XRange "70.25", "70.45"
.YRange "-8.5", "-6.5"
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
.YRange "-10.75", "-4.25"
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
.XRange "79.25", "85.75"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-4.25", "-4.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-10.75", "-10.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x16"
.Material "Copper (annealed)"
.XRange "79.05", "79.25"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x16"
.Material "Copper (annealed)"
.XRange "85.75", "85.95"
.YRange "-8.5", "-6.5"
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
.XRange "97.25", "97.75"
.YRange "-14.75", "-0.25"
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
.XRange "90.25", "104.75"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-0.25", "-0.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-14.75", "-14.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x17"
.Material "Copper (annealed)"
.XRange "90.05", "90.25"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x17"
.Material "Copper (annealed)"
.XRange "104.75", "104.95"
.YRange "-8.5", "-6.5"
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
.XRange "112.25", "112.75"
.YRange "-14.75", "-0.25"
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
.XRange "105.25", "119.75"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-0.25", "-0.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-14.75", "-14.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x18"
.Material "Copper (annealed)"
.XRange "105.05", "105.25"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x18"
.Material "Copper (annealed)"
.XRange "119.75", "119.95"
.YRange "-8.5", "-6.5"
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
.YRange "-13", "-2"
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
.XRange "122", "133"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-2", "-1.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-13", "-13.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x19"
.Material "Copper (annealed)"
.XRange "121.8", "122"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x19"
.Material "Copper (annealed)"
.XRange "133", "133.2"
.YRange "-8.5", "-6.5"
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
.XRange "142.25", "142.75"
.YRange "-10.25", "-4.75"
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
.XRange "139.75", "145.25"
.YRange "-7.75", "-7.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-4.75", "-4.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell11x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-10.25", "-10.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell11x20"
.Material "Copper (annealed)"
.XRange "139.55", "139.75"
.YRange "-8.5", "-6.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell11x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell11x20"
.Material "Copper (annealed)"
.XRange "145.25", "145.45"
.YRange "-8.5", "-6.5"
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
.XRange "-142.75", "-142.25"
.YRange "-25.75", "-19.25"
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
.XRange "-145.75", "-139.25"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-19.25", "-19.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-25.75", "-25.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.XRange "-145.95", "-145.75"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.XRange "-139.25", "-139.05"
.YRange "-23.5", "-21.5"
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
.XRange "-127.75", "-127.25"
.YRange "-29.75", "-15.25"
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
.XRange "-134.75", "-120.25"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-15.25", "-15.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-29.75", "-29.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x2"
.Material "Copper (annealed)"
.XRange "-134.95", "-134.75"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x2"
.Material "Copper (annealed)"
.XRange "-120.25", "-120.05"
.YRange "-23.5", "-21.5"
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
.YRange "-26.25", "-18.75"
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
.XRange "-116.25", "-108.75"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-18.75", "-18.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-26.25", "-26.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.XRange "-116.45", "-116.25"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.XRange "-108.75", "-108.55"
.YRange "-23.5", "-21.5"
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
.XRange "-97.75", "-97.25"
.YRange "-29.75", "-15.25"
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
.XRange "-104.75", "-90.25"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-15.25", "-15.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-29.75", "-29.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.XRange "-104.95", "-104.75"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.XRange "-90.25", "-90.05"
.YRange "-23.5", "-21.5"
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
.YRange "-27", "-18"
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
.XRange "-87", "-78"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-18", "-17.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-27", "-27.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.XRange "-87.2", "-87"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.XRange "-78", "-77.8"
.YRange "-23.5", "-21.5"
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
.XRange "-67.75", "-67.25"
.YRange "-29.75", "-15.25"
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
.XRange "-74.75", "-60.25"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-15.25", "-15.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-29.75", "-29.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x6"
.Material "Copper (annealed)"
.XRange "-74.95", "-74.75"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x6"
.Material "Copper (annealed)"
.XRange "-60.25", "-60.05"
.YRange "-23.5", "-21.5"
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
.XRange "-52.75", "-52.25"
.YRange "-23", "-22"
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
.XRange "-53", "-52"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-22", "-21.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-23", "-23.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x7"
.Material "Copper (annealed)"
.XRange "-53.2", "-53"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x7"
.Material "Copper (annealed)"
.XRange "-52", "-51.8"
.YRange "-23.5", "-21.5"
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
.YRange "-28.75", "-16.25"
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
.XRange "-43.75", "-31.25"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-16.25", "-16.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-28.75", "-28.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.XRange "-43.95", "-43.75"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.XRange "-31.25", "-31.05"
.YRange "-23.5", "-21.5"
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
.YRange "-24.25", "-20.75"
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
.XRange "-24.25", "-20.75"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-20.75", "-20.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-24.25", "-24.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.XRange "-24.45", "-24.25"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.XRange "-20.75", "-20.55"
.YRange "-23.5", "-21.5"
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
.YRange "-25.25", "-19.75"
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
.XRange "-10.25", "-4.75"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-19.75", "-19.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-25.25", "-25.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.XRange "-10.45", "-10.25"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.XRange "-4.75", "-4.55"
.YRange "-23.5", "-21.5"
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
.YRange "-25.75", "-19.25"
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
.XRange "4.25", "10.75"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-19.25", "-19.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-25.75", "-25.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.XRange "4.05", "4.25"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.XRange "10.75", "10.95"
.YRange "-23.5", "-21.5"
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
.XRange "22.25", "22.75"
.YRange "-26.25", "-18.75"
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
.XRange "18.75", "26.25"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-18.75", "-18.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-26.25", "-26.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.XRange "18.55", "18.75"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.XRange "26.25", "26.45"
.YRange "-23.5", "-21.5"
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
.XRange "37.25", "37.75"
.YRange "-29.75", "-15.25"
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
.XRange "30.25", "44.75"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-15.25", "-15.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-29.75", "-29.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.XRange "30.05", "30.25"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.XRange "44.75", "44.95"
.YRange "-23.5", "-21.5"
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
.XRange "52.25", "52.75"
.YRange "-24.75", "-20.25"
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
.XRange "50.25", "54.75"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-20.25", "-20.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-24.75", "-24.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.XRange "50.05", "50.25"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.XRange "54.75", "54.95"
.YRange "-23.5", "-21.5"
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
.YRange "-25.5", "-19.5"
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
.XRange "64.5", "70.5"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-19.5", "-19.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-25.5", "-25.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x15"
.Material "Copper (annealed)"
.XRange "64.3", "64.5"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x15"
.Material "Copper (annealed)"
.XRange "70.5", "70.7"
.YRange "-23.5", "-21.5"
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
.YRange "-25.75", "-19.25"
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
.XRange "79.25", "85.75"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-19.25", "-19.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-25.75", "-25.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x16"
.Material "Copper (annealed)"
.XRange "79.05", "79.25"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x16"
.Material "Copper (annealed)"
.XRange "85.75", "85.95"
.YRange "-23.5", "-21.5"
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
.YRange "-25.5", "-19.5"
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
.XRange "94.5", "100.5"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-19.5", "-19.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-25.5", "-25.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x17"
.Material "Copper (annealed)"
.XRange "94.3", "94.5"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x17"
.Material "Copper (annealed)"
.XRange "100.5", "100.7"
.YRange "-23.5", "-21.5"
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
.YRange "-27.25", "-17.75"
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
.XRange "107.75", "117.25"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-17.75", "-17.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-27.25", "-27.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x18"
.Material "Copper (annealed)"
.XRange "107.55", "107.75"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x18"
.Material "Copper (annealed)"
.XRange "117.25", "117.45"
.YRange "-23.5", "-21.5"
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
.XRange "127.25", "127.75"
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
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-22", "-21.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-23", "-23.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x19"
.Material "Copper (annealed)"
.XRange "126.8", "127"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x19"
.Material "Copper (annealed)"
.XRange "128", "128.2"
.YRange "-23.5", "-21.5"
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
.XRange "142.25", "142.75"
.YRange "-25", "-20"
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
.XRange "140", "145"
.YRange "-22.75", "-22.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-20", "-19.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell12x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-25", "-25.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell12x20"
.Material "Copper (annealed)"
.XRange "139.8", "140"
.YRange "-23.5", "-21.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell12x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell12x20"
.Material "Copper (annealed)"
.XRange "145", "145.2"
.YRange "-23.5", "-21.5"
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
.XRange "-142.75", "-142.25"
.YRange "-44.75", "-30.25"
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
.XRange "-149.75", "-135.25"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-30.25", "-30.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-44.75", "-44.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.XRange "-149.95", "-149.75"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.XRange "-135.25", "-135.05"
.YRange "-38.5", "-36.5"
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
.YRange "-40.5", "-34.5"
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
.XRange "-130.5", "-124.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-34.5", "-34.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-40.5", "-40.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x2"
.Material "Copper (annealed)"
.XRange "-130.7", "-130.5"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x2"
.Material "Copper (annealed)"
.XRange "-124.5", "-124.3"
.YRange "-38.5", "-36.5"
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
.XRange "-112.75", "-112.25"
.YRange "-44.75", "-30.25"
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
.XRange "-119.75", "-105.25"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-30.25", "-30.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-44.75", "-44.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x3"
.Material "Copper (annealed)"
.XRange "-119.95", "-119.75"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x3"
.Material "Copper (annealed)"
.XRange "-105.25", "-105.05"
.YRange "-38.5", "-36.5"
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
.XRange "-97.75", "-97.25"
.YRange "-43.75", "-31.25"
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
.XRange "-103.75", "-91.25"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-31.25", "-31.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-43.75", "-43.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x4"
.Material "Copper (annealed)"
.XRange "-103.95", "-103.75"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x4"
.Material "Copper (annealed)"
.XRange "-91.25", "-91.05"
.YRange "-38.5", "-36.5"
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
.XRange "-82.75", "-82.25"
.YRange "-44.75", "-30.25"
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
.XRange "-89.75", "-75.25"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-30.25", "-30.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-44.75", "-44.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x5"
.Material "Copper (annealed)"
.XRange "-89.95", "-89.75"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x5"
.Material "Copper (annealed)"
.XRange "-75.25", "-75.05"
.YRange "-38.5", "-36.5"
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
.XRange "-67.75", "-67.25"
.YRange "-44.75", "-30.25"
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
.XRange "-74.75", "-60.25"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-30.25", "-30.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-44.75", "-44.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.XRange "-74.95", "-74.75"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.XRange "-60.25", "-60.05"
.YRange "-38.5", "-36.5"
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
.YRange "-41.25", "-33.75"
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
.XRange "-56.25", "-48.75"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-33.75", "-33.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-41.25", "-41.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.XRange "-56.45", "-56.25"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.XRange "-48.75", "-48.55"
.YRange "-38.5", "-36.5"
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
.XRange "-37.75", "-37.25"
.YRange "-40", "-35"
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
.XRange "-40", "-35"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-35", "-34.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-40", "-40.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x8"
.Material "Copper (annealed)"
.XRange "-40.2", "-40"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x8"
.Material "Copper (annealed)"
.XRange "-35", "-34.8"
.YRange "-38.5", "-36.5"
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
.XRange "-22.75", "-22.25"
.YRange "-42.75", "-32.25"
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
.XRange "-27.75", "-17.25"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-32.25", "-32.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-42.75", "-42.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x9"
.Material "Copper (annealed)"
.XRange "-27.95", "-27.75"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x9"
.Material "Copper (annealed)"
.XRange "-17.25", "-17.05"
.YRange "-38.5", "-36.5"
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
.XRange "-7.75", "-7.25"
.YRange "-44", "-31"
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
.XRange "-14", "-1"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-31", "-30.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-44", "-44.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x10"
.Material "Copper (annealed)"
.XRange "-14.2", "-14"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x10"
.Material "Copper (annealed)"
.XRange "-1", "-0.8"
.YRange "-38.5", "-36.5"
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
.XRange "7.25", "7.75"
.YRange "-44.5", "-30.5"
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
.XRange "0.5", "14.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-30.5", "-30.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-44.5", "-44.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.XRange "0.3", "0.5"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.XRange "14.5", "14.7"
.YRange "-38.5", "-36.5"
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
.YRange "-44", "-31"
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
.XRange "16", "29"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-31", "-30.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-44", "-44.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.XRange "15.8", "16"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.XRange "29", "29.2"
.YRange "-38.5", "-36.5"
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
.XRange "37.25", "37.75"
.YRange "-38.5", "-36.5"
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
.XRange "36.5", "38.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-36.5", "-36.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-38.5", "-38.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x13"
.Material "Copper (annealed)"
.XRange "36.3", "36.5"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x13"
.Material "Copper (annealed)"
.XRange "38.5", "38.7"
.YRange "-38.5", "-36.5"
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
.XRange "52.25", "52.75"
.YRange "-38", "-37"
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
.XRange "52", "53"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-37", "-36.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-38", "-38.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x14"
.Material "Copper (annealed)"
.XRange "51.8", "52"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x14"
.Material "Copper (annealed)"
.XRange "53", "53.2"
.YRange "-38.5", "-36.5"
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
.XRange "67.25", "67.75"
.YRange "-44.5", "-30.5"
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
.XRange "60.5", "74.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-30.5", "-30.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-44.5", "-44.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.XRange "60.3", "60.5"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.XRange "74.5", "74.7"
.YRange "-38.5", "-36.5"
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
.YRange "-43", "-32"
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
.XRange "77", "88"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-32", "-31.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-43", "-43.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x16"
.Material "Copper (annealed)"
.XRange "76.8", "77"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x16"
.Material "Copper (annealed)"
.XRange "88", "88.2"
.YRange "-38.5", "-36.5"
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
.YRange "-42.25", "-32.75"
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
.XRange "92.75", "102.25"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-32.75", "-32.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-42.25", "-42.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x17"
.Material "Copper (annealed)"
.XRange "92.55", "92.75"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x17"
.Material "Copper (annealed)"
.XRange "102.25", "102.45"
.YRange "-38.5", "-36.5"
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
.XRange "112.25", "112.75"
.YRange "-40.25", "-34.75"
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
.XRange "109.75", "115.25"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-34.75", "-34.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-40.25", "-40.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x18"
.Material "Copper (annealed)"
.XRange "109.55", "109.75"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x18"
.Material "Copper (annealed)"
.XRange "115.25", "115.45"
.YRange "-38.5", "-36.5"
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
.YRange "-41.75", "-33.25"
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
.XRange "123.25", "131.75"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-33.25", "-33.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-41.75", "-41.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x19"
.Material "Copper (annealed)"
.XRange "123.05", "123.25"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x19"
.Material "Copper (annealed)"
.XRange "131.75", "131.95"
.YRange "-38.5", "-36.5"
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
.YRange "-40.5", "-34.5"
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
.XRange "139.5", "145.5"
.YRange "-37.75", "-37.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-34.5", "-34.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell13x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-40.5", "-40.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell13x20"
.Material "Copper (annealed)"
.XRange "139.3", "139.5"
.YRange "-38.5", "-36.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell13x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell13x20"
.Material "Copper (annealed)"
.XRange "145.5", "145.7"
.YRange "-38.5", "-36.5"
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
.XRange "-142.75", "-142.25"
.YRange "-55", "-50"
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
.XRange "-145", "-140"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-50", "-49.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-55", "-55.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.XRange "-145.2", "-145"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.XRange "-140", "-139.8"
.YRange "-53.5", "-51.5"
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
.XRange "-127.75", "-127.25"
.YRange "-53", "-52"
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
.XRange "-128", "-127"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-52", "-51.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-53", "-53.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x2"
.Material "Copper (annealed)"
.XRange "-128.2", "-128"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x2"
.Material "Copper (annealed)"
.XRange "-127", "-126.8"
.YRange "-53.5", "-51.5"
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
.XRange "-112.75", "-112.25"
.YRange "-54.75", "-50.25"
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
.XRange "-114.75", "-110.25"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-50.25", "-50.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-54.75", "-54.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x3"
.Material "Copper (annealed)"
.XRange "-114.95", "-114.75"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x3"
.Material "Copper (annealed)"
.XRange "-110.25", "-110.05"
.YRange "-53.5", "-51.5"
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
.XRange "-97.75", "-97.25"
.YRange "-59.75", "-45.25"
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
.XRange "-104.75", "-90.25"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-45.25", "-45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-59.75", "-59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x4"
.Material "Copper (annealed)"
.XRange "-104.95", "-104.75"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x4"
.Material "Copper (annealed)"
.XRange "-90.25", "-90.05"
.YRange "-53.5", "-51.5"
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
.XRange "-82.75", "-82.25"
.YRange "-59.75", "-45.25"
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
.XRange "-89.75", "-75.25"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-45.25", "-45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-59.75", "-59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.XRange "-89.95", "-89.75"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.XRange "-75.25", "-75.05"
.YRange "-53.5", "-51.5"
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
.XRange "-67.75", "-67.25"
.YRange "-57.25", "-47.75"
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
.XRange "-72.25", "-62.75"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-47.75", "-47.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-57.25", "-57.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x6"
.Material "Copper (annealed)"
.XRange "-72.45", "-72.25"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x6"
.Material "Copper (annealed)"
.XRange "-62.75", "-62.55"
.YRange "-53.5", "-51.5"
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
.XRange "-52.75", "-52.25"
.YRange "-59.75", "-45.25"
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
.XRange "-59.75", "-45.25"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-45.25", "-45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-59.75", "-59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x7"
.Material "Copper (annealed)"
.XRange "-59.95", "-59.75"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x7"
.Material "Copper (annealed)"
.XRange "-45.25", "-45.05"
.YRange "-53.5", "-51.5"
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
.YRange "-53.75", "-51.25"
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
.XRange "-38.75", "-36.25"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-51.25", "-51.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-53.75", "-53.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x8"
.Material "Copper (annealed)"
.XRange "-38.95", "-38.75"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x8"
.Material "Copper (annealed)"
.XRange "-36.25", "-36.05"
.YRange "-53.5", "-51.5"
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
.XRange "-22.75", "-22.25"
.YRange "-59.75", "-45.25"
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
.XRange "-29.75", "-15.25"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-45.25", "-45.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-59.75", "-59.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x9"
.Material "Copper (annealed)"
.XRange "-29.95", "-29.75"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x9"
.Material "Copper (annealed)"
.XRange "-15.25", "-15.05"
.YRange "-53.5", "-51.5"
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
.YRange "-59.5", "-45.5"
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
.XRange "-14.5", "-0.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-45.5", "-45.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-59.5", "-59.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.XRange "-14.7", "-14.5"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.XRange "-0.5", "-0.3"
.YRange "-53.5", "-51.5"
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
.XRange "7.25", "7.75"
.YRange "-57.75", "-47.25"
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
.XRange "2.25", "12.75"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-47.25", "-47.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-57.75", "-57.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.XRange "2.05", "2.25"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.XRange "12.75", "12.95"
.YRange "-53.5", "-51.5"
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
.YRange "-56.5", "-48.5"
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
.XRange "18.5", "26.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-48.5", "-48.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-56.5", "-56.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.XRange "18.3", "18.5"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.XRange "26.5", "26.7"
.YRange "-53.5", "-51.5"
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
.YRange "-57.25", "-47.75"
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
.XRange "32.75", "42.25"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-47.75", "-47.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-57.25", "-57.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x13"
.Material "Copper (annealed)"
.XRange "32.55", "32.75"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x13"
.Material "Copper (annealed)"
.XRange "42.25", "42.45"
.YRange "-53.5", "-51.5"
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
.XRange "52.25", "52.75"
.YRange "-59.5", "-45.5"
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
.XRange "45.5", "59.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-45.5", "-45.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-59.5", "-59.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x14"
.Material "Copper (annealed)"
.XRange "45.3", "45.5"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x14"
.Material "Copper (annealed)"
.XRange "59.5", "59.7"
.YRange "-53.5", "-51.5"
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
.YRange "-55.75", "-49.25"
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
.XRange "64.25", "70.75"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-49.25", "-49.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-55.75", "-55.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.XRange "64.05", "64.25"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.XRange "70.75", "70.95"
.YRange "-53.5", "-51.5"
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
.XRange "82.25", "82.75"
.YRange "-59.5", "-45.5"
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
.XRange "75.5", "89.5"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-45.5", "-45.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-59.5", "-59.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x16"
.Material "Copper (annealed)"
.XRange "75.3", "75.5"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x16"
.Material "Copper (annealed)"
.XRange "89.5", "89.7"
.YRange "-53.5", "-51.5"
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
.YRange "-57", "-48"
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
.XRange "93", "102"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-48", "-47.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-57", "-57.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x17"
.Material "Copper (annealed)"
.XRange "92.8", "93"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x17"
.Material "Copper (annealed)"
.XRange "102", "102.2"
.YRange "-53.5", "-51.5"
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
.YRange "-56.75", "-48.25"
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
.XRange "108.25", "116.75"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-48.25", "-48.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-56.75", "-56.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x18"
.Material "Copper (annealed)"
.XRange "108.05", "108.25"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x18"
.Material "Copper (annealed)"
.XRange "116.75", "116.95"
.YRange "-53.5", "-51.5"
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
.XRange "127.25", "127.75"
.YRange "-56.75", "-48.25"
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
.XRange "123.25", "131.75"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-48.25", "-48.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-56.75", "-56.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x19"
.Material "Copper (annealed)"
.XRange "123.05", "123.25"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x19"
.Material "Copper (annealed)"
.XRange "131.75", "131.95"
.YRange "-53.5", "-51.5"
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
.XRange "142.25", "142.75"
.YRange "-58", "-47"
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
.XRange "137", "148"
.YRange "-52.75", "-52.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-47", "-46.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell14x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-58", "-58.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell14x20"
.Material "Copper (annealed)"
.XRange "136.8", "137"
.YRange "-53.5", "-51.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell14x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell14x20"
.Material "Copper (annealed)"
.XRange "148", "148.2"
.YRange "-53.5", "-51.5"
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
.YRange "-72.75", "-62.25"
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
.XRange "-147.75", "-137.25"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-62.25", "-62.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-72.75", "-72.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.XRange "-147.95", "-147.75"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.XRange "-137.25", "-137.05"
.YRange "-68.5", "-66.5"
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
.YRange "-72.75", "-62.25"
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
.XRange "-132.75", "-122.25"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-62.25", "-62.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-72.75", "-72.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x2"
.Material "Copper (annealed)"
.XRange "-132.95", "-132.75"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x2"
.Material "Copper (annealed)"
.XRange "-122.25", "-122.05"
.YRange "-68.5", "-66.5"
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
.XRange "-112.75", "-112.25"
.YRange "-73.25", "-61.75"
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
.XRange "-118.25", "-106.75"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-61.75", "-61.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-73.25", "-73.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.XRange "-118.45", "-118.25"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.XRange "-106.75", "-106.55"
.YRange "-68.5", "-66.5"
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
.XRange "-97.75", "-97.25"
.YRange "-68", "-67"
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
.XRange "-98", "-97"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-67", "-66.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-68", "-68.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x4"
.Material "Copper (annealed)"
.XRange "-98.2", "-98"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x4"
.Material "Copper (annealed)"
.XRange "-97", "-96.8"
.YRange "-68.5", "-66.5"
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
.XRange "-82.75", "-82.25"
.YRange "-74.5", "-60.5"
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
.XRange "-89.5", "-75.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-60.5", "-60.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-74.5", "-74.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.XRange "-89.7", "-89.5"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.XRange "-75.5", "-75.3"
.YRange "-68.5", "-66.5"
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
.XRange "-67.75", "-67.25"
.YRange "-74.75", "-60.25"
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
.XRange "-74.75", "-60.25"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-60.25", "-60.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-74.75", "-74.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.XRange "-74.95", "-74.75"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.XRange "-60.25", "-60.05"
.YRange "-68.5", "-66.5"
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
.XRange "-52.75", "-52.25"
.YRange "-74.25", "-60.75"
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
.XRange "-59.25", "-45.75"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-60.75", "-60.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-74.25", "-74.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.XRange "-59.45", "-59.25"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.XRange "-45.75", "-45.55"
.YRange "-68.5", "-66.5"
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
.XRange "-37.75", "-37.25"
.YRange "-74.75", "-60.25"
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
.XRange "-44.75", "-30.25"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-60.25", "-60.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-74.75", "-74.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.XRange "-44.95", "-44.75"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.XRange "-30.25", "-30.05"
.YRange "-68.5", "-66.5"
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
.XRange "-22.75", "-22.25"
.YRange "-69.75", "-65.25"
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
.XRange "-24.75", "-20.25"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-65.25", "-65.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-69.75", "-69.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.XRange "-24.95", "-24.75"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.XRange "-20.25", "-20.05"
.YRange "-68.5", "-66.5"
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
.XRange "-7.75", "-7.25"
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
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-67", "-66.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-68", "-68.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.XRange "-8.2", "-8"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.XRange "-7", "-6.8"
.YRange "-68.5", "-66.5"
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
.XRange "7.25", "7.75"
.YRange "-69.75", "-65.25"
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
.XRange "5.25", "9.75"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-65.25", "-65.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-69.75", "-69.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x11"
.Material "Copper (annealed)"
.XRange "5.05", "5.25"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x11"
.Material "Copper (annealed)"
.XRange "9.75", "9.95"
.YRange "-68.5", "-66.5"
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
.YRange "-73.75", "-61.25"
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
.XRange "16.25", "28.75"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-61.25", "-61.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-73.75", "-73.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x12"
.Material "Copper (annealed)"
.XRange "16.05", "16.25"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x12"
.Material "Copper (annealed)"
.XRange "28.75", "28.95"
.YRange "-68.5", "-66.5"
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
.YRange "-72.75", "-62.25"
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
.XRange "32.25", "42.75"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-62.25", "-62.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-72.75", "-72.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x13"
.Material "Copper (annealed)"
.XRange "32.05", "32.25"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x13"
.Material "Copper (annealed)"
.XRange "42.75", "42.95"
.YRange "-68.5", "-66.5"
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
.XRange "52.25", "52.75"
.YRange "-74.75", "-60.25"
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
.XRange "45.25", "59.75"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-60.25", "-60.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-74.75", "-74.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.XRange "45.05", "45.25"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.XRange "59.75", "59.95"
.YRange "-68.5", "-66.5"
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
.YRange "-69", "-66"
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
.XRange "66", "69"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-66", "-65.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-69", "-69.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.XRange "65.8", "66"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.XRange "69", "69.2"
.YRange "-68.5", "-66.5"
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
.YRange "-71.5", "-63.5"
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
.XRange "78.5", "86.5"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-63.5", "-63.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-71.5", "-71.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x16"
.Material "Copper (annealed)"
.XRange "78.3", "78.5"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x16"
.Material "Copper (annealed)"
.XRange "86.5", "86.7"
.YRange "-68.5", "-66.5"
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
.YRange "-71.25", "-63.75"
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
.XRange "93.75", "101.25"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-63.75", "-63.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-71.25", "-71.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x17"
.Material "Copper (annealed)"
.XRange "93.55", "93.75"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x17"
.Material "Copper (annealed)"
.XRange "101.25", "101.45"
.YRange "-68.5", "-66.5"
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
.XRange "112.25", "112.75"
.YRange "-73", "-62"
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
.XRange "107", "118"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-62", "-61.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-73", "-73.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x18"
.Material "Copper (annealed)"
.XRange "106.8", "107"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x18"
.Material "Copper (annealed)"
.XRange "118", "118.2"
.YRange "-68.5", "-66.5"
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
.YRange "-72.25", "-62.75"
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
.XRange "122.75", "132.25"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-62.75", "-62.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-72.25", "-72.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x19"
.Material "Copper (annealed)"
.XRange "122.55", "122.75"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x19"
.Material "Copper (annealed)"
.XRange "132.25", "132.45"
.YRange "-68.5", "-66.5"
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
.YRange "-73", "-62"
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
.XRange "137", "148"
.YRange "-67.75", "-67.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-62", "-61.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell15x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-73", "-73.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell15x20"
.Material "Copper (annealed)"
.XRange "136.8", "137"
.YRange "-68.5", "-66.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell15x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell15x20"
.Material "Copper (annealed)"
.XRange "148", "148.2"
.YRange "-68.5", "-66.5"
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
.XRange "-142.75", "-142.25"
.YRange "-83", "-82"
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
.XRange "-143", "-142"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-82", "-81.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-83", "-83.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x1"
.Material "Copper (annealed)"
.XRange "-143.2", "-143"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x1"
.Material "Copper (annealed)"
.XRange "-142", "-141.8"
.YRange "-83.5", "-81.5"
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
.YRange "-85.75", "-79.25"
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
.XRange "-130.75", "-124.25"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-79.25", "-79.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-85.75", "-85.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x2"
.Material "Copper (annealed)"
.XRange "-130.95", "-130.75"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x2"
.Material "Copper (annealed)"
.XRange "-124.25", "-124.05"
.YRange "-83.5", "-81.5"
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
.XRange "-112.75", "-112.25"
.YRange "-83", "-82"
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
.XRange "-113", "-112"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-82", "-81.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-83", "-83.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x3"
.Material "Copper (annealed)"
.XRange "-113.2", "-113"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x3"
.Material "Copper (annealed)"
.XRange "-112", "-111.8"
.YRange "-83.5", "-81.5"
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
.YRange "-87.75", "-77.25"
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
.XRange "-102.75", "-92.25"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-77.25", "-77.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-87.75", "-87.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x4"
.Material "Copper (annealed)"
.XRange "-102.95", "-102.75"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x4"
.Material "Copper (annealed)"
.XRange "-92.25", "-92.05"
.YRange "-83.5", "-81.5"
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
.YRange "-86.5", "-78.5"
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
.XRange "-86.5", "-78.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-78.5", "-78.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-86.5", "-86.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x5"
.Material "Copper (annealed)"
.XRange "-86.7", "-86.5"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x5"
.Material "Copper (annealed)"
.XRange "-78.5", "-78.3"
.YRange "-83.5", "-81.5"
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
.YRange "-85.25", "-79.75"
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
.XRange "-70.25", "-64.75"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-79.75", "-79.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-85.25", "-85.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x6"
.Material "Copper (annealed)"
.XRange "-70.45", "-70.25"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x6"
.Material "Copper (annealed)"
.XRange "-64.75", "-64.55"
.YRange "-83.5", "-81.5"
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
.YRange "-88.5", "-76.5"
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
.XRange "-58.5", "-46.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-76.5", "-76.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-88.5", "-88.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x7"
.Material "Copper (annealed)"
.XRange "-58.7", "-58.5"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x7"
.Material "Copper (annealed)"
.XRange "-46.5", "-46.3"
.YRange "-83.5", "-81.5"
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
.XRange "-37.75", "-37.25"
.YRange "-89.75", "-75.25"
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
.XRange "-44.75", "-30.25"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-75.25", "-75.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-89.75", "-89.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x8"
.Material "Copper (annealed)"
.XRange "-44.95", "-44.75"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x8"
.Material "Copper (annealed)"
.XRange "-30.25", "-30.05"
.YRange "-83.5", "-81.5"
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
.XRange "-22.75", "-22.25"
.YRange "-89.75", "-75.25"
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
.XRange "-29.75", "-15.25"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-75.25", "-75.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-89.75", "-89.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x9"
.Material "Copper (annealed)"
.XRange "-29.95", "-29.75"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x9"
.Material "Copper (annealed)"
.XRange "-15.25", "-15.05"
.YRange "-83.5", "-81.5"
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
.XRange "-7.75", "-7.25"
.YRange "-89.75", "-75.25"
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
.XRange "-14.75", "-0.25"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-75.25", "-75.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-89.75", "-89.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x10"
.Material "Copper (annealed)"
.XRange "-14.95", "-14.75"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x10"
.Material "Copper (annealed)"
.XRange "-0.25", "-0.05"
.YRange "-83.5", "-81.5"
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
.XRange "7.25", "7.75"
.YRange "-84.5", "-80.5"
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
.XRange "5.5", "9.5"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-80.5", "-80.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-84.5", "-84.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x11"
.Material "Copper (annealed)"
.XRange "5.3", "5.5"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x11"
.Material "Copper (annealed)"
.XRange "9.5", "9.7"
.YRange "-83.5", "-81.5"
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
.XRange "22.25", "22.75"
.YRange "-83", "-82"
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
.XRange "22", "23"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-82", "-81.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-83", "-83.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x12"
.Material "Copper (annealed)"
.XRange "21.8", "22"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x12"
.Material "Copper (annealed)"
.XRange "23", "23.2"
.YRange "-83.5", "-81.5"
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
.XRange "37.25", "37.75"
.YRange "-87", "-78"
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
.XRange "33", "42"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-78", "-77.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-87", "-87.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x13"
.Material "Copper (annealed)"
.XRange "32.8", "33"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x13"
.Material "Copper (annealed)"
.XRange "42", "42.2"
.YRange "-83.5", "-81.5"
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
.YRange "-89", "-76"
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
.XRange "46", "59"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-76", "-75.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-89", "-89.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x14"
.Material "Copper (annealed)"
.XRange "45.8", "46"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x14"
.Material "Copper (annealed)"
.XRange "59", "59.2"
.YRange "-83.5", "-81.5"
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
.YRange "-86.75", "-78.25"
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
.XRange "63.25", "71.75"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-78.25", "-78.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-86.75", "-86.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x15"
.Material "Copper (annealed)"
.XRange "63.05", "63.25"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x15"
.Material "Copper (annealed)"
.XRange "71.75", "71.95"
.YRange "-83.5", "-81.5"
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
.XRange "82.25", "82.75"
.YRange "-84.25", "-80.75"
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
.XRange "80.75", "84.25"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-80.75", "-80.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-84.25", "-84.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x16"
.Material "Copper (annealed)"
.XRange "80.55", "80.75"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x16"
.Material "Copper (annealed)"
.XRange "84.25", "84.45"
.YRange "-83.5", "-81.5"
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
.YRange "-87.75", "-77.25"
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
.XRange "92.25", "102.75"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-77.25", "-77.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-87.75", "-87.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x17"
.Material "Copper (annealed)"
.XRange "92.05", "92.25"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x17"
.Material "Copper (annealed)"
.XRange "102.75", "102.95"
.YRange "-83.5", "-81.5"
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
.XRange "112.25", "112.75"
.YRange "-89", "-76"
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
.XRange "106", "119"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-76", "-75.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-89", "-89.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x18"
.Material "Copper (annealed)"
.XRange "105.8", "106"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x18"
.Material "Copper (annealed)"
.XRange "119", "119.2"
.YRange "-83.5", "-81.5"
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
.XRange "127.25", "127.75"
.YRange "-83", "-82"
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
.XRange "127", "128"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-82", "-81.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-83", "-83.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x19"
.Material "Copper (annealed)"
.XRange "126.8", "127"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x19"
.Material "Copper (annealed)"
.XRange "128", "128.2"
.YRange "-83.5", "-81.5"
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
.XRange "142.25", "142.75"
.YRange "-87.75", "-77.25"
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
.XRange "137.25", "147.75"
.YRange "-82.75", "-82.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell16x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-77.25", "-77.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell16x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-87.75", "-87.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell16x20"
.Material "Copper (annealed)"
.XRange "137.05", "137.25"
.YRange "-83.5", "-81.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell16x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell16x20"
.Material "Copper (annealed)"
.XRange "147.75", "147.95"
.YRange "-83.5", "-81.5"
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
.XRange "-142.75", "-142.25"
.YRange "-99.5", "-95.5"
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
.XRange "-144.5", "-140.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-95.5", "-95.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-99.5", "-99.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x1"
.Material "Copper (annealed)"
.XRange "-144.7", "-144.5"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x1"
.Material "Copper (annealed)"
.XRange "-140.5", "-140.3"
.YRange "-98.5", "-96.5"
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
.XRange "-127.75", "-127.25"
.YRange "-102.75", "-92.25"
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
.XRange "-132.75", "-122.25"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-92.25", "-92.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-102.75", "-102.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x2"
.Material "Copper (annealed)"
.XRange "-132.95", "-132.75"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x2"
.Material "Copper (annealed)"
.XRange "-122.25", "-122.05"
.YRange "-98.5", "-96.5"
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
.XRange "-112.75", "-112.25"
.YRange "-100.75", "-94.25"
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
.XRange "-115.75", "-109.25"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-94.25", "-94.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-100.75", "-100.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x3"
.Material "Copper (annealed)"
.XRange "-115.95", "-115.75"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x3"
.Material "Copper (annealed)"
.XRange "-109.25", "-109.05"
.YRange "-98.5", "-96.5"
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
.YRange "-101.75", "-93.25"
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
.XRange "-101.75", "-93.25"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-93.25", "-93.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-101.75", "-101.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x4"
.Material "Copper (annealed)"
.XRange "-101.95", "-101.75"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x4"
.Material "Copper (annealed)"
.XRange "-93.25", "-93.05"
.YRange "-98.5", "-96.5"
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
.XRange "-82.75", "-82.25"
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
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-97", "-96.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-98", "-98.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x5"
.Material "Copper (annealed)"
.XRange "-83.2", "-83"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x5"
.Material "Copper (annealed)"
.XRange "-82", "-81.8"
.YRange "-98.5", "-96.5"
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
.YRange "-102.25", "-92.75"
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
.XRange "-72.25", "-62.75"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-92.75", "-92.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-102.25", "-102.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x6"
.Material "Copper (annealed)"
.XRange "-72.45", "-72.25"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x6"
.Material "Copper (annealed)"
.XRange "-62.75", "-62.55"
.YRange "-98.5", "-96.5"
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
.XRange "-52.75", "-52.25"
.YRange "-104.75", "-90.25"
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
.XRange "-59.75", "-45.25"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-90.25", "-90.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-104.75", "-104.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x7"
.Material "Copper (annealed)"
.XRange "-59.95", "-59.75"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x7"
.Material "Copper (annealed)"
.XRange "-45.25", "-45.05"
.YRange "-98.5", "-96.5"
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
.XRange "-37.75", "-37.25"
.YRange "-102.75", "-92.25"
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
.XRange "-42.75", "-32.25"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-92.25", "-92.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-102.75", "-102.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x8"
.Material "Copper (annealed)"
.XRange "-42.95", "-42.75"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x8"
.Material "Copper (annealed)"
.XRange "-32.25", "-32.05"
.YRange "-98.5", "-96.5"
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
.XRange "-22.75", "-22.25"
.YRange "-104.75", "-90.25"
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
.XRange "-29.75", "-15.25"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-90.25", "-90.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-104.75", "-104.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x9"
.Material "Copper (annealed)"
.XRange "-29.95", "-29.75"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x9"
.Material "Copper (annealed)"
.XRange "-15.25", "-15.05"
.YRange "-98.5", "-96.5"
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
.XRange "-7.75", "-7.25"
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
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-97", "-96.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-98", "-98.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x10"
.Material "Copper (annealed)"
.XRange "-8.2", "-8"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x10"
.Material "Copper (annealed)"
.XRange "-7", "-6.8"
.YRange "-98.5", "-96.5"
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
.YRange "-100", "-95"
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
.XRange "5", "10"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-95", "-94.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-100", "-100.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x11"
.Material "Copper (annealed)"
.XRange "4.8", "5"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x11"
.Material "Copper (annealed)"
.XRange "10", "10.2"
.YRange "-98.5", "-96.5"
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
.XRange "22.25", "22.75"
.YRange "-98", "-97"
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
.XRange "22", "23"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-97", "-96.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-98", "-98.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x12"
.Material "Copper (annealed)"
.XRange "21.8", "22"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x12"
.Material "Copper (annealed)"
.XRange "23", "23.2"
.YRange "-98.5", "-96.5"
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
.YRange "-101", "-94"
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
.XRange "34", "41"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-94", "-93.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-101", "-101.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x13"
.Material "Copper (annealed)"
.XRange "33.8", "34"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x13"
.Material "Copper (annealed)"
.XRange "41", "41.2"
.YRange "-98.5", "-96.5"
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
.YRange "-100.75", "-94.25"
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
.XRange "49.25", "55.75"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-94.25", "-94.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-100.75", "-100.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x14"
.Material "Copper (annealed)"
.XRange "49.05", "49.25"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x14"
.Material "Copper (annealed)"
.XRange "55.75", "55.95"
.YRange "-98.5", "-96.5"
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
.YRange "-100.25", "-94.75"
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
.XRange "64.75", "70.25"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-94.75", "-94.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-100.25", "-100.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x15"
.Material "Copper (annealed)"
.XRange "64.55", "64.75"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x15"
.Material "Copper (annealed)"
.XRange "70.25", "70.45"
.YRange "-98.5", "-96.5"
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
.XRange "82.25", "82.75"
.YRange "-103.25", "-91.75"
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
.XRange "76.75", "88.25"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-91.75", "-91.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-103.25", "-103.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x16"
.Material "Copper (annealed)"
.XRange "76.55", "76.75"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x16"
.Material "Copper (annealed)"
.XRange "88.25", "88.45"
.YRange "-98.5", "-96.5"
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
.XRange "97.25", "97.75"
.YRange "-104.75", "-90.25"
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
.XRange "90.25", "104.75"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-90.25", "-90.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-104.75", "-104.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x17"
.Material "Copper (annealed)"
.XRange "90.05", "90.25"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x17"
.Material "Copper (annealed)"
.XRange "104.75", "104.95"
.YRange "-98.5", "-96.5"
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
.YRange "-101.5", "-93.5"
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
.XRange "108.5", "116.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-93.5", "-93.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-101.5", "-101.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x18"
.Material "Copper (annealed)"
.XRange "108.3", "108.5"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x18"
.Material "Copper (annealed)"
.XRange "116.5", "116.7"
.YRange "-98.5", "-96.5"
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
.XRange "127.25", "127.75"
.YRange "-103.5", "-91.5"
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
.XRange "121.5", "133.5"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-91.5", "-91.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-103.5", "-103.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x19"
.Material "Copper (annealed)"
.XRange "121.3", "121.5"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x19"
.Material "Copper (annealed)"
.XRange "133.5", "133.7"
.YRange "-98.5", "-96.5"
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
.XRange "142.25", "142.75"
.YRange "-104.75", "-90.25"
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
.XRange "135.25", "149.75"
.YRange "-97.75", "-97.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell17x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-90.25", "-90.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell17x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-104.75", "-104.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell17x20"
.Material "Copper (annealed)"
.XRange "135.05", "135.25"
.YRange "-98.5", "-96.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell17x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell17x20"
.Material "Copper (annealed)"
.XRange "149.75", "149.95"
.YRange "-98.5", "-96.5"
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
.YRange "-118", "-107"
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
.XRange "-148", "-137"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-107", "-106.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-118", "-118.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x1"
.Material "Copper (annealed)"
.XRange "-148.2", "-148"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x1"
.Material "Copper (annealed)"
.XRange "-137", "-136.8"
.YRange "-113.5", "-111.5"
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
.YRange "-115.5", "-109.5"
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
.XRange "-130.5", "-124.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-109.5", "-109.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-115.5", "-115.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x2"
.Material "Copper (annealed)"
.XRange "-130.7", "-130.5"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x2"
.Material "Copper (annealed)"
.XRange "-124.5", "-124.3"
.YRange "-113.5", "-111.5"
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
.XRange "-112.75", "-112.25"
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
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-112", "-111.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-113", "-113.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x3"
.Material "Copper (annealed)"
.XRange "-113.2", "-113"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x3"
.Material "Copper (annealed)"
.XRange "-112", "-111.8"
.YRange "-113.5", "-111.5"
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
.XRange "-97.75", "-97.25"
.YRange "-119.75", "-105.25"
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
.XRange "-104.75", "-90.25"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-105.25", "-105.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-119.75", "-119.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x4"
.Material "Copper (annealed)"
.XRange "-104.95", "-104.75"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x4"
.Material "Copper (annealed)"
.XRange "-90.25", "-90.05"
.YRange "-113.5", "-111.5"
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
.XRange "-82.75", "-82.25"
.YRange "-117.75", "-107.25"
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
.XRange "-87.75", "-77.25"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-107.25", "-107.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-117.75", "-117.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x5"
.Material "Copper (annealed)"
.XRange "-87.95", "-87.75"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x5"
.Material "Copper (annealed)"
.XRange "-77.25", "-77.05"
.YRange "-113.5", "-111.5"
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
.XRange "-67.75", "-67.25"
.YRange "-118.75", "-106.25"
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
.XRange "-73.75", "-61.25"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-106.25", "-106.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-118.75", "-118.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x6"
.Material "Copper (annealed)"
.XRange "-73.95", "-73.75"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x6"
.Material "Copper (annealed)"
.XRange "-61.25", "-61.05"
.YRange "-113.5", "-111.5"
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
.YRange "-117.75", "-107.25"
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
.XRange "-57.75", "-47.25"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-107.25", "-107.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-117.75", "-117.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x7"
.Material "Copper (annealed)"
.XRange "-57.95", "-57.75"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x7"
.Material "Copper (annealed)"
.XRange "-47.25", "-47.05"
.YRange "-113.5", "-111.5"
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
.YRange "-116.5", "-108.5"
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
.XRange "-41.5", "-33.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-108.5", "-108.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-116.5", "-116.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x8"
.Material "Copper (annealed)"
.XRange "-41.7", "-41.5"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x8"
.Material "Copper (annealed)"
.XRange "-33.5", "-33.3"
.YRange "-113.5", "-111.5"
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
.XRange "-22.75", "-22.25"
.YRange "-115.5", "-109.5"
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
.XRange "-25.5", "-19.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-109.5", "-109.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-115.5", "-115.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x9"
.Material "Copper (annealed)"
.XRange "-25.7", "-25.5"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x9"
.Material "Copper (annealed)"
.XRange "-19.5", "-19.3"
.YRange "-113.5", "-111.5"
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
.XRange "-7.75", "-7.25"
.YRange "-118.25", "-106.75"
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
.XRange "-13.25", "-1.75"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-106.75", "-106.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-118.25", "-118.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x10"
.Material "Copper (annealed)"
.XRange "-13.45", "-13.25"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x10"
.Material "Copper (annealed)"
.XRange "-1.75", "-1.55"
.YRange "-113.5", "-111.5"
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
.XRange "7.25", "7.75"
.YRange "-119.5", "-105.5"
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
.XRange "0.5", "14.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-105.5", "-105.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-119.5", "-119.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x11"
.Material "Copper (annealed)"
.XRange "0.3", "0.5"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x11"
.Material "Copper (annealed)"
.XRange "14.5", "14.7"
.YRange "-113.5", "-111.5"
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
.XRange "22.25", "22.75"
.YRange "-115.75", "-109.25"
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
.XRange "19.25", "25.75"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-109.25", "-109.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-115.75", "-115.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x12"
.Material "Copper (annealed)"
.XRange "19.05", "19.25"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x12"
.Material "Copper (annealed)"
.XRange "25.75", "25.95"
.YRange "-113.5", "-111.5"
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
.YRange "-114.75", "-110.25"
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
.XRange "35.25", "39.75"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-110.25", "-110.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-114.75", "-114.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x13"
.Material "Copper (annealed)"
.XRange "35.05", "35.25"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x13"
.Material "Copper (annealed)"
.XRange "39.75", "39.95"
.YRange "-113.5", "-111.5"
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
.YRange "-116.5", "-108.5"
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
.XRange "48.5", "56.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-108.5", "-108.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-116.5", "-116.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x14"
.Material "Copper (annealed)"
.XRange "48.3", "48.5"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x14"
.Material "Copper (annealed)"
.XRange "56.5", "56.7"
.YRange "-113.5", "-111.5"
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
.XRange "67.25", "67.75"
.YRange "-118", "-107"
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
.XRange "62", "73"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-107", "-106.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-118", "-118.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x15"
.Material "Copper (annealed)"
.XRange "61.8", "62"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x15"
.Material "Copper (annealed)"
.XRange "73", "73.2"
.YRange "-113.5", "-111.5"
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
.YRange "-117.25", "-107.75"
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
.XRange "77.75", "87.25"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-107.75", "-107.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-117.25", "-117.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x16"
.Material "Copper (annealed)"
.XRange "77.55", "77.75"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x16"
.Material "Copper (annealed)"
.XRange "87.25", "87.45"
.YRange "-113.5", "-111.5"
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
.YRange "-117", "-108"
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
.XRange "93", "102"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-108", "-107.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-117", "-117.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x17"
.Material "Copper (annealed)"
.XRange "92.8", "93"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x17"
.Material "Copper (annealed)"
.XRange "102", "102.2"
.YRange "-113.5", "-111.5"
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
.XRange "112.25", "112.75"
.YRange "-119.5", "-105.5"
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
.XRange "105.5", "119.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-105.5", "-105.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-119.5", "-119.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x18"
.Material "Copper (annealed)"
.XRange "105.3", "105.5"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x18"
.Material "Copper (annealed)"
.XRange "119.5", "119.7"
.YRange "-113.5", "-111.5"
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
.XRange "127.25", "127.75"
.YRange "-113", "-112"
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
.XRange "127", "128"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-112", "-111.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-113", "-113.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x19"
.Material "Copper (annealed)"
.XRange "126.8", "127"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x19"
.Material "Copper (annealed)"
.XRange "128", "128.2"
.YRange "-113.5", "-111.5"
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
.XRange "142.25", "142.75"
.YRange "-113.5", "-111.5"
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
.XRange "141.5", "143.5"
.YRange "-112.75", "-112.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell18x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-111.5", "-111.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell18x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-113.5", "-113.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell18x20"
.Material "Copper (annealed)"
.XRange "141.3", "141.5"
.YRange "-113.5", "-111.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell18x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell18x20"
.Material "Copper (annealed)"
.XRange "143.5", "143.7"
.YRange "-113.5", "-111.5"
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
.XRange "-142.75", "-142.25"
.YRange "-134.75", "-120.25"
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
.XRange "-149.75", "-135.25"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-120.25", "-120.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-134.75", "-134.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x1"
.Material "Copper (annealed)"
.XRange "-149.95", "-149.75"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x1"
.Material "Copper (annealed)"
.XRange "-135.25", "-135.05"
.YRange "-128.5", "-126.5"
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
.XRange "-127.75", "-127.25"
.YRange "-130.25", "-124.75"
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
.XRange "-130.25", "-124.75"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-124.75", "-124.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-130.25", "-130.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x2"
.Material "Copper (annealed)"
.XRange "-130.45", "-130.25"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x2"
.Material "Copper (annealed)"
.XRange "-124.75", "-124.55"
.YRange "-128.5", "-126.5"
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
.YRange "-132.25", "-122.75"
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
.XRange "-117.25", "-107.75"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-122.75", "-122.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-132.25", "-132.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x3"
.Material "Copper (annealed)"
.XRange "-117.45", "-117.25"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x3"
.Material "Copper (annealed)"
.XRange "-107.75", "-107.55"
.YRange "-128.5", "-126.5"
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
.XRange "-97.75", "-97.25"
.YRange "-128.5", "-126.5"
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
.XRange "-98.5", "-96.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-126.5", "-126.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-128.5", "-128.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x4"
.Material "Copper (annealed)"
.XRange "-98.7", "-98.5"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x4"
.Material "Copper (annealed)"
.XRange "-96.5", "-96.3"
.YRange "-128.5", "-126.5"
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
.XRange "-82.75", "-82.25"
.YRange "-134.75", "-120.25"
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
.XRange "-89.75", "-75.25"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-120.25", "-120.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-134.75", "-134.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x5"
.Material "Copper (annealed)"
.XRange "-89.95", "-89.75"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x5"
.Material "Copper (annealed)"
.XRange "-75.25", "-75.05"
.YRange "-128.5", "-126.5"
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
.XRange "-67.75", "-67.25"
.YRange "-128", "-127"
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
.XRange "-68", "-67"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-127", "-126.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-128", "-128.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x6"
.Material "Copper (annealed)"
.XRange "-68.2", "-68"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x6"
.Material "Copper (annealed)"
.XRange "-67", "-66.8"
.YRange "-128.5", "-126.5"
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
.XRange "-52.75", "-52.25"
.YRange "-132.75", "-122.25"
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
.XRange "-57.75", "-47.25"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-122.25", "-122.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-132.75", "-132.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x7"
.Material "Copper (annealed)"
.XRange "-57.95", "-57.75"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x7"
.Material "Copper (annealed)"
.XRange "-47.25", "-47.05"
.YRange "-128.5", "-126.5"
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
.XRange "-37.75", "-37.25"
.YRange "-134.75", "-120.25"
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
.XRange "-44.75", "-30.25"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-120.25", "-120.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-134.75", "-134.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x8"
.Material "Copper (annealed)"
.XRange "-44.95", "-44.75"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x8"
.Material "Copper (annealed)"
.XRange "-30.25", "-30.05"
.YRange "-128.5", "-126.5"
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
.XRange "-22.75", "-22.25"
.YRange "-133", "-122"
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
.XRange "-28", "-17"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-122", "-121.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-133", "-133.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x9"
.Material "Copper (annealed)"
.XRange "-28.2", "-28"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x9"
.Material "Copper (annealed)"
.XRange "-17", "-16.8"
.YRange "-128.5", "-126.5"
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
.XRange "-7.75", "-7.25"
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
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-127", "-126.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-128", "-128.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x10"
.Material "Copper (annealed)"
.XRange "-8.2", "-8"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x10"
.Material "Copper (annealed)"
.XRange "-7", "-6.8"
.YRange "-128.5", "-126.5"
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
.YRange "-129", "-126"
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
.XRange "6", "9"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-126", "-125.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-129", "-129.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x11"
.Material "Copper (annealed)"
.XRange "5.8", "6"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x11"
.Material "Copper (annealed)"
.XRange "9", "9.2"
.YRange "-128.5", "-126.5"
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
.YRange "-129.75", "-125.25"
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
.XRange "20.25", "24.75"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-125.25", "-125.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-129.75", "-129.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x12"
.Material "Copper (annealed)"
.XRange "20.05", "20.25"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x12"
.Material "Copper (annealed)"
.XRange "24.75", "24.95"
.YRange "-128.5", "-126.5"
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
.YRange "-133.25", "-121.75"
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
.XRange "31.75", "43.25"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-121.75", "-121.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-133.25", "-133.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x13"
.Material "Copper (annealed)"
.XRange "31.55", "31.75"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x13"
.Material "Copper (annealed)"
.XRange "43.25", "43.45"
.YRange "-128.5", "-126.5"
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
.YRange "-128", "-127"
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
.XRange "52", "53"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-127", "-126.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-128", "-128.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x14"
.Material "Copper (annealed)"
.XRange "51.8", "52"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x14"
.Material "Copper (annealed)"
.XRange "53", "53.2"
.YRange "-128.5", "-126.5"
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
.YRange "-131.5", "-123.5"
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
.XRange "63.5", "71.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-123.5", "-123.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-131.5", "-131.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x15"
.Material "Copper (annealed)"
.XRange "63.3", "63.5"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x15"
.Material "Copper (annealed)"
.XRange "71.5", "71.7"
.YRange "-128.5", "-126.5"
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
.XRange "82.25", "82.75"
.YRange "-128", "-127"
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
.XRange "82", "83"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-127", "-126.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-128", "-128.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x16"
.Material "Copper (annealed)"
.XRange "81.8", "82"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x16"
.Material "Copper (annealed)"
.XRange "83", "83.2"
.YRange "-128.5", "-126.5"
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
.YRange "-132.25", "-122.75"
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
.XRange "92.75", "102.25"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-122.75", "-122.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-132.25", "-132.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x17"
.Material "Copper (annealed)"
.XRange "92.55", "92.75"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x17"
.Material "Copper (annealed)"
.XRange "102.25", "102.45"
.YRange "-128.5", "-126.5"
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
.XRange "112.25", "112.75"
.YRange "-128", "-127"
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
.XRange "112", "113"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-127", "-126.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-128", "-128.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x18"
.Material "Copper (annealed)"
.XRange "111.8", "112"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x18"
.Material "Copper (annealed)"
.XRange "113", "113.2"
.YRange "-128.5", "-126.5"
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
.XRange "127.25", "127.75"
.YRange "-134.5", "-120.5"
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
.XRange "120.5", "134.5"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-120.5", "-120.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-134.5", "-134.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x19"
.Material "Copper (annealed)"
.XRange "120.3", "120.5"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x19"
.Material "Copper (annealed)"
.XRange "134.5", "134.7"
.YRange "-128.5", "-126.5"
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
.XRange "142.25", "142.75"
.YRange "-134.75", "-120.25"
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
.XRange "135.25", "149.75"
.YRange "-127.75", "-127.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell19x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-120.25", "-120.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell19x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-134.75", "-134.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell19x20"
.Material "Copper (annealed)"
.XRange "135.05", "135.25"
.YRange "-128.5", "-126.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell19x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell19x20"
.Material "Copper (annealed)"
.XRange "149.75", "149.95"
.YRange "-128.5", "-126.5"
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
.XRange "-142.75", "-142.25"
.YRange "-148.25", "-136.75"
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
.XRange "-148.25", "-136.75"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-136.75", "-136.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x1:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x1"
.Material "Copper (annealed)"
.XRange "-143.5", "-141.5"
.YRange "-148.25", "-148.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x1:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x1"
.Material "Copper (annealed)"
.XRange "-148.45", "-148.25"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x1:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x1"
.Material "Copper (annealed)"
.XRange "-136.75", "-136.55"
.YRange "-143.5", "-141.5"
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
.XRange "-127.75", "-127.25"
.YRange "-149.75", "-135.25"
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
.XRange "-134.75", "-120.25"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-135.25", "-135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x2:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x2"
.Material "Copper (annealed)"
.XRange "-128.5", "-126.5"
.YRange "-149.75", "-149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x2:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x2"
.Material "Copper (annealed)"
.XRange "-134.95", "-134.75"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x2:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x2"
.Material "Copper (annealed)"
.XRange "-120.25", "-120.05"
.YRange "-143.5", "-141.5"
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
.XRange "-112.75", "-112.25"
.YRange "-149.75", "-135.25"
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
.XRange "-119.75", "-105.25"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-135.25", "-135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x3:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x3"
.Material "Copper (annealed)"
.XRange "-113.5", "-111.5"
.YRange "-149.75", "-149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x3:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x3"
.Material "Copper (annealed)"
.XRange "-119.95", "-119.75"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x3:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x3"
.Material "Copper (annealed)"
.XRange "-105.25", "-105.05"
.YRange "-143.5", "-141.5"
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
.XRange "-97.75", "-97.25"
.YRange "-143", "-142"
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
.XRange "-98", "-97"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-142", "-141.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x4:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x4"
.Material "Copper (annealed)"
.XRange "-98.5", "-96.5"
.YRange "-143", "-143.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x4:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x4"
.Material "Copper (annealed)"
.XRange "-98.2", "-98"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x4:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x4"
.Material "Copper (annealed)"
.XRange "-97", "-96.8"
.YRange "-143.5", "-141.5"
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
.XRange "-82.75", "-82.25"
.YRange "-143.75", "-141.25"
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
.XRange "-83.75", "-81.25"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-141.25", "-141.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x5:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x5"
.Material "Copper (annealed)"
.XRange "-83.5", "-81.5"
.YRange "-143.75", "-143.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x5:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x5"
.Material "Copper (annealed)"
.XRange "-83.95", "-83.75"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x5:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x5"
.Material "Copper (annealed)"
.XRange "-81.25", "-81.05"
.YRange "-143.5", "-141.5"
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
.XRange "-67.75", "-67.25"
.YRange "-149.75", "-135.25"
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
.XRange "-74.75", "-60.25"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-135.25", "-135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x6:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x6"
.Material "Copper (annealed)"
.XRange "-68.5", "-66.5"
.YRange "-149.75", "-149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x6:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x6"
.Material "Copper (annealed)"
.XRange "-74.95", "-74.75"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x6:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x6"
.Material "Copper (annealed)"
.XRange "-60.25", "-60.05"
.YRange "-143.5", "-141.5"
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
.YRange "-145.5", "-139.5"
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
.XRange "-55.5", "-49.5"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-139.5", "-139.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x7:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x7"
.Material "Copper (annealed)"
.XRange "-53.5", "-51.5"
.YRange "-145.5", "-145.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x7:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x7"
.Material "Copper (annealed)"
.XRange "-55.7", "-55.5"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x7:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x7"
.Material "Copper (annealed)"
.XRange "-49.5", "-49.3"
.YRange "-143.5", "-141.5"
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
.YRange "-146.5", "-138.5"
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
.XRange "-41.5", "-33.5"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-138.5", "-138.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x8:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x8"
.Material "Copper (annealed)"
.XRange "-38.5", "-36.5"
.YRange "-146.5", "-146.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x8:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x8"
.Material "Copper (annealed)"
.XRange "-41.7", "-41.5"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x8:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x8"
.Material "Copper (annealed)"
.XRange "-33.5", "-33.3"
.YRange "-143.5", "-141.5"
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
.XRange "-22.75", "-22.25"
.YRange "-146.25", "-138.75"
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
.XRange "-26.25", "-18.75"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-138.75", "-138.55"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x9:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x9"
.Material "Copper (annealed)"
.XRange "-23.5", "-21.5"
.YRange "-146.25", "-146.45"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x9:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x9"
.Material "Copper (annealed)"
.XRange "-26.45", "-26.25"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x9:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x9"
.Material "Copper (annealed)"
.XRange "-18.75", "-18.55"
.YRange "-143.5", "-141.5"
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
.XRange "-7.75", "-7.25"
.YRange "-148.5", "-136.5"
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
.XRange "-13.5", "-1.5"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-136.5", "-136.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x10:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x10"
.Material "Copper (annealed)"
.XRange "-8.5", "-6.5"
.YRange "-148.5", "-148.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x10:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x10"
.Material "Copper (annealed)"
.XRange "-13.7", "-13.5"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x10:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x10"
.Material "Copper (annealed)"
.XRange "-1.5", "-1.3"
.YRange "-143.5", "-141.5"
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
.XRange "7.25", "7.75"
.YRange "-149.75", "-135.25"
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
.XRange "0.25", "14.75"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-135.25", "-135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x11:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x11"
.Material "Copper (annealed)"
.XRange "6.5", "8.5"
.YRange "-149.75", "-149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x11:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x11"
.Material "Copper (annealed)"
.XRange "0.05", "0.25"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x11:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x11"
.Material "Copper (annealed)"
.XRange "14.75", "14.95"
.YRange "-143.5", "-141.5"
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
.YRange "-143", "-142"
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
.XRange "22", "23"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-142", "-141.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x12:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x12"
.Material "Copper (annealed)"
.XRange "21.5", "23.5"
.YRange "-143", "-143.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x12:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x12"
.Material "Copper (annealed)"
.XRange "21.8", "22"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x12:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x12"
.Material "Copper (annealed)"
.XRange "23", "23.2"
.YRange "-143.5", "-141.5"
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
.YRange "-147.75", "-137.25"
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
.XRange "32.25", "42.75"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-137.25", "-137.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x13:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x13"
.Material "Copper (annealed)"
.XRange "36.5", "38.5"
.YRange "-147.75", "-147.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x13:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x13"
.Material "Copper (annealed)"
.XRange "32.05", "32.25"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x13:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x13"
.Material "Copper (annealed)"
.XRange "42.75", "42.95"
.YRange "-143.5", "-141.5"
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
.YRange "-146", "-139"
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
.XRange "49", "56"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-139", "-138.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x14:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x14"
.Material "Copper (annealed)"
.XRange "51.5", "53.5"
.YRange "-146", "-146.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x14:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x14"
.Material "Copper (annealed)"
.XRange "48.8", "49"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x14:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x14"
.Material "Copper (annealed)"
.XRange "56", "56.2"
.YRange "-143.5", "-141.5"
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
.XRange "67.25", "67.75"
.YRange "-143.5", "-141.5"
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
.XRange "66.5", "68.5"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-141.5", "-141.3"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x15:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x15"
.Material "Copper (annealed)"
.XRange "66.5", "68.5"
.YRange "-143.5", "-143.7"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x15:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x15"
.Material "Copper (annealed)"
.XRange "66.3", "66.5"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x15:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x15"
.Material "Copper (annealed)"
.XRange "68.5", "68.7"
.YRange "-143.5", "-141.5"
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
.XRange "82.25", "82.75"
.YRange "-149.75", "-135.25"
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
.XRange "75.25", "89.75"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x16:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-135.25", "-135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x16:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x16"
.Material "Copper (annealed)"
.XRange "81.5", "83.5"
.YRange "-149.75", "-149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x16:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x16"
.Material "Copper (annealed)"
.XRange "75.05", "75.25"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x16:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x16"
.Material "Copper (annealed)"
.XRange "89.75", "89.95"
.YRange "-143.5", "-141.5"
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
.XRange "97.25", "97.75"
.YRange "-149.75", "-135.25"
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
.XRange "90.25", "104.75"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x17:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-135.25", "-135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x17:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x17"
.Material "Copper (annealed)"
.XRange "96.5", "98.5"
.YRange "-149.75", "-149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x17:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x17"
.Material "Copper (annealed)"
.XRange "90.05", "90.25"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x17:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x17"
.Material "Copper (annealed)"
.XRange "104.75", "104.95"
.YRange "-143.5", "-141.5"
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
.XRange "112.25", "112.75"
.YRange "-148.75", "-136.25"
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
.XRange "106.25", "118.75"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x18:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-136.25", "-136.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x18:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x18"
.Material "Copper (annealed)"
.XRange "111.5", "113.5"
.YRange "-148.75", "-148.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x18:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x18"
.Material "Copper (annealed)"
.XRange "106.05", "106.25"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x18:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x18"
.Material "Copper (annealed)"
.XRange "118.75", "118.95"
.YRange "-143.5", "-141.5"
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
.XRange "127.25", "127.75"
.YRange "-149.75", "-135.25"
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
.XRange "120.25", "134.75"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x19:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-135.25", "-135.05"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x19:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x19"
.Material "Copper (annealed)"
.XRange "126.5", "128.5"
.YRange "-149.75", "-149.95"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x19:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x19"
.Material "Copper (annealed)"
.XRange "120.05", "120.25"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x19:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x19"
.Material "Copper (annealed)"
.XRange "134.75", "134.95"
.YRange "-143.5", "-141.5"
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
.XRange "142.25", "142.75"
.YRange "-143", "-142"
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
.XRange "142", "143"
.YRange "-142.75", "-142.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x20:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell20x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-142", "-141.8"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x20:down

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "down"
.Component "unitcell20x20"
.Material "Copper (annealed)"
.XRange "141.5", "143.5"
.YRange "-143", "-143.2"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x20:left

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "left"
.Component "unitcell20x20"
.Material "Copper (annealed)"
.XRange "141.8", "142"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: unitcell20x20:right

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "right"
.Component "unitcell20x20"
.Material "Copper (annealed)"
.XRange "143", "143.2"
.YRange "-143.5", "-141.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell20x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x20"

