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

'@ define cylinder:unitcell1x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x1"

'@ define cylinder:unitcell1x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x2"

'@ define cylinder:unitcell1x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x3"

'@ define cylinder:unitcell1x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x4"

'@ define cylinder:unitcell1x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x5"

'@ define cylinder:unitcell1x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x6"

'@ define cylinder:unitcell1x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x7"

'@ define cylinder:unitcell1x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x8"

'@ define cylinder:unitcell1x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x9"

'@ define cylinder:unitcell1x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x10"

'@ define cylinder:unitcell1x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x11"

'@ define cylinder:unitcell1x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x12"

'@ define cylinder:unitcell1x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x13"

'@ define cylinder:unitcell1x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x14"

'@ define cylinder:unitcell1x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x15"

'@ define cylinder:unitcell1x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x16"

'@ define cylinder:unitcell1x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x17"

'@ define cylinder:unitcell1x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x18"

'@ define cylinder:unitcell1x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x19"

'@ define cylinder:unitcell1x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell1x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell1x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell1x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell1x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell1x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell1x20"

'@ define cylinder:unitcell2x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x1"

'@ define cylinder:unitcell2x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x2"

'@ define cylinder:unitcell2x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x3"

'@ define cylinder:unitcell2x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x4"

'@ define cylinder:unitcell2x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x5"

'@ define cylinder:unitcell2x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x6"

'@ define cylinder:unitcell2x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x7"

'@ define cylinder:unitcell2x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x8"

'@ define cylinder:unitcell2x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x9"

'@ define cylinder:unitcell2x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x10"

'@ define cylinder:unitcell2x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x11"

'@ define cylinder:unitcell2x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x12"

'@ define cylinder:unitcell2x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x13"

'@ define cylinder:unitcell2x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x14"

'@ define cylinder:unitcell2x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x15"

'@ define cylinder:unitcell2x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x16"

'@ define cylinder:unitcell2x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x17"

'@ define cylinder:unitcell2x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x18"

'@ define cylinder:unitcell2x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x19"

'@ define cylinder:unitcell2x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell2x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell2x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell2x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell2x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell2x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell2x20"

'@ define cylinder:unitcell3x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x1"

'@ define cylinder:unitcell3x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x2"

'@ define cylinder:unitcell3x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x3"

'@ define cylinder:unitcell3x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x4"

'@ define cylinder:unitcell3x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x5"

'@ define cylinder:unitcell3x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x6"

'@ define cylinder:unitcell3x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x7"

'@ define cylinder:unitcell3x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x8"

'@ define cylinder:unitcell3x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x9"

'@ define cylinder:unitcell3x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x10"

'@ define cylinder:unitcell3x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x11"

'@ define cylinder:unitcell3x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x12"

'@ define cylinder:unitcell3x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x13"

'@ define cylinder:unitcell3x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x14"

'@ define cylinder:unitcell3x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x15"

'@ define cylinder:unitcell3x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x16"

'@ define cylinder:unitcell3x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x17"

'@ define cylinder:unitcell3x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x18"

'@ define cylinder:unitcell3x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x19"

'@ define cylinder:unitcell3x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell3x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell3x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell3x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell3x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell3x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell3x20"

'@ define cylinder:unitcell4x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x1"

'@ define cylinder:unitcell4x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x2"

'@ define cylinder:unitcell4x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x3"

'@ define cylinder:unitcell4x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x4"

'@ define cylinder:unitcell4x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x5"

'@ define cylinder:unitcell4x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x6"

'@ define cylinder:unitcell4x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x7"

'@ define cylinder:unitcell4x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x8"

'@ define cylinder:unitcell4x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x9"

'@ define cylinder:unitcell4x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x10"

'@ define cylinder:unitcell4x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x11"

'@ define cylinder:unitcell4x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x12"

'@ define cylinder:unitcell4x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x13"

'@ define cylinder:unitcell4x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x14"

