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

'@ define brick: unitcell1x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.XRange "-105.75", "-104.25"
.YRange "110", "110.5"
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
.XRange "-105.75", "-104.25"
.YRange "100", "99.5"
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
.XRange "-110.5", "-110"
.YRange "104.25", "105.75"
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
.XRange "-100", "-99.5"
.YRange "104.25", "105.75"
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

'@ define brick: unitcell1x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.XRange "-90.75", "-89.25"
.YRange "105.5", "106"
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
.XRange "-90.75", "-89.25"
.YRange "104.5", "104"
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
.XRange "-91", "-90.5"
.YRange "104.25", "105.75"
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
.XRange "-89.5", "-89"
.YRange "104.25", "105.75"
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
.YRange "103.25", "106.75"
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
.XRange "-76.75", "-73.25"
.YRange "104.5", "105.5"
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
.XRange "-76", "-74"
.YRange "106.75", "107.25"
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
.XRange "-76", "-74"
.YRange "103.25", "102.75"
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
.XRange "-77.25", "-76.75"
.YRange "104", "106"
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
.XRange "-73.25", "-72.75"
.YRange "104", "106"
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

'@ define brick: unitcell1x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.XRange "-60.75", "-59.25"
.YRange "105.5", "106"
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
.XRange "-60.75", "-59.25"
.YRange "104.5", "104"
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
.XRange "-61", "-60.5"
.YRange "104.25", "105.75"
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
.XRange "-59.5", "-59"
.YRange "104.25", "105.75"
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

'@ define brick: unitcell1x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.XRange "-45.75", "-44.25"
.YRange "105.5", "106"
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
.XRange "-45.75", "-44.25"
.YRange "104.5", "104"
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
.XRange "-46", "-45.5"
.YRange "104.25", "105.75"
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
.XRange "-44.5", "-44"
.YRange "104.25", "105.75"
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
.XRange "-31.25", "-28.75"
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
.YRange "103.75", "106.25"
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
.XRange "-31", "-29"
.YRange "110", "110.5"
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
.XRange "-31", "-29"
.YRange "100", "99.5"
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
.XRange "-35.5", "-35"
.YRange "104", "106"
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
.XRange "-25", "-24.5"
.YRange "104", "106"
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

'@ define brick: unitcell1x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.XRange "-15.75", "-14.25"
.YRange "105.5", "106"
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
.XRange "-15.75", "-14.25"
.YRange "104.5", "104"
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
.XRange "-16", "-15.5"
.YRange "104.25", "105.75"
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
.XRange "-14.5", "-14"
.YRange "104.25", "105.75"
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
.XRange "-1", "1"
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
.YRange "104", "106"
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
.XRange "-1", "1"
.YRange "110", "110.5"
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
.XRange "-1", "1"
.YRange "100", "99.5"
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
.XRange "-5.5", "-5"
.YRange "104", "106"
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
.XRange "5", "5.5"
.YRange "104", "106"
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
.YRange "101.25", "108.75"
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
.XRange "11.25", "18.75"
.YRange "104.5", "105.5"
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
.XRange "14", "16"
.YRange "108.75", "109.25"
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
.XRange "14", "16"
.YRange "101.25", "100.75"
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
.XRange "10.75", "11.25"
.YRange "104", "106"
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
.XRange "18.75", "19.25"
.YRange "104", "106"
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

'@ define brick: unitcell1x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.XRange "29.25", "30.75"
.YRange "110", "110.5"
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
.XRange "29.25", "30.75"
.YRange "100", "99.5"
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
.XRange "24.5", "25"
.YRange "104.25", "105.75"
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
.XRange "35", "35.5"
.YRange "104.25", "105.75"
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
.YRange "101", "109"
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
.XRange "41", "49"
.YRange "104.5", "105.5"
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
.XRange "44.25", "45.75"
.YRange "109", "109.5"
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
.XRange "44.25", "45.75"
.YRange "101", "100.5"
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
.XRange "40.5", "41"
.YRange "104.25", "105.75"
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
.XRange "49", "49.5"
.YRange "104.25", "105.75"
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

'@ define brick: unitcell1x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.XRange "59.25", "60.75"
.YRange "110", "110.5"
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
.XRange "59.25", "60.75"
.YRange "100", "99.5"
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
.XRange "54.5", "55"
.YRange "104.25", "105.75"
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
.XRange "65", "65.5"
.YRange "104.25", "105.75"
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

'@ define brick: unitcell1x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.XRange "74.25", "75.75"
.YRange "105.5", "106"
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
.XRange "74.25", "75.75"
.YRange "104.5", "104"
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
.XRange "74", "74.5"
.YRange "104.25", "105.75"
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
.XRange "75.5", "76"
.YRange "104.25", "105.75"
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

'@ define brick: unitcell1x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.XRange "89.25", "90.75"
.YRange "105.5", "106"
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
.XRange "89.25", "90.75"
.YRange "104.5", "104"
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
.XRange "89", "89.5"
.YRange "104.25", "105.75"
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
.XRange "90.5", "91"
.YRange "104.25", "105.75"
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

'@ define brick: unitcell1x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.XRange "104.25", "105.75"
.YRange "105.5", "106"
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
.XRange "104.25", "105.75"
.YRange "104.5", "104"
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
.XRange "104", "104.5"
.YRange "104.25", "105.75"
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
.XRange "105.5", "106"
.YRange "104.25", "105.75"
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
.YRange "86.25", "93.75"
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
.XRange "-108.75", "-101.25"
.YRange "89.5", "90.5"
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
.XRange "-106", "-104"
.YRange "93.75", "94.25"
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
.XRange "-106", "-104"
.YRange "86.25", "85.75"
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
.XRange "-109.25", "-108.75"
.YRange "89", "91"
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
.XRange "-101.25", "-100.75"
.YRange "89", "91"
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

'@ define brick: unitcell2x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.XRange "-90.75", "-89.25"
.YRange "95", "95.5"
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
.XRange "-90.75", "-89.25"
.YRange "85", "84.5"
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
.XRange "-95.5", "-95"
.YRange "89.25", "90.75"
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
.XRange "-85", "-84.5"
.YRange "89.25", "90.75"
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
.YRange "87.75", "92.25"
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
.XRange "-77.25", "-72.75"
.YRange "89.5", "90.5"
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
.XRange "-75.75", "-74.25"
.YRange "92.25", "92.75"
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
.XRange "-75.75", "-74.25"
.YRange "87.75", "87.25"
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
.XRange "-77.75", "-77.25"
.YRange "89.25", "90.75"
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
.XRange "-72.75", "-72.25"
.YRange "89.25", "90.75"
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
.YRange "86.25", "93.75"
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
.XRange "-63.75", "-56.25"
.YRange "89.5", "90.5"
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
.XRange "-61", "-59"
.YRange "93.75", "94.25"
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
.XRange "-61", "-59"
.YRange "86.25", "85.75"
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
.XRange "-64.25", "-63.75"
.YRange "89", "91"
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
.XRange "-56.25", "-55.75"
.YRange "89", "91"
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

'@ define brick: unitcell2x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.XRange "-45.75", "-44.25"
.YRange "90.5", "91"
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
.XRange "-45.75", "-44.25"
.YRange "89.5", "89"
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
.XRange "-46", "-45.5"
.YRange "89.25", "90.75"
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
.XRange "-44.5", "-44"
.YRange "89.25", "90.75"
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

'@ define brick: unitcell2x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.XRange "-30.75", "-29.25"
.YRange "95", "95.5"
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
.XRange "-30.75", "-29.25"
.YRange "85", "84.5"
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
.XRange "-35.5", "-35"
.YRange "89.25", "90.75"
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
.XRange "-25", "-24.5"
.YRange "89.25", "90.75"
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
.XRange "-15.5", "-14.5"
.YRange "85.5", "94.5"
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
.XRange "-19.5", "-10.5"
.YRange "89.5", "90.5"
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
.XRange "-16", "-14"
.YRange "94.5", "95"
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
.XRange "-16", "-14"
.YRange "85.5", "85"
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
.XRange "-20", "-19.5"
.YRange "89", "91"
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
.XRange "-10.5", "-10"
.YRange "89", "91"
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
.XRange "-0.5", "0.5"
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
.YRange "89.5", "90.5"
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
.XRange "-0.5", "0.5"
.YRange "95", "95.5"
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
.XRange "-0.5", "0.5"
.YRange "85", "84.5"
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
.XRange "-5.5", "-5"
.YRange "89.5", "90.5"
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
.XRange "5", "5.5"
.YRange "89.5", "90.5"
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
.YRange "89", "91"
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
.XRange "14", "16"
.YRange "89.5", "90.5"
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
.XRange "14", "16"
.YRange "91", "91.5"
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
.XRange "14", "16"
.YRange "89", "88.5"
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
.XRange "13.5", "14"
.YRange "89", "91"
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
.XRange "16", "16.5"
.YRange "89", "91"
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

'@ define brick: unitcell2x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.XRange "29.25", "30.75"
.YRange "95", "95.5"
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
.XRange "29.25", "30.75"
.YRange "85", "84.5"
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
.XRange "24.5", "25"
.YRange "89.25", "90.75"
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
.XRange "35", "35.5"
.YRange "89.25", "90.75"
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

'@ define brick: unitcell2x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.XRange "44.25", "45.75"
.YRange "90.5", "91"
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
.XRange "44.25", "45.75"
.YRange "89.5", "89"
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
.XRange "44", "44.5"
.YRange "89.25", "90.75"
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
.XRange "45.5", "46"
.YRange "89.25", "90.75"
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
.XRange "59.75", "60.25"
.YRange "85", "95"
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
.XRange "55", "65"
.YRange "89.75", "90.25"
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
.XRange "59.25", "60.75"
.YRange "95", "95.5"
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
.XRange "59.25", "60.75"
.YRange "85", "84.5"
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
.XRange "54.5", "55"
.YRange "89.25", "90.75"
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
.XRange "65", "65.5"
.YRange "89.25", "90.75"
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

'@ define brick: unitcell2x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.XRange "74.25", "75.75"
.YRange "95", "95.5"
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
.XRange "74.25", "75.75"
.YRange "85", "84.5"
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
.XRange "69.5", "70"
.YRange "89.25", "90.75"
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
.XRange "80", "80.5"
.YRange "89.25", "90.75"
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

