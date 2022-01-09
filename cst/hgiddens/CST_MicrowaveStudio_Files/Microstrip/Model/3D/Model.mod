'# MWS Version: Version 2021.1 - Nov 10 2020 - ACIS 30.0.1 -

'# length = mm
'# frequency = GHz
'# time = s
'# frequency range: fmin = 9.000000 fmax = 11.000000
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

'@ SetFrequency

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solver.FrequencyRange "9.000000", "11.000000"

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

'@ define brick: Component:GroundPlane

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "GroundPlane"
.Component "Component"
.Material "Copper (annealed)"
.XRange "-7.5", "7.5"
.YRange "-7.5", "7.5"
.ZRange "0", "1"
.Create
End With

'@ define brick: Component:Vacuum

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "Vacuum"
.Component "Component"
.Material "Vacuum"
.XRange "-7.5", "7.5"
.YRange "-7.5", "7.5"
.ZRange "1", "6"
.Create
End With

'@ define brick: Component:Substrate

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "Substrate"
.Component "Component"
.Material "FR4"
.XRange "-7.5", "7.5"
.YRange "-7.5", "7.5"
.ZRange "6", "7.57"
.Create
End With

'@ define brick: Component1:patch1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "patch1"
.Component "Component1"
.Material "Copper (annealed)"
.XRange "-5", "5"
.YRange "-0.5", "0.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Component1:patch2

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "patch2"
.Component "Component1"
.Material "Copper (annealed)"
.XRange "-0.5", "0.5"
.YRange "-5", "5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Component1

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Component1"