'@ define cylinder:unitcell4x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x15"

'@ define cylinder:unitcell4x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x16"

'@ define cylinder:unitcell4x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x17"

'@ define cylinder:unitcell4x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x18"

'@ define cylinder:unitcell4x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x19"

'@ define cylinder:unitcell4x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell4x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell4x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell4x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell4x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell4x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell4x20"

'@ define cylinder:unitcell5x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x1"

'@ define cylinder:unitcell5x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x2"

'@ define cylinder:unitcell5x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x3"

'@ define cylinder:unitcell5x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x4"

'@ define cylinder:unitcell5x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x5"

'@ define cylinder:unitcell5x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x6"

'@ define cylinder:unitcell5x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x7"

'@ define cylinder:unitcell5x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x8"

'@ define cylinder:unitcell5x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x9"

'@ define cylinder:unitcell5x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x10"

'@ define cylinder:unitcell5x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x11"

'@ define cylinder:unitcell5x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x12"

'@ define cylinder:unitcell5x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x13"

'@ define cylinder:unitcell5x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x14"

'@ define cylinder:unitcell5x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x15"

'@ define cylinder:unitcell5x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x16"

'@ define cylinder:unitcell5x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x17"

'@ define cylinder:unitcell5x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x18"

'@ define cylinder:unitcell5x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x19"

'@ define cylinder:unitcell5x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell5x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell5x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell5x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell5x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell5x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell5x20"

'@ define cylinder:unitcell6x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x1"

'@ define cylinder:unitcell6x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x2"

'@ define cylinder:unitcell6x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x3"

'@ define cylinder:unitcell6x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x4"

'@ define cylinder:unitcell6x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x5"

'@ define cylinder:unitcell6x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x6"

'@ define cylinder:unitcell6x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x7"

'@ define cylinder:unitcell6x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x8"

'@ define cylinder:unitcell6x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x9"

'@ define cylinder:unitcell6x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x10"

'@ define cylinder:unitcell6x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x11"

'@ define cylinder:unitcell6x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x12"

'@ define cylinder:unitcell6x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x13"

'@ define cylinder:unitcell6x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x14"

'@ define cylinder:unitcell6x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x15"

'@ define cylinder:unitcell6x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x16"

'@ define cylinder:unitcell6x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x17"

'@ define cylinder:unitcell6x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x18"

'@ define cylinder:unitcell6x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x19"

'@ define cylinder:unitcell6x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell6x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell6x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell6x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell6x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell6x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell6x20"

'@ define cylinder:unitcell7x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x1"

'@ define cylinder:unitcell7x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x2"

'@ define cylinder:unitcell7x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x3"

'@ define cylinder:unitcell7x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x4"

'@ define cylinder:unitcell7x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x5"

'@ define cylinder:unitcell7x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x6"

'@ define cylinder:unitcell7x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x7"

'@ define cylinder:unitcell7x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x8"

'@ define cylinder:unitcell7x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x9"

'@ define cylinder:unitcell7x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x10"

'@ define cylinder:unitcell7x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x11"

'@ define cylinder:unitcell7x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x12"

'@ define cylinder:unitcell7x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x13"

'@ define cylinder:unitcell7x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x14"

'@ define cylinder:unitcell7x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x15"

'@ define cylinder:unitcell7x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x16"

'@ define cylinder:unitcell7x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x17"

'@ define cylinder:unitcell7x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x18"

'@ define cylinder:unitcell7x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x19"

'@ define cylinder:unitcell7x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell7x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell7x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell7x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell7x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell7x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell7x20"

'@ define cylinder:unitcell8x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x1"

'@ define cylinder:unitcell8x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x2"

'@ define cylinder:unitcell8x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x3"

'@ define cylinder:unitcell8x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x4"

'@ define cylinder:unitcell8x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x5"

'@ define cylinder:unitcell8x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x6"

'@ define cylinder:unitcell8x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x7"

'@ define cylinder:unitcell8x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x8"