'@ define brick: unitcell2x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.XRange "89.25", "90.75"
.YRange "90.5", "91"
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
.XRange "89.25", "90.75"
.YRange "89.5", "89"
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
.XRange "89", "89.5"
.YRange "89.25", "90.75"
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
.XRange "90.5", "91"
.YRange "89.25", "90.75"
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
.XRange "100.5", "109.5"
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
.YRange "85.5", "94.5"
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
.XRange "104", "106"
.YRange "95", "95.5"
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
.XRange "104", "106"
.YRange "85", "84.5"
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
.XRange "99.5", "100"
.YRange "89", "91"
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
.XRange "110", "110.5"
.YRange "89", "91"
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
.XRange "-105.5", "-104.5"
.YRange "70.75", "79.25"
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
.XRange "-109.25", "-100.75"
.YRange "74.5", "75.5"
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
.XRange "-105.75", "-104.25"
.YRange "79.25", "79.75"
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
.XRange "-105.75", "-104.25"
.YRange "70.75", "70.25"
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
.XRange "-109.75", "-109.25"
.YRange "74.25", "75.75"
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
.XRange "-100.75", "-100.25"
.YRange "74.25", "75.75"
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

'@ define brick: unitcell3x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.XRange "-90.75", "-89.25"
.YRange "75.5", "76"
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
.XRange "-90.75", "-89.25"
.YRange "74.5", "74"
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
.XRange "-91", "-90.5"
.YRange "74.25", "75.75"
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
.XRange "-89.5", "-89"
.YRange "74.25", "75.75"
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

'@ define brick: unitcell3x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.XRange "-75.75", "-74.25"
.YRange "75.5", "76"
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
.XRange "-75.75", "-74.25"
.YRange "74.5", "74"
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
.XRange "-76", "-75.5"
.YRange "74.25", "75.75"
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
.XRange "-74.5", "-74"
.YRange "74.25", "75.75"
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

'@ define brick: unitcell3x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.XRange "-60.75", "-59.25"
.YRange "80", "80.5"
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
.XRange "-60.75", "-59.25"
.YRange "70", "69.5"
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
.XRange "-65.5", "-65"
.YRange "74.25", "75.75"
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
.XRange "-55", "-54.5"
.YRange "74.25", "75.75"
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
.YRange "73.5", "76.5"
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
.XRange "-46.5", "-43.5"
.YRange "74.5", "75.5"
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
.XRange "-46", "-44"
.YRange "76.5", "77"
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
.XRange "-46", "-44"
.YRange "73.5", "73"
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
.XRange "-47", "-46.5"
.YRange "74", "76"
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
.XRange "-43.5", "-43"
.YRange "74", "76"
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

'@ define brick: unitcell3x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.XRange "-30.75", "-29.25"
.YRange "75.5", "76"
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
.XRange "-30.75", "-29.25"
.YRange "74.5", "74"
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
.XRange "-31", "-30.5"
.YRange "74.25", "75.75"
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
.XRange "-29.5", "-29"
.YRange "74.25", "75.75"
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

'@ define brick: unitcell3x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.XRange "-15.75", "-14.25"
.YRange "75.5", "76"
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
.XRange "-15.75", "-14.25"
.YRange "74.5", "74"
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
.XRange "-16", "-15.5"
.YRange "74.25", "75.75"
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
.XRange "-14.5", "-14"
.YRange "74.25", "75.75"
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
.XRange "-0.5", "0.5"
.YRange "70.25", "79.75"
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
.XRange "-4.75", "4.75"
.YRange "74.5", "75.5"
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
.XRange "-0.75", "0.75"
.YRange "79.75", "80.25"
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
.XRange "-0.75", "0.75"
.YRange "70.25", "69.75"
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
.XRange "-5.25", "-4.75"
.YRange "74.25", "75.75"
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
.XRange "4.75", "5.25"
.YRange "74.25", "75.75"
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
.XRange "14.5", "15.5"
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
.YRange "74.5", "75.5"
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
.XRange "14.5", "15.5"
.YRange "80", "80.5"
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
.XRange "14.5", "15.5"
.YRange "70", "69.5"
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
.XRange "9.5", "10"
.YRange "74.5", "75.5"
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
.XRange "20", "20.5"
.YRange "74.5", "75.5"
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
.XRange "29.5", "30.5"
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
.YRange "74.5", "75.5"
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
.XRange "29.25", "30.75"
.YRange "80", "80.5"
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
.XRange "29.25", "30.75"
.YRange "70", "69.5"
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
.XRange "24.5", "25"
.YRange "74.25", "75.75"
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
.XRange "35", "35.5"
.YRange "74.25", "75.75"
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
.YRange "72", "78"
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
.XRange "42", "48"
.YRange "74.5", "75.5"
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
.XRange "44.25", "45.75"
.YRange "78", "78.5"
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
.XRange "44.25", "45.75"
.YRange "72", "71.5"
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
.XRange "41.5", "42"
.YRange "74.25", "75.75"
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
.XRange "48", "48.5"
.YRange "74.25", "75.75"
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

'@ define brick: unitcell3x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.XRange "59.25", "60.75"
.YRange "80", "80.5"
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
.XRange "59.25", "60.75"
.YRange "70", "69.5"
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
.XRange "54.5", "55"
.YRange "74.25", "75.75"
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
.XRange "65", "65.5"
.YRange "74.25", "75.75"
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

'@ define brick: unitcell3x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.XRange "74.25", "75.75"
.YRange "75.5", "76"
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
.XRange "74.25", "75.75"
.YRange "74.5", "74"
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
.XRange "74", "74.5"
.YRange "74.25", "75.75"
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
.XRange "75.5", "76"
.YRange "74.25", "75.75"
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

'@ define brick: unitcell3x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.XRange "89.25", "90.75"
.YRange "80", "80.5"
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
.XRange "89.25", "90.75"
.YRange "70", "69.5"
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
.XRange "84.5", "85"
.YRange "74.25", "75.75"
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
.XRange "95", "95.5"
.YRange "74.25", "75.75"
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
.YRange "74.5", "75.5"
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
.XRange "104.5", "105.5"
.YRange "74.5", "75.5"
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
.XRange "104.25", "105.75"
.YRange "75.5", "76"
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
.XRange "104.25", "105.75"
.YRange "74.5", "74"
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
.XRange "104", "104.5"
.YRange "74.25", "75.75"
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
.XRange "105.5", "106"
.YRange "74.25", "75.75"
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

'@ define brick: unitcell4x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.XRange "-105.75", "-104.25"
.YRange "65", "65.5"
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
.XRange "-105.75", "-104.25"
.YRange "55", "54.5"
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
.XRange "-110.5", "-110"
.YRange "59.25", "60.75"
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
.XRange "-100", "-99.5"
.YRange "59.25", "60.75"
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
.XRange "-94.25", "-85.75"
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
.YRange "55.75", "64.25"
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
.XRange "-91", "-89"
.YRange "65", "65.5"
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
.XRange "-91", "-89"
.YRange "55", "54.5"
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
.XRange "-95.5", "-95"
.YRange "59", "61"
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
.XRange "-85", "-84.5"
.YRange "59", "61"
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

'@ define brick: unitcell4x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.XRange "-75.75", "-74.25"
.YRange "65", "65.5"
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
.XRange "-75.75", "-74.25"
.YRange "55", "54.5"
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
.XRange "-80.5", "-80"
.YRange "59.25", "60.75"
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
.XRange "-70", "-69.5"
.YRange "59.25", "60.75"
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
.YRange "56", "64"
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
.XRange "-64", "-56"
.YRange "59.5", "60.5"
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
.XRange "-60.75", "-59.25"
.YRange "64", "64.5"
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
.XRange "-60.75", "-59.25"
.YRange "56", "55.5"
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
.XRange "-64.5", "-64"
.YRange "59.25", "60.75"
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
.XRange "-56", "-55.5"
.YRange "59.25", "60.75"
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

'@ define brick: unitcell4x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.XRange "-45.75", "-44.25"
.YRange "60.5", "61"
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
.XRange "-45.75", "-44.25"
.YRange "59.5", "59"
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
.XRange "-46", "-45.5"
.YRange "59.25", "60.75"
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
.XRange "-44.5", "-44"
.YRange "59.25", "60.75"
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
.XRange "-31.25", "-28.75"
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
.YRange "58.75", "61.25"
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
.XRange "-31", "-29"
.YRange "65", "65.5"
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
.XRange "-31", "-29"
.YRange "55", "54.5"
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
.XRange "-35.5", "-35"
.YRange "59", "61"
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
.XRange "-25", "-24.5"
.YRange "59", "61"
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
.XRange "-15.5", "-14.5"
.YRange "55.25", "64.75"
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
.XRange "-19.75", "-10.25"
.YRange "59.5", "60.5"
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
.XRange "-16", "-14"
.YRange "64.75", "65.25"
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
.XRange "-16", "-14"
.YRange "55.25", "54.75"
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
.XRange "-20.25", "-19.75"
.YRange "59", "61"
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
.XRange "-10.25", "-9.75"
.YRange "59", "61"
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
.XRange "-1", "1"
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
.YRange "59", "61"
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
.XRange "-1", "1"
.YRange "65", "65.5"
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
.XRange "-1", "1"
.YRange "55", "54.5"
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
.XRange "-5.5", "-5"
.YRange "59", "61"
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
.XRange "5", "5.5"
.YRange "59", "61"
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

'@ define brick: unitcell4x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.XRange "14.25", "15.75"
.YRange "65", "65.5"
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
.XRange "14.25", "15.75"
.YRange "55", "54.5"
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
.XRange "9.5", "10"
.YRange "59.25", "60.75"
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
.XRange "20", "20.5"
.YRange "59.25", "60.75"
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
.YRange "56.5", "63.5"
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
.XRange "26.5", "33.5"
.YRange "59.5", "60.5"
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
.XRange "29.25", "30.75"
.YRange "63.5", "64"
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
.XRange "29.25", "30.75"
.YRange "56.5", "56"
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
.XRange "26", "26.5"
.YRange "59.25", "60.75"
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
.XRange "33.5", "34"
.YRange "59.25", "60.75"
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
.XRange "44.75", "45.25"
.YRange "55", "65"
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
.XRange "40", "50"
.YRange "59.75", "60.25"
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
.XRange "44.25", "45.75"
.YRange "65", "65.5"
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
.XRange "44.25", "45.75"
.YRange "55", "54.5"
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
.XRange "39.5", "40"
.YRange "59.25", "60.75"
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
.XRange "50", "50.5"
.YRange "59.25", "60.75"
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
.XRange "59.25", "60.75"
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
.YRange "59.25", "60.75"
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
.XRange "59", "61"
.YRange "65", "65.5"
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
.XRange "59", "61"
.YRange "55", "54.5"
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
.XRange "54.5", "55"
.YRange "59", "61"
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
.XRange "65", "65.5"
.YRange "59", "61"
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

'@ define brick: unitcell4x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.XRange "74.25", "75.75"
.YRange "60.5", "61"
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
.XRange "74.25", "75.75"
.YRange "59.5", "59"
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
.XRange "74", "74.5"
.YRange "59.25", "60.75"
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
.XRange "75.5", "76"
.YRange "59.25", "60.75"
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
.XRange "85.5", "94.5"
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
.YRange "55.5", "64.5"
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
.XRange "89", "91"
.YRange "65", "65.5"
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
.XRange "89", "91"
.YRange "55", "54.5"
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
.XRange "84.5", "85"
.YRange "59", "61"
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
.XRange "95", "95.5"
.YRange "59", "61"
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
.YRange "57.75", "62.25"
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
.XRange "102.75", "107.25"
.YRange "59.5", "60.5"
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
.XRange "104", "106"
.YRange "62.25", "62.75"
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
.XRange "104", "106"
.YRange "57.75", "57.25"
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
.XRange "102.25", "102.75"
.YRange "59", "61"
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
.XRange "107.25", "107.75"
.YRange "59", "61"
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