'@ define cylinder:unitcell8x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x9"

'@ define cylinder:unitcell8x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x10"

'@ define cylinder:unitcell8x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x11"

'@ define cylinder:unitcell8x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x12"

'@ define cylinder:unitcell8x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x13"

'@ define cylinder:unitcell8x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x14"

'@ define cylinder:unitcell8x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x15"

'@ define cylinder:unitcell8x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x16"

'@ define cylinder:unitcell8x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x17"

'@ define cylinder:unitcell8x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x18"

'@ define cylinder:unitcell8x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x19"

'@ define cylinder:unitcell8x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell8x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell8x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell8x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell8x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell8x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell8x20"

'@ define cylinder:unitcell9x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x1"

'@ define cylinder:unitcell9x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x2"

'@ define cylinder:unitcell9x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x3"

'@ define cylinder:unitcell9x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x4"

'@ define cylinder:unitcell9x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x5"

'@ define cylinder:unitcell9x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x6"

'@ define cylinder:unitcell9x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x7"

'@ define cylinder:unitcell9x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "6.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x8"

'@ define cylinder:unitcell9x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x9"

'@ define cylinder:unitcell9x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x10"

'@ define cylinder:unitcell9x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x11"

'@ define cylinder:unitcell9x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x12"

'@ define cylinder:unitcell9x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x13"

'@ define cylinder:unitcell9x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x14"

'@ define cylinder:unitcell9x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x15"

'@ define cylinder:unitcell9x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x16"

'@ define cylinder:unitcell9x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x17"

'@ define cylinder:unitcell9x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x18"

'@ define cylinder:unitcell9x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x19"

'@ define cylinder:unitcell9x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell9x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell9x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell9x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell9x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell9x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell9x20"

'@ define cylinder:unitcell10x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x1"

'@ define cylinder:unitcell10x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x2"

'@ define cylinder:unitcell10x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x3"

'@ define cylinder:unitcell10x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x4"

'@ define cylinder:unitcell10x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x5"

'@ define cylinder:unitcell10x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x6"

'@ define cylinder:unitcell10x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x7"

'@ define cylinder:unitcell10x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x8"

'@ define cylinder:unitcell10x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x9"

'@ define cylinder:unitcell10x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x10"

'@ define cylinder:unitcell10x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x11"

'@ define cylinder:unitcell10x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x12"

'@ define cylinder:unitcell10x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x13"

'@ define cylinder:unitcell10x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x14"

'@ define cylinder:unitcell10x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x15"

'@ define cylinder:unitcell10x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x16"

'@ define cylinder:unitcell10x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x17"

'@ define cylinder:unitcell10x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x18"

'@ define cylinder:unitcell10x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x19"

'@ define cylinder:unitcell10x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell10x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell10x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell10x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell10x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell10x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell10x20"

'@ define cylinder:unitcell11x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x1"

'@ define cylinder:unitcell11x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x2"

'@ define cylinder:unitcell11x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x3"

'@ define cylinder:unitcell11x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x4"

'@ define cylinder:unitcell11x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x5"

'@ define cylinder:unitcell11x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x6"

'@ define cylinder:unitcell11x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x7"

'@ define cylinder:unitcell11x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x8"

'@ define cylinder:unitcell11x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x9"

'@ define cylinder:unitcell11x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x10"

'@ define cylinder:unitcell11x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x11"

'@ define cylinder:unitcell11x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x12"

'@ define cylinder:unitcell11x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x13"

'@ define cylinder:unitcell11x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x14"

'@ define cylinder:unitcell11x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x15"

'@ define cylinder:unitcell11x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x16"

'@ define cylinder:unitcell11x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x17"

'@ define cylinder:unitcell11x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x18"

'@ define cylinder:unitcell11x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x19"

'@ define cylinder:unitcell11x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell11x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell11x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell11x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell11x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-7.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell11x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell11x20"