'@ define brick: unitcell5x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.XRange "-105.75", "-104.25"
.YRange "45.5", "46"
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
.XRange "-105.75", "-104.25"
.YRange "44.5", "44"
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
.XRange "-106", "-105.5"
.YRange "44.25", "45.75"
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
.XRange "-104.5", "-104"
.YRange "44.25", "45.75"
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
.XRange "-90.25", "-89.75"
.YRange "40", "50"
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
.XRange "-95", "-85"
.YRange "44.75", "45.25"
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
.XRange "-90.75", "-89.25"
.YRange "50", "50.5"
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
.XRange "-90.75", "-89.25"
.YRange "40", "39.5"
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
.XRange "-95.5", "-95"
.YRange "44.25", "45.75"
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
.XRange "-85", "-84.5"
.YRange "44.25", "45.75"
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
.XRange "-75.5", "-74.5"
.YRange "40.5", "49.5"
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
.XRange "-79.5", "-70.5"
.YRange "44.5", "45.5"
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
.XRange "-76", "-74"
.YRange "49.5", "50"
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
.XRange "-76", "-74"
.YRange "40.5", "40"
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
.XRange "-80", "-79.5"
.YRange "44", "46"
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
.XRange "-70.5", "-70"
.YRange "44", "46"
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
.XRange "-60.25", "-59.75"
.YRange "40", "50"
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
.XRange "-65", "-55"
.YRange "44.75", "45.25"
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
.XRange "-60.75", "-59.25"
.YRange "50", "50.5"
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
.XRange "-60.75", "-59.25"
.YRange "40", "39.5"
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
.XRange "-65.5", "-65"
.YRange "44.25", "45.75"
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
.XRange "-55", "-54.5"
.YRange "44.25", "45.75"
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
.XRange "-47.5", "-42.5"
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
.YRange "42.5", "47.5"
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
.XRange "-46", "-44"
.YRange "50", "50.5"
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
.XRange "-46", "-44"
.YRange "40", "39.5"
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
.XRange "-50.5", "-50"
.YRange "44", "46"
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
.XRange "-40", "-39.5"
.YRange "44", "46"
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

'@ define brick: unitcell5x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.XRange "-30.75", "-29.25"
.YRange "50", "50.5"
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
.XRange "-30.75", "-29.25"
.YRange "40", "39.5"
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
.XRange "-35.5", "-35"
.YRange "44.25", "45.75"
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
.XRange "-25", "-24.5"
.YRange "44.25", "45.75"
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
.XRange "-15.25", "-14.75"
.YRange "40", "50"
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
.XRange "-20", "-10"
.YRange "44.75", "45.25"
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
.XRange "-15.75", "-14.25"
.YRange "50", "50.5"
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
.XRange "-15.75", "-14.25"
.YRange "40", "39.5"
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
.XRange "-20.5", "-20"
.YRange "44.25", "45.75"
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
.XRange "-10", "-9.5"
.YRange "44.25", "45.75"
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
.XRange "-0.25", "0.25"
.YRange "40", "50"
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
.XRange "-5", "5"
.YRange "44.75", "45.25"
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
.XRange "-0.75", "0.75"
.YRange "50", "50.5"
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
.XRange "-0.75", "0.75"
.YRange "40", "39.5"
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
.XRange "-5.5", "-5"
.YRange "44.25", "45.75"
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
.XRange "5", "5.5"
.YRange "44.25", "45.75"
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

'@ define brick: unitcell5x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.XRange "14.25", "15.75"
.YRange "50", "50.5"
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
.XRange "14.25", "15.75"
.YRange "40", "39.5"
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
.XRange "9.5", "10"
.YRange "44.25", "45.75"
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
.XRange "20", "20.5"
.YRange "44.25", "45.75"
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

'@ define brick: unitcell5x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.XRange "29.25", "30.75"
.YRange "45.5", "46"
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
.XRange "29.25", "30.75"
.YRange "44.5", "44"
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
.XRange "29", "29.5"
.YRange "44.25", "45.75"
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
.XRange "30.5", "31"
.YRange "44.25", "45.75"
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
.XRange "42", "48"
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
.YRange "42", "48"
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
.XRange "44", "46"
.YRange "50", "50.5"
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
.XRange "44", "46"
.YRange "40", "39.5"
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
.XRange "39.5", "40"
.YRange "44", "46"
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
.XRange "50", "50.5"
.YRange "44", "46"
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

'@ define brick: unitcell5x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.XRange "59.25", "60.75"
.YRange "50", "50.5"
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
.XRange "59.25", "60.75"
.YRange "40", "39.5"
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
.XRange "54.5", "55"
.YRange "44.25", "45.75"
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
.XRange "65", "65.5"
.YRange "44.25", "45.75"
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

'@ define brick: unitcell5x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.XRange "74.25", "75.75"
.YRange "50", "50.5"
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
.XRange "74.25", "75.75"
.YRange "40", "39.5"
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
.XRange "69.5", "70"
.YRange "44.25", "45.75"
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
.XRange "80", "80.5"
.YRange "44.25", "45.75"
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
.YRange "44", "46"
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
.XRange "89", "91"
.YRange "44.5", "45.5"
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
.XRange "89.25", "90.75"
.YRange "46", "46.5"
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
.XRange "89.25", "90.75"
.YRange "44", "43.5"
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
.XRange "88.5", "89"
.YRange "44.25", "45.75"
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
.XRange "91", "91.5"
.YRange "44.25", "45.75"
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

'@ define brick: unitcell5x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.XRange "104.25", "105.75"
.YRange "45.5", "46"
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
.XRange "104.25", "105.75"
.YRange "44.5", "44"
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
.XRange "104", "104.5"
.YRange "44.25", "45.75"
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
.XRange "105.5", "106"
.YRange "44.25", "45.75"
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
.XRange "-105.25", "-104.75"
.YRange "25", "35"
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
.XRange "-110", "-100"
.YRange "29.75", "30.25"
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
.XRange "-105.75", "-104.25"
.YRange "35", "35.5"
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
.XRange "-105.75", "-104.25"
.YRange "25", "24.5"
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
.XRange "-110.5", "-110"
.YRange "29.25", "30.75"
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
.XRange "-100", "-99.5"
.YRange "29.25", "30.75"
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
.XRange "-90.25", "-89.75"
.YRange "25", "35"
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
.XRange "-95", "-85"
.YRange "29.75", "30.25"
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
.XRange "-90.75", "-89.25"
.YRange "35", "35.5"
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
.XRange "-90.75", "-89.25"
.YRange "25", "24.5"
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
.XRange "-95.5", "-95"
.YRange "29.25", "30.75"
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
.XRange "-85", "-84.5"
.YRange "29.25", "30.75"
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
.YRange "27.75", "32.25"
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
.XRange "-77.25", "-72.75"
.YRange "29.5", "30.5"
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
.XRange "-76", "-74"
.YRange "32.25", "32.75"
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
.XRange "-76", "-74"
.YRange "27.75", "27.25"
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
.XRange "-77.75", "-77.25"
.YRange "29", "31"
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
.XRange "-72.75", "-72.25"
.YRange "29", "31"
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
.XRange "-60.25", "-59.75"
.YRange "25", "35"
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
.XRange "-65", "-55"
.YRange "29.75", "30.25"
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
.XRange "-60.75", "-59.25"
.YRange "35", "35.5"
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
.XRange "-60.75", "-59.25"
.YRange "25", "24.5"
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
.XRange "-65.5", "-65"
.YRange "29.25", "30.75"
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
.XRange "-55", "-54.5"
.YRange "29.25", "30.75"
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
.XRange "-45.5", "-44.5"
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
.YRange "29.5", "30.5"
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
.XRange "-46", "-44"
.YRange "35", "35"
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
.XRange "-46", "-44"
.YRange "25", "25"
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
.XRange "-50", "-50"
.YRange "29", "31"
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
.XRange "-40", "-40"
.YRange "29", "31"
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

'@ define brick: unitcell6x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.XRange "-30.75", "-29.25"
.YRange "30.5", "31"
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
.XRange "-30.75", "-29.25"
.YRange "29.5", "29"
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
.XRange "-31", "-30.5"
.YRange "29.25", "30.75"
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
.XRange "-29.5", "-29"
.YRange "29.25", "30.75"
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
.YRange "26", "34"
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
.XRange "-19", "-11"
.YRange "29.5", "30.5"
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
.XRange "-15.75", "-14.25"
.YRange "34", "34.5"
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
.XRange "-15.75", "-14.25"
.YRange "26", "25.5"
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
.XRange "-19.5", "-19"
.YRange "29.25", "30.75"
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
.XRange "-11", "-10.5"
.YRange "29.25", "30.75"
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

'@ define brick: unitcell6x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.XRange "-0.75", "0.75"
.YRange "30.5", "31"
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
.XRange "-0.75", "0.75"
.YRange "29.5", "29"
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
.XRange "-1", "-0.5"
.YRange "29.25", "30.75"
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
.XRange "0.5", "1"
.YRange "29.25", "30.75"
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
.XRange "14", "16"
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
.YRange "29", "31"
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
.XRange "14", "16"
.YRange "35", "35.5"
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
.XRange "14", "16"
.YRange "25", "24.5"
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
.XRange "9.5", "10"
.YRange "29", "31"
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
.XRange "20", "20.5"
.YRange "29", "31"
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

'@ define brick: unitcell6x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.XRange "29.25", "30.75"
.YRange "30.5", "31"
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
.XRange "29.25", "30.75"
.YRange "29.5", "29"
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
.XRange "29", "29.5"
.YRange "29.25", "30.75"
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
.XRange "30.5", "31"
.YRange "29.25", "30.75"
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
.YRange "27", "33"
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
.XRange "42", "48"
.YRange "29.5", "30.5"
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
.XRange "44", "46"
.YRange "33", "33.5"
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
.XRange "44", "46"
.YRange "27", "26.5"
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
.XRange "41.5", "42"
.YRange "29", "31"
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
.XRange "48", "48.5"
.YRange "29", "31"
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