'@ define cylinder:unitcell12x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x1"

'@ define cylinder:unitcell12x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x2"

'@ define cylinder:unitcell12x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x3"

'@ define cylinder:unitcell12x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x4"

'@ define cylinder:unitcell12x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x5"

'@ define cylinder:unitcell12x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x6"

'@ define cylinder:unitcell12x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x7"

'@ define cylinder:unitcell12x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x8"

'@ define cylinder:unitcell12x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x9"

'@ define cylinder:unitcell12x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x10"

'@ define cylinder:unitcell12x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x11"

'@ define cylinder:unitcell12x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x12"

'@ define cylinder:unitcell12x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x13"

'@ define cylinder:unitcell12x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x14"

'@ define cylinder:unitcell12x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x15"

'@ define cylinder:unitcell12x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x16"

'@ define cylinder:unitcell12x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x17"

'@ define cylinder:unitcell12x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x18"

'@ define cylinder:unitcell12x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x19"

'@ define cylinder:unitcell12x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell12x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell12x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell12x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell12x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-22.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell12x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell12x20"

'@ define cylinder:unitcell13x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x1"

'@ define cylinder:unitcell13x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x2"

'@ define cylinder:unitcell13x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x3"

'@ define cylinder:unitcell13x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x4"

'@ define cylinder:unitcell13x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x5"

'@ define cylinder:unitcell13x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x6"

'@ define cylinder:unitcell13x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x7"

'@ define cylinder:unitcell13x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x8"

'@ define cylinder:unitcell13x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x9"

'@ define cylinder:unitcell13x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x10"

'@ define cylinder:unitcell13x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x11"

'@ define cylinder:unitcell13x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x12"

'@ define cylinder:unitcell13x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x13"

'@ define cylinder:unitcell13x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x14"

'@ define cylinder:unitcell13x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x15"

'@ define cylinder:unitcell13x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x16"

'@ define cylinder:unitcell13x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x17"

'@ define cylinder:unitcell13x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x18"

'@ define cylinder:unitcell13x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x19"

'@ define cylinder:unitcell13x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell13x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell13x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell13x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell13x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-37.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell13x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell13x20"

'@ define cylinder:unitcell14x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x1"

'@ define cylinder:unitcell14x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x2"

'@ define cylinder:unitcell14x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x3"

'@ define cylinder:unitcell14x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x4"

'@ define cylinder:unitcell14x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x5"

'@ define cylinder:unitcell14x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x6"

'@ define cylinder:unitcell14x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x7"

'@ define cylinder:unitcell14x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x8"

'@ define cylinder:unitcell14x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x9"

'@ define cylinder:unitcell14x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x10"

'@ define cylinder:unitcell14x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x11"

'@ define cylinder:unitcell14x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x12"

'@ define cylinder:unitcell14x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x13"

'@ define cylinder:unitcell14x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x14"

'@ define cylinder:unitcell14x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x15"

'@ define cylinder:unitcell14x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x16"

'@ define cylinder:unitcell14x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x17"

'@ define cylinder:unitcell14x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x18"

'@ define cylinder:unitcell14x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x19"

'@ define cylinder:unitcell14x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell14x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell14x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell14x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell14x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-52.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell14x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell14x20"

'@ define cylinder:unitcell15x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x1"

'@ define cylinder:unitcell15x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x2"

'@ define cylinder:unitcell15x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x3"

'@ define cylinder:unitcell15x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x4"

'@ define cylinder:unitcell15x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x5"

'@ define cylinder:unitcell15x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x6"

'@ define cylinder:unitcell15x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x7"

'@ define cylinder:unitcell15x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x8"

'@ define cylinder:unitcell15x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x9"

'@ define cylinder:unitcell15x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x10"

'@ define cylinder:unitcell15x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x11"

'@ define cylinder:unitcell15x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x12"

'@ define cylinder:unitcell15x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x13"

'@ define cylinder:unitcell15x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x14"