'@ define brick: unitcell6x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.XRange "59.25", "60.75"
.YRange "35", "35.5"
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
.XRange "59.25", "60.75"
.YRange "25", "24.5"
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
.XRange "54.5", "55"
.YRange "29.25", "30.75"
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
.XRange "65", "65.5"
.YRange "29.25", "30.75"
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
.XRange "74.75", "75.25"
.YRange "25", "35"
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
.XRange "70", "80"
.YRange "29.75", "30.25"
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
.XRange "74.25", "75.75"
.YRange "35", "35.5"
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
.XRange "74.25", "75.75"
.YRange "25", "24.5"
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
.XRange "69.5", "70"
.YRange "29.25", "30.75"
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
.XRange "80", "80.5"
.YRange "29.25", "30.75"
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

'@ define brick: unitcell6x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.XRange "89.25", "90.75"
.YRange "30.5", "31"
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
.XRange "89.25", "90.75"
.YRange "29.5", "29"
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
.XRange "89", "89.5"
.YRange "29.25", "30.75"
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
.XRange "90.5", "91"
.YRange "29.25", "30.75"
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
.YRange "27", "33"
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
.XRange "102", "108"
.YRange "29.5", "30.5"
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
.XRange "104.25", "105.75"
.YRange "33", "33.5"
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
.XRange "104.25", "105.75"
.YRange "27", "26.5"
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
.XRange "101.5", "102"
.YRange "29.25", "30.75"
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
.XRange "108", "108.5"
.YRange "29.25", "30.75"
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
.XRange "-105.25", "-104.75"
.YRange "10", "20"
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
.XRange "-110", "-100"
.YRange "14.75", "15.25"
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
.XRange "-105.75", "-104.25"
.YRange "20", "20.5"
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
.XRange "-105.75", "-104.25"
.YRange "10", "9.5"
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
.XRange "-110.5", "-110"
.YRange "14.25", "15.75"
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
.XRange "-100", "-99.5"
.YRange "14.25", "15.75"
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
.YRange "11.5", "18.5"
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
.XRange "-93.5", "-86.5"
.YRange "14.5", "15.5"
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
.XRange "-91", "-89"
.YRange "18.5", "19"
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
.XRange "-91", "-89"
.YRange "11.5", "11"
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
.XRange "-94", "-93.5"
.YRange "14", "16"
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
.XRange "-86.5", "-86"
.YRange "14", "16"
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
.XRange "-75.5", "-74.5"
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
.YRange "14.5", "15.5"
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
.XRange "-75.5", "-74.5"
.YRange "20", "20.5"
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
.XRange "-75.5", "-74.5"
.YRange "10", "9.5"
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
.XRange "-80.5", "-80"
.YRange "14.5", "15.5"
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
.XRange "-70", "-69.5"
.YRange "14.5", "15.5"
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
.YRange "11.75", "18.25"
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
.XRange "-63.25", "-56.75"
.YRange "14.5", "15.5"
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
.XRange "-60.75", "-59.25"
.YRange "18.25", "18.75"
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
.XRange "-60.75", "-59.25"
.YRange "11.75", "11.25"
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
.XRange "-63.75", "-63.25"
.YRange "14.25", "15.75"
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
.XRange "-56.75", "-56.25"
.YRange "14.25", "15.75"
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
.XRange "-45.25", "-44.75"
.YRange "10", "20"
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
.XRange "-50", "-40"
.YRange "14.75", "15.25"
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
.XRange "-45.75", "-44.25"
.YRange "20", "20.5"
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
.XRange "-45.75", "-44.25"
.YRange "10", "9.5"
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
.XRange "-50.5", "-50"
.YRange "14.25", "15.75"
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
.XRange "-40", "-39.5"
.YRange "14.25", "15.75"
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
.YRange "11.5", "18.5"
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
.XRange "-33.5", "-26.5"
.YRange "14.5", "15.5"
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
.XRange "-31", "-29"
.YRange "18.5", "19"
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
.XRange "-31", "-29"
.YRange "11.5", "11"
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
.XRange "-34", "-33.5"
.YRange "14", "16"
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
.XRange "-26.5", "-26"
.YRange "14", "16"
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
.XRange "-15.5", "-14.5"
.YRange "10.25", "19.75"
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
.XRange "-19.75", "-10.25"
.YRange "14.5", "15.5"
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
.XRange "-16", "-14"
.YRange "19.75", "20.25"
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
.XRange "-16", "-14"
.YRange "10.25", "9.75"
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
.XRange "-20.25", "-19.75"
.YRange "14", "16"
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
.XRange "-10.25", "-9.75"
.YRange "14", "16"
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

'@ define brick: unitcell7x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.XRange "-0.75", "0.75"
.YRange "15.5", "16"
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
.XRange "-0.75", "0.75"
.YRange "14.5", "14"
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
.XRange "-1", "-0.5"
.YRange "14.25", "15.75"
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
.XRange "0.5", "1"
.YRange "14.25", "15.75"
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
.YRange "11.25", "18.75"
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
.XRange "11.25", "18.75"
.YRange "14.5", "15.5"
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
.XRange "14.25", "15.75"
.YRange "18.75", "19.25"
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
.XRange "14.25", "15.75"
.YRange "11.25", "10.75"
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
.XRange "10.75", "11.25"
.YRange "14.25", "15.75"
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
.XRange "18.75", "19.25"
.YRange "14.25", "15.75"
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

'@ define brick: unitcell7x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.XRange "29.25", "30.75"
.YRange "20", "20.5"
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
.XRange "29.25", "30.75"
.YRange "10", "9.5"
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
.XRange "24.5", "25"
.YRange "14.25", "15.75"
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
.XRange "35", "35.5"
.YRange "14.25", "15.75"
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
.YRange "12.25", "17.75"
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
.XRange "42.25", "47.75"
.YRange "14.5", "15.5"
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
.XRange "44", "46"
.YRange "17.75", "18.25"
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
.XRange "44", "46"
.YRange "12.25", "11.75"
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
.XRange "41.75", "42.25"
.YRange "14", "16"
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
.XRange "47.75", "48.25"
.YRange "14", "16"
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

'@ define brick: unitcell7x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.XRange "59.25", "60.75"
.YRange "20", "20.5"
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
.XRange "59.25", "60.75"
.YRange "10", "9.5"
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
.XRange "54.5", "55"
.YRange "14.25", "15.75"
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
.XRange "65", "65.5"
.YRange "14.25", "15.75"
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
.XRange "74.5", "75.5"
.YRange "10.5", "19.5"
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
.XRange "70.5", "79.5"
.YRange "14.5", "15.5"
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
.XRange "74", "76"
.YRange "19.5", "20"
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
.XRange "74", "76"
.YRange "10.5", "10"
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
.XRange "70", "70.5"
.YRange "14", "16"
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
.XRange "79.5", "80"
.YRange "14", "16"
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
.YRange "11", "19"
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
.XRange "86", "94"
.YRange "14.5", "15.5"
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
.XRange "89.25", "90.75"
.YRange "19", "19.5"
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
.XRange "89.25", "90.75"
.YRange "11", "10.5"
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
.XRange "85.5", "86"
.YRange "14.25", "15.75"
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
.XRange "94", "94.5"
.YRange "14.25", "15.75"
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

'@ define brick: unitcell7x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.XRange "104.25", "105.75"
.YRange "20", "20.5"
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
.XRange "104.25", "105.75"
.YRange "10", "9.5"
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
.XRange "99.5", "100"
.YRange "14.25", "15.75"
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
.XRange "110", "110.5"
.YRange "14.25", "15.75"
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
.YRange "-1.75", "1.75"
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
.XRange "-106.75", "-103.25"
.YRange "-0.5", "0.5"
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
.XRange "-106", "-104"
.YRange "1.75", "2.25"
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
.XRange "-106", "-104"
.YRange "-1.75", "-2.25"
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
.XRange "-107.25", "-106.75"
.YRange "-1", "1"
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
.XRange "-103.25", "-102.75"
.YRange "-1", "1"
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
.YRange "-2.25", "2.25"
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
.XRange "-92.25", "-87.75"
.YRange "-0.5", "0.5"
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
.XRange "-91", "-89"
.YRange "2.25", "2.75"
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
.XRange "-91", "-89"
.YRange "-2.25", "-2.75"
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
.XRange "-92.75", "-92.25"
.YRange "-1", "1"
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
.XRange "-87.75", "-87.25"
.YRange "-1", "1"
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
.XRange "-75.5", "-74.5"
.YRange "-4.25", "4.25"
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
.XRange "-79.25", "-70.75"
.YRange "-0.5", "0.5"
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
.XRange "-75.75", "-74.25"
.YRange "4.25", "4.75"
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
.XRange "-75.75", "-74.25"
.YRange "-4.25", "-4.75"
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
.XRange "-79.75", "-79.25"
.YRange "-0.75", "0.75"
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
.XRange "-70.75", "-70.25"
.YRange "-0.75", "0.75"
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
.YRange "-3.75", "3.75"
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
.XRange "-63.75", "-56.25"
.YRange "-0.5", "0.5"
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
.XRange "-60.75", "-59.25"
.YRange "3.75", "4.25"
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
.XRange "-60.75", "-59.25"
.YRange "-3.75", "-4.25"
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
.XRange "-64.25", "-63.75"
.YRange "-0.75", "0.75"
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
.XRange "-56.25", "-55.75"
.YRange "-0.75", "0.75"
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

'@ define brick: unitcell8x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.XRange "-45.75", "-44.25"
.YRange "0.5", "1"
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
.XRange "-45.75", "-44.25"
.YRange "-0.5", "-1"
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
.XRange "-46", "-45.5"
.YRange "-0.75", "0.75"
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
.XRange "-44.5", "-44"
.YRange "-0.75", "0.75"
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
.XRange "-30.5", "-29.5"
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
.YRange "-0.5", "0.5"
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
.XRange "-30", "-30"
.YRange "5", "5.5"
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
.XRange "-30", "-30"
.YRange "-5", "-5.5"
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
.XRange "-35.5", "-35"
.YRange "0", "0"
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
.XRange "-25", "-24.5"
.YRange "0", "0"
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

'@ define brick: unitcell8x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.XRange "-15.75", "-14.25"
.YRange "5", "5.5"
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
.XRange "-15.75", "-14.25"
.YRange "-5", "-5.5"
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
.XRange "-20.5", "-20"
.YRange "-0.75", "0.75"
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
.XRange "-10", "-9.5"
.YRange "-0.75", "0.75"
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

'@ define brick: unitcell8x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.XRange "-0.75", "0.75"
.YRange "0.5", "1"
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
.XRange "-0.75", "0.75"
.YRange "-0.5", "-1"
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
.XRange "-1", "-0.5"
.YRange "-0.75", "0.75"
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
.XRange "0.5", "1"
.YRange "-0.75", "0.75"
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

'@ define brick: unitcell8x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.XRange "14.25", "15.75"
.YRange "5", "5.5"
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
.XRange "14.25", "15.75"
.YRange "-5", "-5.5"
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
.XRange "9.5", "10"
.YRange "-0.75", "0.75"
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
.XRange "20", "20.5"
.YRange "-0.75", "0.75"
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
.YRange "-2.75", "2.75"
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
.XRange "27.25", "32.75"
.YRange "-0.5", "0.5"
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
.XRange "29.25", "30.75"
.YRange "2.75", "3.25"
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
.XRange "29.25", "30.75"
.YRange "-2.75", "-3.25"
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
.XRange "26.75", "27.25"
.YRange "-0.75", "0.75"
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
.XRange "32.75", "33.25"
.YRange "-0.75", "0.75"
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
.XRange "44.75", "45.25"
.YRange "-5", "5"
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
.XRange "40", "50"
.YRange "-0.25", "0.25"
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
.XRange "44.25", "45.75"
.YRange "5", "5.5"
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
.XRange "44.25", "45.75"
.YRange "-5", "-5.5"
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
.XRange "39.5", "40"
.YRange "-0.75", "0.75"
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
.XRange "50", "50.5"
.YRange "-0.75", "0.75"
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
.YRange "-3.75", "3.75"
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
.XRange "56.25", "63.75"
.YRange "-0.5", "0.5"
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
.XRange "59.25", "60.75"
.YRange "3.75", "4.25"
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
.XRange "59.25", "60.75"
.YRange "-3.75", "-4.25"
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
.XRange "55.75", "56.25"
.YRange "-0.75", "0.75"
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
.XRange "63.75", "64.25"
.YRange "-0.75", "0.75"
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
.YRange "-4", "4"
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
.XRange "71", "79"
.YRange "-0.5", "0.5"
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
.XRange "74.25", "75.75"
.YRange "4", "4.5"
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
.XRange "74.25", "75.75"
.YRange "-4", "-4.5"
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
.XRange "70.5", "71"
.YRange "-0.75", "0.75"
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
.XRange "79", "79.5"
.YRange "-0.75", "0.75"
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

'@ define brick: unitcell8x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.XRange "89.25", "90.75"
.YRange "5", "5.5"
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
.XRange "89.25", "90.75"
.YRange "-5", "-5.5"
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
.XRange "84.5", "85"
.YRange "-0.75", "0.75"
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
.XRange "95", "95.5"
.YRange "-0.75", "0.75"
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
.XRange "102.5", "107.5"
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
.YRange "-2.5", "2.5"
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
.XRange "104", "106"
.YRange "5", "5.5"
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
.XRange "104", "106"
.YRange "-5", "-5.5"
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
.XRange "99.5", "100"
.YRange "-1", "1"
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
.XRange "110", "110.5"
.YRange "-1", "1"
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

'@ define brick: unitcell9x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.XRange "-105.75", "-104.25"
.YRange "-10", "-9.5"
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
.XRange "-105.75", "-104.25"
.YRange "-20", "-20.5"
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
.XRange "-110.5", "-110"
.YRange "-15.75", "-14.25"
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
.XRange "-100", "-99.5"
.YRange "-15.75", "-14.25"
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
.YRange "-19", "-11"
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
.XRange "-94", "-86"
.YRange "-15.5", "-14.5"
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
.XRange "-90.75", "-89.25"
.YRange "-11", "-10.5"
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
.XRange "-90.75", "-89.25"
.YRange "-19", "-19.5"
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
.XRange "-94.5", "-94"
.YRange "-15.75", "-14.25"
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
.XRange "-86", "-85.5"
.YRange "-15.75", "-14.25"
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
.XRange "-76", "-74"
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
.YRange "-16", "-14"
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
.XRange "-76", "-74"
.YRange "-10", "-9.5"
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
.XRange "-76", "-74"
.YRange "-20", "-20.5"
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
.XRange "-80.5", "-80"
.YRange "-16", "-14"
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
.XRange "-70", "-69.5"
.YRange "-16", "-14"
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
.XRange "-60.5", "-59.5"
.YRange "-19.25", "-10.75"
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
.XRange "-64.25", "-55.75"
.YRange "-15.5", "-14.5"
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
.XRange "-60.75", "-59.25"
.YRange "-10.75", "-10.25"
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
.XRange "-60.75", "-59.25"
.YRange "-19.25", "-19.75"
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
.XRange "-64.75", "-64.25"
.YRange "-15.75", "-14.25"
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
.XRange "-55.75", "-55.25"
.YRange "-15.75", "-14.25"
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

'@ define brick: unitcell9x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.XRange "-45.75", "-44.25"
.YRange "-14.5", "-14"
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
.XRange "-45.75", "-44.25"
.YRange "-15.5", "-16"
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
.XRange "-46", "-45.5"
.YRange "-15.75", "-14.25"
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
.XRange "-44.5", "-44"
.YRange "-15.75", "-14.25"
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
.YRange "-16", "-14"
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
.XRange "-31", "-29"
.YRange "-15.5", "-14.5"
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
.XRange "-31", "-29"
.YRange "-14", "-13.5"
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
.XRange "-31", "-29"
.YRange "-16", "-16.5"
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
.XRange "-31.5", "-31"
.YRange "-16", "-14"
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
.XRange "-29", "-28.5"
.YRange "-16", "-14"
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
.XRange "-15.5", "-14.5"
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
.YRange "-15.5", "-14.5"
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
.XRange "-15.25", "-14.75"
.YRange "-10", "-9.5"
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
.XRange "-15.25", "-14.75"
.YRange "-20", "-20.5"
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
.XRange "-20.5", "-20"
.YRange "-15.25", "-14.75"
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
.XRange "-10", "-9.5"
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
.YRange "-17", "-13"
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
.XRange "-2", "2"
.YRange "-15.5", "-14.5"
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
.XRange "-0.75", "0.75"
.YRange "-13", "-12.5"
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
.XRange "-0.75", "0.75"
.YRange "-17", "-17.5"
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
.XRange "-2.5", "-2"
.YRange "-15.75", "-14.25"
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
.XRange "2", "2.5"
.YRange "-15.75", "-14.25"
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
.YRange "-18", "-12"
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
.XRange "12", "18"
.YRange "-15.5", "-14.5"
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
.XRange "14.25", "15.75"
.YRange "-12", "-11.5"
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
.XRange "14.25", "15.75"
.YRange "-18", "-18.5"
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
.XRange "11.5", "12"
.YRange "-15.75", "-14.25"
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
.XRange "18", "18.5"
.YRange "-15.75", "-14.25"
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
.XRange "29.5", "30.5"
.YRange "-19.5", "-10.5"
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
.XRange "25.5", "34.5"
.YRange "-15.5", "-14.5"
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
.XRange "29", "31"
.YRange "-10.5", "-10"
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
.XRange "29", "31"
.YRange "-19.5", "-20"
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
.XRange "25", "25.5"
.YRange "-16", "-14"
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
.XRange "34.5", "35"
.YRange "-16", "-14"
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

'@ define brick: unitcell9x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.XRange "44.25", "45.75"
.YRange "-14.5", "-14"
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
.XRange "44.25", "45.75"
.YRange "-15.5", "-16"
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
.XRange "44", "44.5"
.YRange "-15.75", "-14.25"
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
.XRange "45.5", "46"
.YRange "-15.75", "-14.25"
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
.XRange "59.5", "60.5"
.YRange "-19.75", "-10.25"
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
.XRange "55.25", "64.75"
.YRange "-15.5", "-14.5"
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
.XRange "59", "61"
.YRange "-10.25", "-9.75"
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
.XRange "59", "61"
.YRange "-19.75", "-20.25"
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
.XRange "54.75", "55.25"
.YRange "-16", "-14"
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
.XRange "64.75", "65.25"
.YRange "-16", "-14"
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
.YRange "-17", "-13"
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
.XRange "73", "77"
.YRange "-15.5", "-14.5"
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
.XRange "74", "76"
.YRange "-13", "-12.5"
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
.XRange "74", "76"
.YRange "-17", "-17.5"
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
.XRange "72.5", "73"
.YRange "-16", "-14"
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
.XRange "77", "77.5"
.YRange "-16", "-14"
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
.YRange "-18.75", "-11.25"
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
.XRange "86.25", "93.75"
.YRange "-15.5", "-14.5"
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
.XRange "89", "91"
.YRange "-11.25", "-10.75"
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
.XRange "89", "91"
.YRange "-18.75", "-19.25"
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
.XRange "85.75", "86.25"
.YRange "-16", "-14"
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
.XRange "93.75", "94.25"
.YRange "-16", "-14"
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

'@ define brick: unitcell9x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.XRange "104.25", "105.75"
.YRange "-10", "-9.5"
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
.XRange "104.25", "105.75"
.YRange "-20", "-20.5"
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
.XRange "99.5", "100"
.YRange "-15.75", "-14.25"
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
.XRange "110", "110.5"
.YRange "-15.75", "-14.25"
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
.YRange "-32.75", "-27.25"
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
.XRange "-107.75", "-102.25"
.YRange "-30.5", "-29.5"
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
.XRange "-105.75", "-104.25"
.YRange "-27.25", "-26.75"
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
.XRange "-105.75", "-104.25"
.YRange "-32.75", "-33.25"
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
.XRange "-108.25", "-107.75"
.YRange "-30.75", "-29.25"
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
.XRange "-102.25", "-101.75"
.YRange "-30.75", "-29.25"
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
.YRange "-32.5", "-27.5"
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
.XRange "-92.5", "-87.5"
.YRange "-30.5", "-29.5"
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
.XRange "-91", "-89"
.YRange "-27.5", "-27"
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
.XRange "-91", "-89"
.YRange "-32.5", "-33"
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
.XRange "-93", "-92.5"
.YRange "-31", "-29"
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
.XRange "-87.5", "-87"
.YRange "-31", "-29"
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

'@ define brick: unitcell10x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.XRange "-75.75", "-74.25"
.YRange "-25", "-24.5"
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
.XRange "-75.75", "-74.25"
.YRange "-35", "-35.5"
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
.XRange "-80.5", "-80"
.YRange "-30.75", "-29.25"
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
.XRange "-70", "-69.5"
.YRange "-30.75", "-29.25"
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
.XRange "-60.25", "-59.75"
.YRange "-35", "-25"
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
.XRange "-65", "-55"
.YRange "-30.25", "-29.75"
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
.XRange "-60.75", "-59.25"
.YRange "-25", "-24.5"
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
.XRange "-60.75", "-59.25"
.YRange "-35", "-35.5"
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
.XRange "-65.5", "-65"
.YRange "-30.75", "-29.25"
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
.XRange "-55", "-54.5"
.YRange "-30.75", "-29.25"
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