'@ define cylinder:unitcell15x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x15"

'@ define cylinder:unitcell15x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x16"

'@ define cylinder:unitcell15x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x17"

'@ define cylinder:unitcell15x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x18"

'@ define cylinder:unitcell15x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x19"

'@ define cylinder:unitcell15x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell15x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell15x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell15x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell15x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-67.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell15x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell15x20"

'@ define cylinder:unitcell16x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x1"

'@ define cylinder:unitcell16x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x2"

'@ define cylinder:unitcell16x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x3"

'@ define cylinder:unitcell16x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x4"

'@ define cylinder:unitcell16x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x5"

'@ define cylinder:unitcell16x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x6"

'@ define cylinder:unitcell16x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x7"

'@ define cylinder:unitcell16x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x8"

'@ define cylinder:unitcell16x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x9"

'@ define cylinder:unitcell16x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x10"

'@ define cylinder:unitcell16x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x11"

'@ define cylinder:unitcell16x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x12"

'@ define cylinder:unitcell16x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x13"

'@ define cylinder:unitcell16x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x14"

'@ define cylinder:unitcell16x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x15"

'@ define cylinder:unitcell16x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x16"

'@ define cylinder:unitcell16x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x17"

'@ define cylinder:unitcell16x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x18"

'@ define cylinder:unitcell16x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x19"

'@ define cylinder:unitcell16x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell16x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell16x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell16x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell16x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-82.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell16x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell16x20"

'@ define cylinder:unitcell17x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x1"

'@ define cylinder:unitcell17x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x2"

'@ define cylinder:unitcell17x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x3"

'@ define cylinder:unitcell17x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x4"

'@ define cylinder:unitcell17x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x5"

'@ define cylinder:unitcell17x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x6"

'@ define cylinder:unitcell17x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x7"

'@ define cylinder:unitcell17x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x8"

'@ define cylinder:unitcell17x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x9"

'@ define cylinder:unitcell17x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x10"

'@ define cylinder:unitcell17x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x11"

'@ define cylinder:unitcell17x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x12"

'@ define cylinder:unitcell17x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x13"

'@ define cylinder:unitcell17x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x14"

'@ define cylinder:unitcell17x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x15"

'@ define cylinder:unitcell17x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x16"

'@ define cylinder:unitcell17x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x17"

'@ define cylinder:unitcell17x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x18"

'@ define cylinder:unitcell17x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x19"

'@ define cylinder:unitcell17x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell17x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell17x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell17x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell17x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-97.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell17x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell17x20"

'@ define cylinder:unitcell18x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x1"

'@ define cylinder:unitcell18x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x2"

'@ define cylinder:unitcell18x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x3"

'@ define cylinder:unitcell18x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x4"

'@ define cylinder:unitcell18x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x5"

'@ define cylinder:unitcell18x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x6"

'@ define cylinder:unitcell18x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x7"

'@ define cylinder:unitcell18x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x8"

'@ define cylinder:unitcell18x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x9"

'@ define cylinder:unitcell18x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x10"

'@ define cylinder:unitcell18x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x11"

'@ define cylinder:unitcell18x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x12"

'@ define cylinder:unitcell18x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x13"

'@ define cylinder:unitcell18x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x14"

'@ define cylinder:unitcell18x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x15"

'@ define cylinder:unitcell18x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x16"

'@ define cylinder:unitcell18x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x17"

'@ define cylinder:unitcell18x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x18"

'@ define cylinder:unitcell18x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x19"

'@ define cylinder:unitcell18x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell18x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell18x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell18x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell18x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-112.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell18x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell18x20"

'@ define cylinder:unitcell19x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x1"

'@ define cylinder:unitcell19x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x2"

'@ define cylinder:unitcell19x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x3"

'@ define cylinder:unitcell19x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x4"

'@ define cylinder:unitcell19x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x5"

'@ define cylinder:unitcell19x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x6"

'@ define cylinder:unitcell19x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x7"