'@ define brick: unitcell10x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.XRange "-45.75", "-44.25"
.YRange "-25", "-24.5"
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
.XRange "-45.75", "-44.25"
.YRange "-35", "-35.5"
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
.XRange "-50.5", "-50"
.YRange "-30.75", "-29.25"
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
.XRange "-40", "-39.5"
.YRange "-30.75", "-29.25"
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
.XRange "-30.25", "-29.75"
.YRange "-35", "-25"
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
.XRange "-35", "-25"
.YRange "-30.25", "-29.75"
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
.XRange "-30.75", "-29.25"
.YRange "-25", "-24.5"
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
.XRange "-30.75", "-29.25"
.YRange "-35", "-35.5"
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
.XRange "-35.5", "-35"
.YRange "-30.75", "-29.25"
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
.XRange "-25", "-24.5"
.YRange "-30.75", "-29.25"
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
.XRange "-15.5", "-14.5"
.YRange "-34.25", "-25.75"
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
.XRange "-19.25", "-10.75"
.YRange "-30.5", "-29.5"
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
.XRange "-16", "-14"
.YRange "-25.75", "-25.25"
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
.XRange "-16", "-14"
.YRange "-34.25", "-34.75"
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
.XRange "-19.75", "-19.25"
.YRange "-31", "-29"
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
.XRange "-10.75", "-10.25"
.YRange "-31", "-29"
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
.XRange "-0.5", "0.5"
.YRange "-34.5", "-25.5"
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
.XRange "-4.5", "4.5"
.YRange "-30.5", "-29.5"
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
.XRange "-1", "1"
.YRange "-25.5", "-25"
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
.XRange "-1", "1"
.YRange "-34.5", "-35"
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
.XRange "-5", "-4.5"
.YRange "-31", "-29"
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
.XRange "4.5", "5"
.YRange "-31", "-29"
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
.XRange "14.5", "15.5"
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
.YRange "-30.5", "-29.5"
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
.XRange "15", "15"
.YRange "-25", "-24.5"
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
.XRange "15", "15"
.YRange "-35", "-35.5"
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
.XRange "9.5", "10"
.YRange "-30", "-30"
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
.XRange "20", "20.5"
.YRange "-30", "-30"
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
.XRange "29.75", "30.25"
.YRange "-35", "-25"
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
.XRange "25", "35"
.YRange "-30.25", "-29.75"
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
.XRange "29.25", "30.75"
.YRange "-25", "-24.5"
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
.XRange "29.25", "30.75"
.YRange "-35", "-35.5"
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
.XRange "24.5", "25"
.YRange "-30.75", "-29.25"
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
.XRange "35", "35.5"
.YRange "-30.75", "-29.25"
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

'@ define brick: unitcell10x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.XRange "44.25", "45.75"
.YRange "-29.5", "-29"
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
.XRange "44.25", "45.75"
.YRange "-30.5", "-31"
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
.XRange "44", "44.5"
.YRange "-30.75", "-29.25"
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
.XRange "45.5", "46"
.YRange "-30.75", "-29.25"
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
.XRange "59.5", "60.5"
.YRange "-34.5", "-25.5"
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
.XRange "55.5", "64.5"
.YRange "-30.5", "-29.5"
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
.XRange "59", "61"
.YRange "-25.5", "-25"
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
.XRange "59", "61"
.YRange "-34.5", "-35"
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
.XRange "55", "55.5"
.YRange "-31", "-29"
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
.XRange "64.5", "65"
.YRange "-31", "-29"
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

'@ define brick: unitcell10x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.XRange "74.25", "75.75"
.YRange "-29.5", "-29"
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
.XRange "74.25", "75.75"
.YRange "-30.5", "-31"
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
.XRange "74", "74.5"
.YRange "-30.75", "-29.25"
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
.XRange "75.5", "76"
.YRange "-30.75", "-29.25"
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

'@ define brick: unitcell10x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.XRange "89.25", "90.75"
.YRange "-25", "-24.5"
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
.XRange "89.25", "90.75"
.YRange "-35", "-35.5"
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
.XRange "84.5", "85"
.YRange "-30.75", "-29.25"
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
.XRange "95", "95.5"
.YRange "-30.75", "-29.25"
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
.YRange "-34", "-26"
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
.XRange "101", "109"
.YRange "-30.5", "-29.5"
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
.XRange "104.25", "105.75"
.YRange "-26", "-25.5"
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
.XRange "104.25", "105.75"
.YRange "-34", "-34.5"
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
.XRange "100.5", "101"
.YRange "-30.75", "-29.25"
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
.XRange "109", "109.5"
.YRange "-30.75", "-29.25"
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
.YRange "-48.25", "-41.75"
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
.XRange "-108.25", "-101.75"
.YRange "-45.5", "-44.5"
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
.XRange "-105.75", "-104.25"
.YRange "-41.75", "-41.25"
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
.XRange "-105.75", "-104.25"
.YRange "-48.25", "-48.75"
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
.XRange "-108.75", "-108.25"
.YRange "-45.75", "-44.25"
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
.XRange "-101.75", "-101.25"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x2:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.XRange "-90.75", "-89.25"
.YRange "-44.5", "-44"
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
.XRange "-90.75", "-89.25"
.YRange "-45.5", "-46"
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
.XRange "-91", "-90.5"
.YRange "-45.75", "-44.25"
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
.XRange "-89.5", "-89"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.XRange "-75.75", "-74.25"
.YRange "-40", "-39.5"
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
.XRange "-75.75", "-74.25"
.YRange "-50", "-50.5"
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
.XRange "-80.5", "-80"
.YRange "-45.75", "-44.25"
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
.XRange "-70", "-69.5"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.XRange "-60.75", "-59.25"
.YRange "-44.5", "-44"
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
.XRange "-60.75", "-59.25"
.YRange "-45.5", "-46"
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
.XRange "-61", "-60.5"
.YRange "-45.75", "-44.25"
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
.XRange "-59.5", "-59"
.YRange "-45.75", "-44.25"
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
.XRange "-45.5", "-44.5"
.YRange "-49.5", "-40.5"
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
.XRange "-49.5", "-40.5"
.YRange "-45.5", "-44.5"
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
.XRange "-46", "-44"
.YRange "-40.5", "-40"
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
.XRange "-46", "-44"
.YRange "-49.5", "-50"
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
.XRange "-50", "-49.5"
.YRange "-46", "-44"
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
.XRange "-40.5", "-40"
.YRange "-46", "-44"
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

'@ define brick: unitcell11x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.XRange "-30.75", "-29.25"
.YRange "-44.5", "-44"
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
.XRange "-30.75", "-29.25"
.YRange "-45.5", "-46"
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
.XRange "-31", "-30.5"
.YRange "-45.75", "-44.25"
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
.XRange "-29.5", "-29"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.XRange "-15.75", "-14.25"
.YRange "-44.5", "-44"
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
.XRange "-15.75", "-14.25"
.YRange "-45.5", "-46"
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
.XRange "-16", "-15.5"
.YRange "-45.75", "-44.25"
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
.XRange "-14.5", "-14"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.XRange "-0.75", "0.75"
.YRange "-44.5", "-44"
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
.XRange "-0.75", "0.75"
.YRange "-45.5", "-46"
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
.XRange "-1", "-0.5"
.YRange "-45.75", "-44.25"
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
.XRange "0.5", "1"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.XRange "14.25", "15.75"
.YRange "-44.5", "-44"
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
.XRange "14.25", "15.75"
.YRange "-45.5", "-46"
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
.XRange "14", "14.5"
.YRange "-45.75", "-44.25"
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
.XRange "15.5", "16"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.XRange "29.25", "30.75"
.YRange "-40", "-39.5"
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
.XRange "29.25", "30.75"
.YRange "-50", "-50.5"
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
.XRange "24.5", "25"
.YRange "-45.75", "-44.25"
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
.XRange "35", "35.5"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.XRange "44.25", "45.75"
.YRange "-40", "-39.5"
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
.XRange "44.25", "45.75"
.YRange "-50", "-50.5"
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
.XRange "39.5", "40"
.YRange "-45.75", "-44.25"
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
.XRange "50", "50.5"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.XRange "59.25", "60.75"
.YRange "-44.5", "-44"
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
.XRange "59.25", "60.75"
.YRange "-45.5", "-46"
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
.XRange "59", "59.5"
.YRange "-45.75", "-44.25"
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
.XRange "60.5", "61"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.XRange "74.25", "75.75"
.YRange "-44.5", "-44"
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
.XRange "74.25", "75.75"
.YRange "-45.5", "-46"
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
.XRange "74", "74.5"
.YRange "-45.75", "-44.25"
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
.XRange "75.5", "76"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell11x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.XRange "89.25", "90.75"
.YRange "-44.5", "-44"
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
.XRange "89.25", "90.75"
.YRange "-45.5", "-46"
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
.XRange "89", "89.5"
.YRange "-45.75", "-44.25"
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
.XRange "90.5", "91"
.YRange "-45.75", "-44.25"
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
.YRange "-46", "-44"
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
.XRange "104", "106"
.YRange "-45.5", "-44.5"
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
.XRange "104.25", "105.75"
.YRange "-44", "-43.5"
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
.XRange "104.25", "105.75"
.YRange "-46", "-46.5"
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
.XRange "103.5", "104"
.YRange "-45.75", "-44.25"
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
.XRange "106", "106.5"
.YRange "-45.75", "-44.25"
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

'@ define brick: unitcell12x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.XRange "-105.75", "-104.25"
.YRange "-55", "-54.5"
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
.XRange "-105.75", "-104.25"
.YRange "-65", "-65.5"
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
.XRange "-110.5", "-110"
.YRange "-60.75", "-59.25"
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
.XRange "-100", "-99.5"
.YRange "-60.75", "-59.25"
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
.XRange "-90.25", "-89.75"
.YRange "-65", "-55"
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
.XRange "-95", "-85"
.YRange "-60.25", "-59.75"
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
.XRange "-90.75", "-89.25"
.YRange "-55", "-54.5"
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
.XRange "-90.75", "-89.25"
.YRange "-65", "-65.5"
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
.XRange "-95.5", "-95"
.YRange "-60.75", "-59.25"
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
.XRange "-85", "-84.5"
.YRange "-60.75", "-59.25"
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

'@ define brick: unitcell12x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.XRange "-75.75", "-74.25"
.YRange "-59.5", "-59"
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
.XRange "-75.75", "-74.25"
.YRange "-60.5", "-61"
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
.XRange "-76", "-75.5"
.YRange "-60.75", "-59.25"
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
.XRange "-74.5", "-74"
.YRange "-60.75", "-59.25"
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

'@ define brick: unitcell12x4:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.XRange "-60.75", "-59.25"
.YRange "-55", "-54.5"
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
.XRange "-60.75", "-59.25"
.YRange "-65", "-65.5"
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
.XRange "-65.5", "-65"
.YRange "-60.75", "-59.25"
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
.XRange "-55", "-54.5"
.YRange "-60.75", "-59.25"
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

'@ define brick: unitcell12x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.XRange "-45.75", "-44.25"
.YRange "-59.5", "-59"
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
.XRange "-45.75", "-44.25"
.YRange "-60.5", "-61"
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
.XRange "-46", "-45.5"
.YRange "-60.75", "-59.25"
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
.XRange "-44.5", "-44"
.YRange "-60.75", "-59.25"
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
.YRange "-63.75", "-56.25"
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
.XRange "-33.75", "-26.25"
.YRange "-60.5", "-59.5"
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
.XRange "-30.75", "-29.25"
.YRange "-56.25", "-55.75"
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
.XRange "-30.75", "-29.25"
.YRange "-63.75", "-64.25"
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
.XRange "-34.25", "-33.75"
.YRange "-60.75", "-59.25"
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
.XRange "-26.25", "-25.75"
.YRange "-60.75", "-59.25"
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
.XRange "-15.75", "-14.25"
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
.YRange "-60.75", "-59.25"
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
.XRange "-16", "-14"
.YRange "-55", "-54.5"
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
.XRange "-16", "-14"
.YRange "-65", "-65.5"
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
.XRange "-20.5", "-20"
.YRange "-61", "-59"
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
.XRange "-10", "-9.5"
.YRange "-61", "-59"
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

'@ define brick: unitcell12x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.XRange "-0.75", "0.75"
.YRange "-59.5", "-59"
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
.XRange "-0.75", "0.75"
.YRange "-60.5", "-61"
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
.XRange "-1", "-0.5"
.YRange "-60.75", "-59.25"
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
.XRange "0.5", "1"
.YRange "-60.75", "-59.25"
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

'@ define brick: unitcell12x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.XRange "14.25", "15.75"
.YRange "-55", "-54.5"
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
.XRange "14.25", "15.75"
.YRange "-65", "-65.5"
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
.XRange "9.5", "10"
.YRange "-60.75", "-59.25"
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
.XRange "20", "20.5"
.YRange "-60.75", "-59.25"
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

'@ define brick: unitcell12x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.XRange "29.25", "30.75"
.YRange "-59.5", "-59"
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
.XRange "29.25", "30.75"
.YRange "-60.5", "-61"
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
.XRange "29", "29.5"
.YRange "-60.75", "-59.25"
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
.XRange "30.5", "31"
.YRange "-60.75", "-59.25"
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

'@ define brick: unitcell12x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.XRange "44.25", "45.75"
.YRange "-59.5", "-59"
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
.XRange "44.25", "45.75"
.YRange "-60.5", "-61"
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
.XRange "44", "44.5"
.YRange "-60.75", "-59.25"
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
.XRange "45.5", "46"
.YRange "-60.75", "-59.25"
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

'@ define brick: unitcell12x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.XRange "59.25", "60.75"
.YRange "-55", "-54.5"
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
.XRange "59.25", "60.75"
.YRange "-65", "-65.5"
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
.XRange "54.5", "55"
.YRange "-60.75", "-59.25"
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
.XRange "65", "65.5"
.YRange "-60.75", "-59.25"
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

'@ define brick: unitcell12x13:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.XRange "74.25", "75.75"
.YRange "-55", "-54.5"
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
.XRange "74.25", "75.75"
.YRange "-65", "-65.5"
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
.XRange "69.5", "70"
.YRange "-60.75", "-59.25"
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
.XRange "80", "80.5"
.YRange "-60.75", "-59.25"
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

'@ define brick: unitcell12x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.XRange "89.25", "90.75"
.YRange "-59.5", "-59"
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
.XRange "89.25", "90.75"
.YRange "-60.5", "-61"
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
.XRange "89", "89.5"
.YRange "-60.75", "-59.25"
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
.XRange "90.5", "91"
.YRange "-60.75", "-59.25"
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
.XRange "104.5", "105.5"
.YRange "-64.75", "-55.25"
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
.XRange "100.25", "109.75"
.YRange "-60.5", "-59.5"
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
.XRange "104", "106"
.YRange "-55.25", "-54.75"
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
.XRange "104", "106"
.YRange "-64.75", "-65.25"
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
.XRange "99.75", "100.25"
.YRange "-61", "-59"
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
.XRange "109.75", "110.25"
.YRange "-61", "-59"
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

'@ define brick: unitcell13x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.XRange "-105.75", "-104.25"
.YRange "-74.5", "-74"
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
.XRange "-105.75", "-104.25"
.YRange "-75.5", "-76"
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
.XRange "-106", "-105.5"
.YRange "-75.75", "-74.25"
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
.XRange "-104.5", "-104"
.YRange "-75.75", "-74.25"
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
.XRange "-92.5", "-87.5"
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
.YRange "-77.5", "-72.5"
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
.XRange "-91", "-89"
.YRange "-70", "-69.5"
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
.XRange "-91", "-89"
.YRange "-80", "-80.5"
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
.XRange "-95.5", "-95"
.YRange "-76", "-74"
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
.XRange "-85", "-84.5"
.YRange "-76", "-74"
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
.YRange "-77.5", "-72.5"
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
.XRange "-77.5", "-72.5"
.YRange "-75.5", "-74.5"
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
.XRange "-76", "-74"
.YRange "-72.5", "-72"
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
.XRange "-76", "-74"
.YRange "-77.5", "-78"
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
.XRange "-78", "-77.5"
.YRange "-76", "-74"
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
.XRange "-72.5", "-72"
.YRange "-76", "-74"
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
.XRange "-60.5", "-59.5"
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
.YRange "-75.5", "-74.5"
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
.XRange "-60.75", "-59.25"
.YRange "-70", "-69.5"
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
.XRange "-60.75", "-59.25"
.YRange "-80", "-80.5"
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
.XRange "-65.5", "-65"
.YRange "-75.75", "-74.25"
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
.XRange "-55", "-54.5"
.YRange "-75.75", "-74.25"
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
.YRange "-78.75", "-71.25"
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
.XRange "-48.75", "-41.25"
.YRange "-75.5", "-74.5"
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
.XRange "-45.75", "-44.25"
.YRange "-71.25", "-70.75"
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
.XRange "-45.75", "-44.25"
.YRange "-78.75", "-79.25"
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
.XRange "-49.25", "-48.75"
.YRange "-75.75", "-74.25"
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
.XRange "-41.25", "-40.75"
.YRange "-75.75", "-74.25"
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

'@ define brick: unitcell13x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.XRange "-30.75", "-29.25"
.YRange "-74.5", "-74"
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
.XRange "-30.75", "-29.25"
.YRange "-75.5", "-76"
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
.XRange "-31", "-30.5"
.YRange "-75.75", "-74.25"
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
.XRange "-29.5", "-29"
.YRange "-75.75", "-74.25"
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

'@ define brick: unitcell13x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.XRange "-15.75", "-14.25"
.YRange "-74.5", "-74"
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
.XRange "-15.75", "-14.25"
.YRange "-75.5", "-76"
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
.XRange "-16", "-15.5"
.YRange "-75.75", "-74.25"
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
.XRange "-14.5", "-14"
.YRange "-75.75", "-74.25"
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
.YRange "-78.5", "-71.5"
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
.XRange "-3.5", "3.5"
.YRange "-75.5", "-74.5"
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
.XRange "-1", "1"
.YRange "-71.5", "-71"
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
.XRange "-1", "1"
.YRange "-78.5", "-79"
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
.XRange "-4", "-3.5"
.YRange "-76", "-74"
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
.XRange "3.5", "4"
.YRange "-76", "-74"
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
.YRange "-77.5", "-72.5"
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
.XRange "12.5", "17.5"
.YRange "-75.5", "-74.5"
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
.XRange "14", "16"
.YRange "-72.5", "-72"
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
.XRange "14", "16"
.YRange "-77.5", "-78"
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
.XRange "12", "12.5"
.YRange "-76", "-74"
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
.XRange "17.5", "18"
.YRange "-76", "-74"
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
.XRange "26", "34"
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
.YRange "-79", "-71"
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
.XRange "29", "31"
.YRange "-70", "-69.5"
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
.XRange "29", "31"
.YRange "-80", "-80.5"
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
.XRange "24.5", "25"
.YRange "-76", "-74"
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
.XRange "35", "35.5"
.YRange "-76", "-74"
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

'@ define brick: unitcell13x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.XRange "44.25", "45.75"
.YRange "-74.5", "-74"
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
.XRange "44.25", "45.75"
.YRange "-75.5", "-76"
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
.XRange "44", "44.5"
.YRange "-75.75", "-74.25"
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
.XRange "45.5", "46"
.YRange "-75.75", "-74.25"
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

'@ define brick: unitcell13x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.XRange "59.25", "60.75"
.YRange "-70", "-69.5"
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
.XRange "59.25", "60.75"
.YRange "-80", "-80.5"
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
.XRange "54.5", "55"
.YRange "-75.75", "-74.25"
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
.XRange "65", "65.5"
.YRange "-75.75", "-74.25"
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
.XRange "73.75", "76.25"
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
.YRange "-76.25", "-73.75"
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
.XRange "74", "76"
.YRange "-70", "-69.5"
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
.XRange "74", "76"
.YRange "-80", "-80.5"
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
.XRange "69.5", "70"
.YRange "-76", "-74"
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
.XRange "80", "80.5"
.YRange "-76", "-74"
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
.YRange "-77.25", "-72.75"
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
.XRange "87.75", "92.25"
.YRange "-75.5", "-74.5"
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
.XRange "89.25", "90.75"
.YRange "-72.75", "-72.25"
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
.XRange "89.25", "90.75"
.YRange "-77.25", "-77.75"
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
.XRange "87.25", "87.75"
.YRange "-75.75", "-74.25"
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
.XRange "92.25", "92.75"
.YRange "-75.75", "-74.25"
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

'@ define brick: unitcell13x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.XRange "104.25", "105.75"
.YRange "-74.5", "-74"
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
.XRange "104.25", "105.75"
.YRange "-75.5", "-76"
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
.XRange "104", "104.5"
.YRange "-75.75", "-74.25"
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
.XRange "105.5", "106"
.YRange "-75.75", "-74.25"
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

'@ define brick: unitcell14x1:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.XRange "-105.75", "-104.25"
.YRange "-89.5", "-89"
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
.XRange "-105.75", "-104.25"
.YRange "-90.5", "-91"
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
.XRange "-106", "-105.5"
.YRange "-90.75", "-89.25"
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
.XRange "-104.5", "-104"
.YRange "-90.75", "-89.25"
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
.YRange "-93.25", "-86.75"
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
.XRange "-93.25", "-86.75"
.YRange "-90.5", "-89.5"
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
.XRange "-91", "-89"
.YRange "-86.75", "-86.25"
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
.XRange "-91", "-89"
.YRange "-93.25", "-93.75"
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
.XRange "-93.75", "-93.25"
.YRange "-91", "-89"
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
.XRange "-86.75", "-86.25"
.YRange "-91", "-89"
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
.XRange "-75.5", "-74.5"
.YRange "-94.75", "-85.25"
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
.XRange "-79.75", "-70.25"
.YRange "-90.5", "-89.5"
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
.XRange "-76", "-74"
.YRange "-85.25", "-84.75"
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
.XRange "-76", "-74"
.YRange "-94.75", "-95.25"
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
.XRange "-80.25", "-79.75"
.YRange "-91", "-89"
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
.XRange "-70.25", "-69.75"
.YRange "-91", "-89"
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
.XRange "-60.5", "-59.5"
.YRange "-94", "-86"
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
.XRange "-64", "-56"
.YRange "-90.5", "-89.5"
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
.XRange "-61", "-59"
.YRange "-86", "-85.5"
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
.XRange "-61", "-59"
.YRange "-94", "-94.5"
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
.XRange "-64.5", "-64"
.YRange "-91", "-89"
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
.XRange "-56", "-55.5"
.YRange "-91", "-89"
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