'@ define cylinder:unitcell19x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x8"

'@ define cylinder:unitcell19x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x9"

'@ define cylinder:unitcell19x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x10"

'@ define cylinder:unitcell19x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x11"

'@ define cylinder:unitcell19x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x12"

'@ define cylinder:unitcell19x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x13"

'@ define cylinder:unitcell19x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x14"

'@ define cylinder:unitcell19x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x15"

'@ define cylinder:unitcell19x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x16"

'@ define cylinder:unitcell19x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x17"

'@ define cylinder:unitcell19x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x18"

'@ define cylinder:unitcell19x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x19"

'@ define cylinder:unitcell19x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell19x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell19x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell19x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell19x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-127.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell19x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell19x20"

'@ define cylinder:unitcell20x1:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x1"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x1:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x1"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x1:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x1"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-142.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x1"

'@ define cylinder:unitcell20x2:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x2"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x2:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x2"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x2:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x2"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-127.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x2"

'@ define cylinder:unitcell20x3:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x3"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x3:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x3"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x3:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x3"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-112.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x3

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x3"

'@ define cylinder:unitcell20x4:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x4"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x4:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x4"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x4:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x4"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-97.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x4

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x4"

'@ define cylinder:unitcell20x5:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x5"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x5:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x5"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x5:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x5"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-82.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x5

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x5"

'@ define cylinder:unitcell20x6:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x6"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x6:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x6"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x6:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x6"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-67.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x6

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x6"

'@ define cylinder:unitcell20x7:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x7"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x7:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x7"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x7:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x7"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-52.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x7

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x7"

'@ define cylinder:unitcell20x8:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x8"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x8:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x8"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x8:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x8"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-37.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x8

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x8"

'@ define cylinder:unitcell20x9:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x9"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x9:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x9"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x9:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x9"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-22.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x9

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x9"

'@ define cylinder:unitcell20x10:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x10"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x10:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x10"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x10:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x10"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "-7.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x10

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x10"

'@ define cylinder:unitcell20x11:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x11"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x11:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x11"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x11:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x11"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "7.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x11

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x11"

'@ define cylinder:unitcell20x12:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x12"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x12:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x12"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x12:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x12"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "22.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x12

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x12"

'@ define cylinder:unitcell20x13:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x13"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x13:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x13"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x13:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x13"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "37.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x13

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x13"

'@ define cylinder:unitcell20x14:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x14"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x14:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x14"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x14:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x14"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "52.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x14

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x14"

'@ define cylinder:unitcell20x15:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x15"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x15:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x15"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x15:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x15"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "67.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x15

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x15"

'@ define cylinder:unitcell20x16:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x16"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x16:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x16"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x16:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x16"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "82.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x16

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x16"

'@ define cylinder:unitcell20x17:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x17"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x17:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x17"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x17:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x17"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "97.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x17

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x17"

'@ define cylinder:unitcell20x18:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x18"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x18:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x18"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x18:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x18"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "112.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x18

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x18"

'@ define cylinder:unitcell20x19:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x19"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x19:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x19"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x19:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x19"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "5.5"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "127.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x19

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x19"

'@ define cylinder:unitcell20x20:solidcircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "solidcircle"
.Component "unitcell20x20"
.Material "Copper (annealed)"
.OuterRadius "2"
.InnerRadius "0"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x20:innercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "innercircle"
.Component "unitcell20x20"
.Material "Copper (annealed)"
.OuterRadius "5"
.InnerRadius "4"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ define cylinder:unitcell20x20:outercircle

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Cylinder
.Reset
.Name "outercircle"
.Component "unitcell20x20"
.Material "Copper (annealed)"
.OuterRadius "8"
.InnerRadius "7"
.Axis "z"
.Zrange "7.57", "7.605"
.Xcenter "142.5"
.Ycenter "-142.5"
.Segments "0"
.Create
End With

'@ Merge Common Materials:unitcell20x20

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "unitcell20x20"