'@ define brick: unitcell14x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.XRange "-45.75", "-44.25"
.YRange "-85", "-84.5"
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
.XRange "-45.75", "-44.25"
.YRange "-95", "-95.5"
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
.XRange "-50.5", "-50"
.YRange "-90.75", "-89.25"
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
.XRange "-40", "-39.5"
.YRange "-90.75", "-89.25"
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
.XRange "-32", "-28"
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
.YRange "-92", "-88"
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
.XRange "-31", "-29"
.YRange "-85", "-84.5"
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
.XRange "-31", "-29"
.YRange "-95", "-95.5"
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
.XRange "-35.5", "-35"
.YRange "-91", "-89"
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
.XRange "-25", "-24.5"
.YRange "-91", "-89"
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
.XRange "-15.5", "-14.5"
.YRange "-94.25", "-85.75"
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
.XRange "-19.25", "-10.75"
.YRange "-90.5", "-89.5"
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
.XRange "-15.75", "-14.25"
.YRange "-85.75", "-85.25"
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
.XRange "-15.75", "-14.25"
.YRange "-94.25", "-94.75"
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
.XRange "-19.75", "-19.25"
.YRange "-90.75", "-89.25"
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
.XRange "-10.75", "-10.25"
.YRange "-90.75", "-89.25"
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
.YRange "-93.25", "-86.75"
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
.XRange "-3.25", "3.25"
.YRange "-90.5", "-89.5"
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
.XRange "-1", "1"
.YRange "-86.75", "-86.25"
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
.XRange "-1", "1"
.YRange "-93.25", "-93.75"
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
.XRange "-3.75", "-3.25"
.YRange "-91", "-89"
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
.XRange "3.25", "3.75"
.YRange "-91", "-89"
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
.XRange "14", "16"
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
.YRange "-91", "-89"
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
.XRange "14", "16"
.YRange "-85", "-84.5"
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
.XRange "14", "16"
.YRange "-95", "-95.5"
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
.XRange "9.5", "10"
.YRange "-91", "-89"
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
.XRange "20", "20.5"
.YRange "-91", "-89"
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

'@ define brick: unitcell14x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.XRange "29.25", "30.75"
.YRange "-85", "-84.5"
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
.XRange "29.25", "30.75"
.YRange "-95", "-95.5"
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
.XRange "24.5", "25"
.YRange "-90.75", "-89.25"
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
.XRange "35", "35.5"
.YRange "-90.75", "-89.25"
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

'@ define brick: unitcell14x11:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.XRange "44.25", "45.75"
.YRange "-89.5", "-89"
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
.XRange "44.25", "45.75"
.YRange "-90.5", "-91"
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
.XRange "44", "44.5"
.YRange "-90.75", "-89.25"
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
.XRange "45.5", "46"
.YRange "-90.75", "-89.25"
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

'@ define brick: unitcell14x12:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.XRange "59.25", "60.75"
.YRange "-89.5", "-89"
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
.XRange "59.25", "60.75"
.YRange "-90.5", "-91"
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
.XRange "59", "59.5"
.YRange "-90.75", "-89.25"
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
.XRange "60.5", "61"
.YRange "-90.75", "-89.25"
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
.YRange "-92.5", "-87.5"
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
.XRange "72.5", "77.5"
.YRange "-90.5", "-89.5"
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
.XRange "74", "76"
.YRange "-87.5", "-87"
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
.XRange "74", "76"
.YRange "-92.5", "-93"
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
.XRange "72", "72.5"
.YRange "-91", "-89"
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
.XRange "77.5", "78"
.YRange "-91", "-89"
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
.XRange "89.5", "90.5"
.YRange "-94.75", "-85.25"
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
.XRange "85.25", "94.75"
.YRange "-90.5", "-89.5"
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
.XRange "89", "91"
.YRange "-85.25", "-84.75"
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
.XRange "89", "91"
.YRange "-94.75", "-95.25"
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
.XRange "84.75", "85.25"
.YRange "-91", "-89"
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
.XRange "94.75", "95.25"
.YRange "-91", "-89"
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

'@ define brick: unitcell14x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.XRange "104.25", "105.75"
.YRange "-89.5", "-89"
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
.XRange "104.25", "105.75"
.YRange "-90.5", "-91"
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
.XRange "104", "104.5"
.YRange "-90.75", "-89.25"
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
.XRange "105.5", "106"
.YRange "-90.75", "-89.25"
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
.YRange "-107.5", "-102.5"
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
.XRange "-107.5", "-102.5"
.YRange "-105.5", "-104.5"
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
.XRange "-106", "-104"
.YRange "-102.5", "-102"
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
.XRange "-106", "-104"
.YRange "-107.5", "-108"
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
.XRange "-108", "-107.5"
.YRange "-106", "-104"
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
.XRange "-102.5", "-102"
.YRange "-106", "-104"
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
.YRange "-108.5", "-101.5"
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
.XRange "-93.5", "-86.5"
.YRange "-105.5", "-104.5"
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
.XRange "-90.75", "-89.25"
.YRange "-101.5", "-101"
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
.XRange "-90.75", "-89.25"
.YRange "-108.5", "-109"
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
.XRange "-94", "-93.5"
.YRange "-105.75", "-104.25"
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
.XRange "-86.5", "-86"
.YRange "-105.75", "-104.25"
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

'@ define brick: unitcell15x3:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.XRange "-75.75", "-74.25"
.YRange "-104.5", "-104"
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
.XRange "-75.75", "-74.25"
.YRange "-105.5", "-106"
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
.XRange "-76", "-75.5"
.YRange "-105.75", "-104.25"
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
.XRange "-74.5", "-74"
.YRange "-105.75", "-104.25"
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
.XRange "-60.5", "-59.5"
.YRange "-109.75", "-100.25"
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
.XRange "-64.75", "-55.25"
.YRange "-105.5", "-104.5"
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
.XRange "-60.75", "-59.25"
.YRange "-100.25", "-99.75"
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
.XRange "-60.75", "-59.25"
.YRange "-109.75", "-110.25"
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
.XRange "-65.25", "-64.75"
.YRange "-105.75", "-104.25"
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
.XRange "-55.25", "-54.75"
.YRange "-105.75", "-104.25"
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

'@ define brick: unitcell15x5:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.XRange "-45.75", "-44.25"
.YRange "-104.5", "-104"
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
.XRange "-45.75", "-44.25"
.YRange "-105.5", "-106"
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
.XRange "-46", "-45.5"
.YRange "-105.75", "-104.25"
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
.XRange "-44.5", "-44"
.YRange "-105.75", "-104.25"
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

'@ define brick: unitcell15x6:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.XRange "-30.75", "-29.25"
.YRange "-100", "-99.5"
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
.XRange "-30.75", "-29.25"
.YRange "-110", "-110.5"
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
.XRange "-35.5", "-35"
.YRange "-105.75", "-104.25"
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
.XRange "-25", "-24.5"
.YRange "-105.75", "-104.25"
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

'@ define brick: unitcell15x7:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.XRange "-15.75", "-14.25"
.YRange "-104.5", "-104"
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
.XRange "-15.75", "-14.25"
.YRange "-105.5", "-106"
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
.XRange "-16", "-15.5"
.YRange "-105.75", "-104.25"
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
.XRange "-14.5", "-14"
.YRange "-105.75", "-104.25"
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

'@ define brick: unitcell15x8:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.XRange "-0.75", "0.75"
.YRange "-104.5", "-104"
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
.XRange "-0.75", "0.75"
.YRange "-105.5", "-106"
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
.XRange "-1", "-0.5"
.YRange "-105.75", "-104.25"
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
.XRange "0.5", "1"
.YRange "-105.75", "-104.25"
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

'@ define brick: unitcell15x9:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.XRange "14.25", "15.75"
.YRange "-100", "-99.5"
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
.XRange "14.25", "15.75"
.YRange "-110", "-110.5"
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
.XRange "9.5", "10"
.YRange "-105.75", "-104.25"
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
.XRange "20", "20.5"
.YRange "-105.75", "-104.25"
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

'@ define brick: unitcell15x10:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.XRange "29.25", "30.75"
.YRange "-104.5", "-104"
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
.XRange "29.25", "30.75"
.YRange "-105.5", "-106"
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
.XRange "29", "29.5"
.YRange "-105.75", "-104.25"
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
.XRange "30.5", "31"
.YRange "-105.75", "-104.25"
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
.YRange "-107.75", "-102.25"
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
.XRange "42.25", "47.75"
.YRange "-105.5", "-104.5"
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
.XRange "44", "46"
.YRange "-102.25", "-101.75"
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
.XRange "44", "46"
.YRange "-107.75", "-108.25"
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
.XRange "41.75", "42.25"
.YRange "-106", "-104"
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
.XRange "47.75", "48.25"
.YRange "-106", "-104"
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
.XRange "59.25", "60.75"
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
.YRange "-105.75", "-104.25"
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
.XRange "59", "61"
.YRange "-100", "-99.5"
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
.XRange "59", "61"
.YRange "-110", "-110.5"
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
.XRange "54.5", "55"
.YRange "-106", "-104"
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
.XRange "65", "65.5"
.YRange "-106", "-104"
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
.YRange "-108.25", "-101.75"
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
.XRange "71.75", "78.25"
.YRange "-105.5", "-104.5"
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
.XRange "74", "76"
.YRange "-101.75", "-101.25"
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
.XRange "74", "76"
.YRange "-108.25", "-108.75"
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
.XRange "71.25", "71.75"
.YRange "-106", "-104"
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
.XRange "78.25", "78.75"
.YRange "-106", "-104"
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

'@ define brick: unitcell15x14:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.XRange "89.25", "90.75"
.YRange "-104.5", "-104"
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
.XRange "89.25", "90.75"
.YRange "-105.5", "-106"
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
.XRange "89", "89.5"
.YRange "-105.75", "-104.25"
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
.XRange "90.5", "91"
.YRange "-105.75", "-104.25"
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

'@ define brick: unitcell15x15:top

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "top"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.XRange "104.25", "105.75"
.YRange "-100", "-99.5"
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
.XRange "104.25", "105.75"
.YRange "-110", "-110.5"
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
.XRange "99.5", "100"
.YRange "-105.75", "-104.25"
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
.XRange "110", "110.5"
.YRange "-105.75", "-104.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:unitcell15x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x15"

