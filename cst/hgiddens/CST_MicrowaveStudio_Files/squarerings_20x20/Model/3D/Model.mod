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

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-144.25"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-139.75"
.YRange "144.25", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140.75", "-139.75"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-139.75"
.YRange "140.75", "139.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131", "-130"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131", "-124"
.YRange "145", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125", "-124"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131", "-124"
.YRange "140", "139"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-115.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "145.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-109.5", "-108.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "139.5", "138.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-100.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "145.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-94.5", "-93.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "139.5", "138.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103", "-102"
.YRange "137", "148"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103", "-92"
.YRange "147", "148"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-93", "-92"
.YRange "137", "148"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103", "-92"
.YRange "138", "137"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86.5", "-85.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86.5", "-78.5"
.YRange "145.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-79.5", "-78.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86.5", "-78.5"
.YRange "139.5", "138.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-69.25"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "144.25", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65.75", "-64.75"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "140.75", "139.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-54.25"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "144.25", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-50.75", "-49.75"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "140.75", "139.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-39.75"
.YRange "139.25", "145.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "144.75", "145.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.25", "-34.25"
.YRange "139.25", "145.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "140.25", "139.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.75", "-24.75"
.YRange "139.25", "145.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.75", "-19.25"
.YRange "144.75", "145.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-20.25", "-19.25"
.YRange "139.25", "145.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.75", "-19.25"
.YRange "140.25", "139.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11", "-10"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11", "-4"
.YRange "145", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5", "-4"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11", "-4"
.YRange "140", "139"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4", "5"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4", "11"
.YRange "145", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "10", "11"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4", "11"
.YRange "140", "139"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "22.25"
.YRange "141.25", "143.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "23.75"
.YRange "142.75", "143.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "22.75", "23.75"
.YRange "141.25", "143.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "23.75"
.YRange "142.25", "141.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "19.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "145.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "25.5", "26.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "139.5", "138.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "35.75"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "144.25", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "39.25", "40.25"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "140.75", "139.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "50.75"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "144.25", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.25", "55.25"
.YRange "139.75", "145.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "140.75", "139.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.75", "64.75"
.YRange "138.75", "146.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.75", "71.25"
.YRange "145.25", "146.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "70.25", "71.25"
.YRange "138.75", "146.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.75", "71.25"
.YRange "139.75", "138.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79", "80"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79", "86"
.YRange "145", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "85", "86"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79", "86"
.YRange "140", "139"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "95"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "101"
.YRange "145", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "100", "101"
.YRange "139", "146"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "101"
.YRange "140", "139"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "109.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "116.5"
.YRange "145.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "115.5", "116.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "116.5"
.YRange "139.5", "138.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "124.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "145.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "130.5", "131.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "139.5", "138.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "143", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "141", "144"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "142", "141"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "139.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "145.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "145.5", "146.5"
.YRange "138.5", "146.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "139.5", "138.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "147.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "136.5", "148.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "137.5", "136.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-145"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-139"
.YRange "130", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140", "-139"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-139"
.YRange "125", "124"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-130.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-123.5"
.YRange "130.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-124.5", "-123.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-123.5"
.YRange "124.5", "123.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-115.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "130.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-109.5", "-108.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "124.5", "123.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-99.75"
.YRange "124.25", "130.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "129.75", "130.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95.25", "-94.25"
.YRange "124.25", "130.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "125.25", "124.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-85"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-79"
.YRange "130", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80", "-79"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-79"
.YRange "125", "124"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71", "-70"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71", "-64"
.YRange "130", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65", "-64"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71", "-64"
.YRange "125", "124"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.75", "-54.75"
.YRange "124.25", "130.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.75", "-49.25"
.YRange "129.75", "130.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-50.25", "-49.25"
.YRange "124.25", "130.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.75", "-49.25"
.YRange "125.25", "124.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-38.75", "-37.75"
.YRange "126.25", "128.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-38.75", "-36.25"
.YRange "127.75", "128.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37.25", "-36.25"
.YRange "126.25", "128.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-38.75", "-36.25"
.YRange "127.25", "126.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41.5", "-40.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41.5", "-33.5"
.YRange "130.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-34.5", "-33.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41.5", "-33.5"
.YRange "124.5", "123.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-25.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "130.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-19.5", "-18.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "124.5", "123.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.25", "-27.25"
.YRange "121.75", "133.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.25", "-16.75"
.YRange "132.25", "133.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.75", "-16.75"
.YRange "121.75", "133.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.25", "-16.75"
.YRange "122.75", "121.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-9.25"
.YRange "124.75", "130.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "129.25", "130.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5.75", "-4.75"
.YRange "124.75", "130.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "125.75", "124.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "5.25"
.YRange "124.25", "130.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "129.75", "130.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.75", "10.75"
.YRange "124.25", "130.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "125.25", "124.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "22.25"
.YRange "126.25", "128.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "23.75"
.YRange "127.75", "128.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "22.75", "23.75"
.YRange "126.25", "128.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "23.75"
.YRange "127.25", "126.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "19.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "130.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "25.5", "26.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "124.5", "123.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "34.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "130.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "40.5", "41.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "124.5", "123.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "32", "33"
.YRange "122", "133"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "32", "43"
.YRange "132", "133"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42", "43"
.YRange "122", "133"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "32", "43"
.YRange "123", "122"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "50.75"
.YRange "124.75", "130.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "129.25", "130.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.25", "55.25"
.YRange "124.75", "130.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "125.75", "124.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64", "65"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64", "71"
.YRange "130", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "70", "71"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64", "71"
.YRange "125", "124"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79", "80"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79", "86"
.YRange "130", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "85", "86"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79", "86"
.YRange "125", "124"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.75", "95.75"
.YRange "124.75", "130.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.75", "100.25"
.YRange "129.25", "130.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "99.25", "100.25"
.YRange "124.75", "130.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.75", "100.25"
.YRange "125.75", "124.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111.25", "112.25"
.YRange "126.25", "128.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111.25", "113.75"
.YRange "127.75", "128.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "112.75", "113.75"
.YRange "126.25", "128.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111.25", "113.75"
.YRange "127.25", "126.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "109.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "116.5"
.YRange "130.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "115.5", "116.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "116.5"
.YRange "124.5", "123.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "124.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "130.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "130.5", "131.5"
.YRange "123.5", "131.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "124.5", "123.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.75", "122.75"
.YRange "121.75", "133.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.75", "133.25"
.YRange "132.25", "133.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.25", "133.25"
.YRange "121.75", "133.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.75", "133.25"
.YRange "122.75", "121.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "128", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "126", "129"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "127", "126"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "140"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "130", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "145", "146"
.YRange "124", "131"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "125", "124"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "132.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "121.5", "133.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "122.5", "121.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-145"
.YRange "109", "116"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-139"
.YRange "115", "116"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140", "-139"
.YRange "109", "116"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-139"
.YRange "110", "109"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-129.75"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "114.75", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.25", "-124.25"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "110.25", "109.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-114.25"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "114.25", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.75", "-109.75"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "110.75", "109.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-99.75"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "114.75", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95.25", "-94.25"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "110.25", "109.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.25", "-84.25"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.25", "-79.75"
.YRange "114.25", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80.75", "-79.75"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.25", "-79.75"
.YRange "110.75", "109.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71.5", "-70.5"
.YRange "108.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71.5", "-63.5"
.YRange "115.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-64.5", "-63.5"
.YRange "108.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71.5", "-63.5"
.YRange "109.5", "108.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.25", "-55.25"
.YRange "108.75", "116.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.25", "-48.75"
.YRange "115.25", "116.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-49.75", "-48.75"
.YRange "108.75", "116.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.25", "-48.75"
.YRange "109.75", "108.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-39.75"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "114.75", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.25", "-34.25"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "110.25", "109.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-24.25"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-19.75"
.YRange "114.25", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-20.75", "-19.75"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-19.75"
.YRange "110.75", "109.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-10.5"
.YRange "108.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "115.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-4.5", "-3.5"
.YRange "108.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "109.5", "108.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.25", "-12.25"
.YRange "106.75", "118.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.25", "-1.75"
.YRange "117.25", "118.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.75", "-1.75"
.YRange "106.75", "118.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.25", "-1.75"
.YRange "107.75", "106.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "5.75"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "114.25", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.25", "10.25"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "110.75", "109.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.75", "20.75"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.75", "25.25"
.YRange "114.25", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "24.25", "25.25"
.YRange "109.75", "115.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.75", "25.25"
.YRange "110.75", "109.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.25", "35.25"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.25", "40.75"
.YRange "114.75", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "39.75", "40.75"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.25", "40.75"
.YRange "110.25", "109.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.25", "50.25"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.25", "55.75"
.YRange "114.75", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.75", "55.75"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.25", "55.75"
.YRange "110.25", "109.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66.25", "67.25"
.YRange "111.25", "113.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66.25", "68.75"
.YRange "112.75", "113.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "67.75", "68.75"
.YRange "111.25", "113.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66.25", "68.75"
.YRange "112.25", "111.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "64.5"
.YRange "108.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "115.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "70.5", "71.5"
.YRange "108.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "109.5", "108.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.75", "79.75"
.YRange "108.75", "116.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.75", "86.25"
.YRange "115.25", "116.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "85.25", "86.25"
.YRange "108.75", "116.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.75", "86.25"
.YRange "109.75", "108.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "94.5"
.YRange "108.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "101.5"
.YRange "115.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "100.5", "101.5"
.YRange "108.5", "116.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "101.5"
.YRange "109.5", "108.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "110"
.YRange "109", "116"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "115", "116"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "115", "116"
.YRange "109", "116"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "110", "109"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "125.25"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "130.75"
.YRange "114.75", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "129.75", "130.75"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "130.75"
.YRange "110.25", "109.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "113", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "111", "114"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "112", "111"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.25", "140.25"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.25", "145.75"
.YRange "114.75", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "144.75", "145.75"
.YRange "109.25", "115.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.25", "145.75"
.YRange "110.25", "109.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "117.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "106.5", "118.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "107.5", "106.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-145.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "100.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-139.5", "-138.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "94.5", "93.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-129.25"
.YRange "94.75", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "99.25", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.75", "-124.75"
.YRange "94.75", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "95.75", "94.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-114.75"
.YRange "94.25", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "99.75", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.25", "-109.25"
.YRange "94.25", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "95.25", "94.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101", "-100"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101", "-94"
.YRange "100", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95", "-94"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101", "-94"
.YRange "95", "94"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-85"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-79"
.YRange "100", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80", "-79"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-79"
.YRange "95", "94"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71.25", "-70.25"
.YRange "93.75", "101.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71.25", "-63.75"
.YRange "100.25", "101.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-64.75", "-63.75"
.YRange "93.75", "101.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71.25", "-63.75"
.YRange "94.75", "93.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56", "-55"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56", "-49"
.YRange "100", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-50", "-49"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56", "-49"
.YRange "95", "94"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41", "-40"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41", "-34"
.YRange "100", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35", "-34"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41", "-34"
.YRange "95", "94"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-23.75", "-22.75"
.YRange "96.25", "98.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-23.75", "-21.25"
.YRange "97.75", "98.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22.25", "-21.25"
.YRange "96.25", "98.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-23.75", "-21.25"
.YRange "97.25", "96.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-25.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "100.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-19.5", "-18.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "94.5", "93.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.75", "-9.75"
.YRange "94.25", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.75", "-4.25"
.YRange "99.75", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5.25", "-4.25"
.YRange "94.25", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.75", "-4.25"
.YRange "95.25", "94.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "5.25"
.YRange "94.25", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "99.75", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.75", "10.75"
.YRange "94.25", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "95.25", "94.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "22.25"
.YRange "96.25", "98.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "23.75"
.YRange "97.75", "98.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "22.75", "23.75"
.YRange "96.25", "98.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "23.75"
.YRange "97.25", "96.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "19.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "100.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "25.5", "26.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "94.5", "93.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "35.75"
.YRange "94.75", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "99.25", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "39.25", "40.25"
.YRange "94.75", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "95.75", "94.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "50.75"
.YRange "94.75", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "99.25", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.25", "55.25"
.YRange "94.75", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "95.75", "94.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.75", "64.75"
.YRange "93.75", "101.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.75", "71.25"
.YRange "100.25", "101.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "70.25", "71.25"
.YRange "93.75", "101.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.75", "71.25"
.YRange "94.75", "93.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "80.25"
.YRange "94.25", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "99.75", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "84.75", "85.75"
.YRange "94.25", "100.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "95.25", "94.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "95"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "101"
.YRange "100", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "100", "101"
.YRange "94", "101"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "101"
.YRange "95", "94"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "109.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "116.5"
.YRange "100.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "115.5", "116.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "116.5"
.YRange "94.5", "93.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.75", "107.75"
.YRange "91.75", "103.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.75", "118.25"
.YRange "102.25", "103.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.25", "118.25"
.YRange "91.75", "103.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.75", "118.25"
.YRange "92.75", "91.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "98", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "96", "99"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "97", "96"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.75", "125.75"
.YRange "94.75", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.75", "130.25"
.YRange "99.25", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "129.25", "130.25"
.YRange "94.75", "100.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.75", "130.25"
.YRange "95.75", "94.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141.25", "142.25"
.YRange "96.25", "98.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141.25", "143.75"
.YRange "97.75", "98.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "142.75", "143.75"
.YRange "96.25", "98.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141.25", "143.75"
.YRange "97.25", "96.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "139.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "100.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "145.5", "146.5"
.YRange "93.5", "101.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "94.5", "93.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "102.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "91.5", "103.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "92.5", "91.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.75", "-144.75"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.75", "-139.25"
.YRange "84.75", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140.25", "-139.25"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.75", "-139.25"
.YRange "80.25", "79.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-129.25"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "84.25", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.75", "-124.75"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "80.75", "79.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-114.25"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "84.25", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.75", "-109.75"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "80.75", "79.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-100.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "85.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-94.5", "-93.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "79.5", "78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-84.75"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "84.75", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80.25", "-79.25"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "80.25", "79.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-69.25"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "84.25", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65.75", "-64.75"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "80.75", "79.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56", "-55"
.YRange "79", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56", "-49"
.YRange "85", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-50", "-49"
.YRange "79", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56", "-49"
.YRange "80", "79"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-39.25"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-34.75"
.YRange "84.25", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.75", "-34.75"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-34.75"
.YRange "80.75", "79.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-25.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "85.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-19.5", "-18.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "79.5", "78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.75", "-9.75"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.75", "-4.25"
.YRange "84.75", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5.25", "-4.25"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.75", "-4.25"
.YRange "80.25", "79.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "5.25"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "84.75", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.75", "10.75"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "80.25", "79.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19", "20"
.YRange "79", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19", "26"
.YRange "85", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "25", "26"
.YRange "79", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19", "26"
.YRange "80", "79"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36.25", "37.25"
.YRange "81.25", "83.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36.25", "38.75"
.YRange "82.75", "83.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "37.75", "38.75"
.YRange "81.25", "83.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36.25", "38.75"
.YRange "82.25", "81.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "34.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "85.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "40.5", "41.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "79.5", "78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "50.75"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "84.25", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.25", "55.25"
.YRange "79.75", "85.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "80.75", "79.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "64.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "85.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "70.5", "71.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "79.5", "78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.75", "62.75"
.YRange "76.75", "88.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.75", "73.25"
.YRange "87.25", "88.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.25", "73.25"
.YRange "76.75", "88.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.75", "73.25"
.YRange "77.75", "76.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.5", "79.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.5", "86.5"
.YRange "85.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "85.5", "86.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.5", "86.5"
.YRange "79.5", "78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "95.25"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "84.75", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "99.75", "100.75"
.YRange "79.25", "85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "80.25", "79.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "110"
.YRange "79", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "85", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "115", "116"
.YRange "79", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "80", "79"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126.25", "127.25"
.YRange "81.25", "83.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126.25", "128.75"
.YRange "82.75", "83.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "127.75", "128.75"
.YRange "81.25", "83.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126.25", "128.75"
.YRange "82.25", "81.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "124.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "85.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "130.5", "131.5"
.YRange "78.5", "86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "79.5", "78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "83", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "81", "84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "82", "81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "140"
.YRange "79", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "85", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "145", "146"
.YRange "79", "86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "80", "79"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "87.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "76.5", "88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "77.5", "76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.75", "-144.75"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.75", "-139.25"
.YRange "69.75", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140.25", "-139.25"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.75", "-139.25"
.YRange "65.25", "64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-130.5"
.YRange "63.5", "71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-123.5"
.YRange "70.5", "71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-124.5", "-123.5"
.YRange "63.5", "71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-123.5"
.YRange "64.5", "63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.25", "-132.25"
.YRange "61.75", "73.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.25", "-121.75"
.YRange "72.25", "73.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.75", "-121.75"
.YRange "61.75", "73.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.25", "-121.75"
.YRange "62.75", "61.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-114.75"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "69.75", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.25", "-109.25"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "65.25", "64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-100.5"
.YRange "63.5", "71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "70.5", "71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-94.5", "-93.5"
.YRange "63.5", "71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "64.5", "63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-84.75"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "69.75", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80.25", "-79.25"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "65.25", "64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-69.25"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "69.25", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65.75", "-64.75"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "65.75", "64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-54.25"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "69.25", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-50.75", "-49.75"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "65.75", "64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-39.25"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-34.75"
.YRange "69.25", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.75", "-34.75"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-34.75"
.YRange "65.75", "64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-24.25"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-19.75"
.YRange "69.25", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-20.75", "-19.75"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-19.75"
.YRange "65.75", "64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.75", "-9.75"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.75", "-4.25"
.YRange "69.75", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5.25", "-4.25"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.75", "-4.25"
.YRange "65.25", "64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "5.25"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "69.75", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.75", "10.75"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "65.25", "64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "22.25"
.YRange "66.25", "68.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "23.75"
.YRange "67.75", "68.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "22.75", "23.75"
.YRange "66.25", "68.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21.25", "23.75"
.YRange "67.25", "66.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "19.5"
.YRange "63.5", "71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "70.5", "71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "25.5", "26.5"
.YRange "63.5", "71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "64.5", "63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34", "35"
.YRange "64", "71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34", "41"
.YRange "70", "71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "40", "41"
.YRange "64", "71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34", "41"
.YRange "65", "64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.25", "50.25"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.25", "55.75"
.YRange "69.75", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.75", "55.75"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.25", "55.75"
.YRange "65.25", "64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.75", "65.75"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.75", "70.25"
.YRange "69.25", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "69.25", "70.25"
.YRange "64.75", "70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.75", "70.25"
.YRange "65.75", "64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "80.25"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "69.75", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "84.75", "85.75"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "65.25", "64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "95.25"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "69.75", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "99.75", "100.75"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "65.25", "64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "110"
.YRange "64", "71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "70", "71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "115", "116"
.YRange "64", "71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "65", "64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "125.25"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "130.75"
.YRange "69.75", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "129.75", "130.75"
.YRange "64.25", "70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "130.75"
.YRange "65.25", "64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "68", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "66", "69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "67", "66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.5", "140.5"
.YRange "64.5", "70.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.5", "145.5"
.YRange "69.5", "70.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "144.5", "145.5"
.YRange "64.5", "70.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.5", "145.5"
.YRange "65.5", "64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "72.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "61.5", "73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "62.5", "61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-145"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-139"
.YRange "55", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140", "-139"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-139"
.YRange "50", "49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-129.75"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "54.75", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.25", "-124.25"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "50.25", "49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-114.25"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "54.25", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.75", "-109.75"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "50.75", "49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-99.75"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "54.75", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95.25", "-94.25"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "50.25", "49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-85"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-79"
.YRange "55", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80", "-79"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-79"
.YRange "50", "49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.75", "-69.75"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.75", "-64.25"
.YRange "54.75", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65.25", "-64.25"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.75", "-64.25"
.YRange "50.25", "49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-54.25"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "54.25", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-50.75", "-49.75"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "50.75", "49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-39.75"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "54.75", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.25", "-34.25"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "50.25", "49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-24.25"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-19.75"
.YRange "54.25", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-20.75", "-19.75"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-19.75"
.YRange "50.75", "49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-8.75", "-7.75"
.YRange "51.25", "53.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-8.75", "-6.25"
.YRange "52.75", "53.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7.25", "-6.25"
.YRange "51.25", "53.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-8.75", "-6.25"
.YRange "52.25", "51.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-10.5"
.YRange "48.5", "56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "55.5", "56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-4.5", "-3.5"
.YRange "48.5", "56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "49.5", "48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4", "5"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4", "11"
.YRange "55", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "10", "11"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4", "11"
.YRange "50", "49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "20.25"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "25.75"
.YRange "54.75", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "24.75", "25.75"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "25.75"
.YRange "50.25", "49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.75", "34.75"
.YRange "48.75", "56.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.75", "41.25"
.YRange "55.25", "56.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "40.25", "41.25"
.YRange "48.75", "56.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.75", "41.25"
.YRange "49.75", "48.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "50.75"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "54.25", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.25", "55.25"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "50.75", "49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "64.5"
.YRange "48.5", "56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "55.5", "56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "70.5", "71.5"
.YRange "48.5", "56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "49.5", "48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "80.25"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "54.75", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "84.75", "85.75"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "50.25", "49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.75", "95.75"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.75", "100.25"
.YRange "54.25", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "99.25", "100.25"
.YRange "49.75", "55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.75", "100.25"
.YRange "50.75", "49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.25", "110.25"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.25", "115.75"
.YRange "54.75", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "114.75", "115.75"
.YRange "49.25", "55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.25", "115.75"
.YRange "50.25", "49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124", "125"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124", "131"
.YRange "55", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "130", "131"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124", "131"
.YRange "50", "49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "53", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "51", "54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "52", "51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "140"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "55", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "145", "146"
.YRange "49", "56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "50", "49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "57.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "46.5", "58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "47.5", "46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-143.75", "-142.75"
.YRange "36.25", "38.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-143.75", "-141.25"
.YRange "37.75", "38.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142.25", "-141.25"
.YRange "36.25", "38.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-143.75", "-141.25"
.YRange "37.25", "36.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-145.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "40.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-139.5", "-138.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "34.5", "33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131", "-130"
.YRange "34", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131", "-124"
.YRange "40", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125", "-124"
.YRange "34", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131", "-124"
.YRange "35", "34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-114.75"
.YRange "34.25", "40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "39.75", "40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.25", "-109.25"
.YRange "34.25", "40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "35.25", "34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-99.25"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-94.75"
.YRange "39.25", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95.75", "-94.75"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-94.75"
.YRange "35.75", "34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-84.75"
.YRange "34.25", "40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "39.75", "40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80.25", "-79.25"
.YRange "34.25", "40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "35.25", "34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-69.25"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "39.25", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65.75", "-64.75"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "35.75", "34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-55.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "40.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-49.5", "-48.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "34.5", "33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-39.75"
.YRange "34.25", "40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "39.75", "40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.25", "-34.25"
.YRange "34.25", "40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "35.25", "34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26", "-25"
.YRange "34", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26", "-19"
.YRange "40", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-20", "-19"
.YRange "34", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26", "-19"
.YRange "35", "34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-9.25"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "39.25", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5.75", "-4.75"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "35.75", "34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "5.75"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "39.25", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.25", "10.25"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "35.75", "34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.75", "20.75"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.75", "25.25"
.YRange "39.25", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "24.25", "25.25"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.75", "25.25"
.YRange "35.75", "34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "34.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "40.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "40.5", "41.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "34.5", "33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "48.5", "49.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "48.5", "56.5"
.YRange "40.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "55.5", "56.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "48.5", "56.5"
.YRange "34.5", "33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.75", "65.75"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.75", "70.25"
.YRange "39.25", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "69.25", "70.25"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.75", "70.25"
.YRange "35.75", "34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.75", "80.75"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.75", "85.25"
.YRange "39.25", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "84.25", "85.25"
.YRange "34.75", "40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.75", "85.25"
.YRange "35.75", "34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "95"
.YRange "34", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "101"
.YRange "40", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "100", "101"
.YRange "34", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "101"
.YRange "35", "34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "109.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "116.5"
.YRange "40.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "115.5", "116.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "108.5", "116.5"
.YRange "34.5", "33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "124.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "40.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "130.5", "131.5"
.YRange "33.5", "41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "34.5", "33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "38", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "36", "39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "37", "36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "140"
.YRange "34", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "40", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "145", "146"
.YRange "34", "41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "35", "34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "42.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "31.5", "43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "32.5", "31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-144.25"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-139.75"
.YRange "24.25", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140.75", "-139.75"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-139.75"
.YRange "20.75", "19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-129.75"
.YRange "19.25", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "24.75", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.25", "-124.25"
.YRange "19.25", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "20.25", "19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-114.25"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "24.25", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.75", "-109.75"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "20.75", "19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-99.25"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-94.75"
.YRange "24.25", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95.75", "-94.75"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-94.75"
.YRange "20.75", "19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-84.75"
.YRange "19.25", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "24.75", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80.25", "-79.25"
.YRange "19.25", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "20.25", "19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-69.25"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "24.25", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65.75", "-64.75"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "20.75", "19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-53.75", "-52.75"
.YRange "21.25", "23.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-53.75", "-51.25"
.YRange "22.75", "23.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52.25", "-51.25"
.YRange "21.25", "23.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-53.75", "-51.25"
.YRange "22.25", "21.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-55.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "25.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-49.5", "-48.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "19.5", "18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-39.25"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-34.75"
.YRange "24.25", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.75", "-34.75"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-34.75"
.YRange "20.75", "19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-25.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "25.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-19.5", "-18.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "19.5", "18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-10.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "25.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-4.5", "-3.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "19.5", "18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "5.25"
.YRange "19.25", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "24.75", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.75", "10.75"
.YRange "19.25", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "20.25", "19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "20.25"
.YRange "19.25", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "25.75"
.YRange "24.75", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "24.75", "25.75"
.YRange "19.25", "25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "25.75"
.YRange "20.25", "19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "35.75"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "24.25", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "39.25", "40.25"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "20.75", "19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "50.75"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "24.25", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.25", "55.25"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "20.75", "19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.75", "65.75"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.75", "70.25"
.YRange "24.25", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "69.25", "70.25"
.YRange "19.75", "25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.75", "70.25"
.YRange "20.75", "19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.5", "79.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.5", "86.5"
.YRange "25.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "85.5", "86.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.5", "86.5"
.YRange "19.5", "18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "95"
.YRange "19", "26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "101"
.YRange "25", "26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "100", "101"
.YRange "19", "26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94", "101"
.YRange "20", "19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "110"
.YRange "19", "26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "25", "26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "115", "116"
.YRange "19", "26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "20", "19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "124.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "25.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "130.5", "131.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "123.5", "131.5"
.YRange "19.5", "18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "122.25", "123.25"
.YRange "17.25", "27.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "122.25", "132.75"
.YRange "26.75", "27.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "131.75", "132.75"
.YRange "17.25", "27.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "122.25", "132.75"
.YRange "18.25", "17.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "23", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "21", "24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "22", "21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "139.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "25.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "145.5", "146.5"
.YRange "18.5", "26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "19.5", "18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "27.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "16.5", "28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "17.5", "16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-145.5"
.YRange "3.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "10.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-139.5", "-138.5"
.YRange "3.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "4.5", "3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.25", "-147.25"
.YRange "1.75", "13.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.25", "-136.75"
.YRange "12.25", "13.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.75", "-136.75"
.YRange "1.75", "13.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.25", "-136.75"
.YRange "2.75", "1.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-129.25"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "9.25", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.75", "-124.75"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "5.75", "4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-113.75", "-112.75"
.YRange "6.25", "8.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-113.75", "-111.25"
.YRange "7.75", "8.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112.25", "-111.25"
.YRange "6.25", "8.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-113.75", "-111.25"
.YRange "7.25", "6.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-115.5"
.YRange "3.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "10.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-109.5", "-108.5"
.YRange "3.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "4.5", "3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-100.5"
.YRange "3.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "10.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-94.5", "-93.5"
.YRange "3.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "4.5", "3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-84.75"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "9.75", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80.25", "-79.25"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "5.25", "4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.75", "-69.75"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.75", "-64.25"
.YRange "9.75", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65.25", "-64.25"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.75", "-64.25"
.YRange "5.25", "4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-54.25"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "9.25", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-50.75", "-49.75"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "5.75", "4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41", "-40"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41", "-34"
.YRange "10", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35", "-34"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41", "-34"
.YRange "5", "4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.75", "-24.75"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.75", "-19.25"
.YRange "9.75", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-20.25", "-19.25"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.75", "-19.25"
.YRange "5.25", "4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-9.25"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "9.25", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5.75", "-4.75"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "5.75", "4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4", "5"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4", "11"
.YRange "10", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "10", "11"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4", "11"
.YRange "5", "4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "20.25"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "25.75"
.YRange "9.75", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "24.75", "25.75"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "25.75"
.YRange "5.25", "4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34", "35"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34", "41"
.YRange "10", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "40", "41"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34", "41"
.YRange "5", "4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "50.75"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "9.25", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.25", "55.25"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "5.75", "4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.25", "65.25"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.25", "70.75"
.YRange "9.75", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "69.75", "70.75"
.YRange "4.25", "10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.25", "70.75"
.YRange "5.25", "4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.75", "79.75"
.YRange "3.75", "11.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.75", "86.25"
.YRange "10.25", "11.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "85.25", "86.25"
.YRange "3.75", "11.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.75", "86.25"
.YRange "4.75", "3.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "94.5"
.YRange "3.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "101.5"
.YRange "10.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "100.5", "101.5"
.YRange "3.5", "11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "101.5"
.YRange "4.5", "3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "92.25", "93.25"
.YRange "2.25", "12.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "92.25", "102.75"
.YRange "11.75", "12.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "101.75", "102.75"
.YRange "2.25", "12.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "92.25", "102.75"
.YRange "3.25", "2.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.75", "110.75"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.75", "115.25"
.YRange "9.25", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "114.25", "115.25"
.YRange "4.75", "10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.75", "115.25"
.YRange "5.75", "4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124", "125"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124", "131"
.YRange "10", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "130", "131"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124", "131"
.YRange "5", "4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "8", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "6", "9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "7", "6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "140"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "10", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "145", "146"
.YRange "4", "11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139", "146"
.YRange "5", "4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "12.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "1.5", "13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "2.5", "1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-144.25"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-139.75"
.YRange "-5.75", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140.75", "-139.75"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-139.75"
.YRange "-9.25", "-10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-129.25"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "-5.75", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.75", "-124.75"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "-9.25", "-10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-114.25"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "-5.75", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.75", "-109.75"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "-9.25", "-10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-99.75"
.YRange "-10.75", "-4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "-5.25", "-4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95.25", "-94.25"
.YRange "-10.75", "-4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "-9.75", "-10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-84.75"
.YRange "-10.75", "-4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "-5.25", "-4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80.25", "-79.25"
.YRange "-10.75", "-4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "-9.75", "-10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71.5", "-70.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71.5", "-63.5"
.YRange "-4.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-64.5", "-63.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71.5", "-63.5"
.YRange "-10.5", "-11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-72.75", "-71.75"
.YRange "-12.75", "-2.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-72.75", "-62.25"
.YRange "-3.25", "-2.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-63.25", "-62.25"
.YRange "-12.75", "-2.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-72.75", "-62.25"
.YRange "-11.75", "-12.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-54.25"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "-5.75", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-50.75", "-49.75"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-55.25", "-49.75"
.YRange "-9.25", "-10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41.5", "-40.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41.5", "-33.5"
.YRange "-4.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-34.5", "-33.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41.5", "-33.5"
.YRange "-10.5", "-11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.25", "-42.25"
.YRange "-13.25", "-1.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.25", "-31.75"
.YRange "-2.75", "-1.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.75", "-31.75"
.YRange "-13.25", "-1.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.25", "-31.75"
.YRange "-12.25", "-13.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-25.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "-4.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-19.5", "-18.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "-10.5", "-11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-9.25"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "-5.75", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5.75", "-4.75"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "-9.25", "-10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "5.75"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "-5.75", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.25", "10.25"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "-9.25", "-10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "19.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "-4.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "25.5", "26.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "18.5", "26.5"
.YRange "-10.5", "-11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "35.75"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "-5.75", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "39.25", "40.25"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "-9.25", "-10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "50.75"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "-5.75", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.25", "55.25"
.YRange "-10.25", "-4.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "-9.25", "-10.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "64.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "-4.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "70.5", "71.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "-10.5", "-11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.5", "79.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.5", "86.5"
.YRange "-4.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "85.5", "86.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "78.5", "86.5"
.YRange "-10.5", "-11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "94.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "101.5"
.YRange "-4.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "100.5", "101.5"
.YRange "-11.5", "-3.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "101.5"
.YRange "-10.5", "-11.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "110"
.YRange "-11", "-4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "-5", "-4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "115", "116"
.YRange "-11", "-4"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109", "116"
.YRange "-10", "-11"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.5", "125.5"
.YRange "-10.5", "-4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.5", "130.5"
.YRange "-5.5", "-4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "129.5", "130.5"
.YRange "-10.5", "-4.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.5", "130.5"
.YRange "-9.5", "-10.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-7", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "-9", "-6"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-8", "-9"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.25", "140.25"
.YRange "-10.75", "-4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.25", "145.75"
.YRange "-5.25", "-4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "144.75", "145.75"
.YRange "-10.75", "-4.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.25", "145.75"
.YRange "-9.75", "-10.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-2.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "-13.5", "-1.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-12.5", "-13.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-145.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "-19.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-139.5", "-138.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "-25.5", "-26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-129.25"
.YRange "-25.25", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "-20.75", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.75", "-124.75"
.YRange "-25.25", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.25", "-124.75"
.YRange "-24.25", "-25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-114.75"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "-20.25", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.25", "-109.25"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "-24.75", "-25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-100.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "-19.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-94.5", "-93.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101.5", "-93.5"
.YRange "-25.5", "-26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-102.75", "-101.75"
.YRange "-27.75", "-17.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-102.75", "-92.25"
.YRange "-18.25", "-17.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-93.25", "-92.25"
.YRange "-27.75", "-17.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-102.75", "-92.25"
.YRange "-26.75", "-27.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-84.75"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "-20.25", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80.25", "-79.25"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.75", "-79.25"
.YRange "-24.75", "-25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-69.25"
.YRange "-25.25", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "-20.75", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65.75", "-64.75"
.YRange "-25.25", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "-24.25", "-25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-55.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "-19.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-49.5", "-48.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "-25.5", "-26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41", "-40"
.YRange "-26", "-19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41", "-34"
.YRange "-20", "-19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35", "-34"
.YRange "-26", "-19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-41", "-34"
.YRange "-25", "-26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-25.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "-19.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-19.5", "-18.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.5", "-18.5"
.YRange "-25.5", "-26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-10.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "-19.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-4.5", "-3.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "-25.5", "-26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "5.25"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "-20.25", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.75", "10.75"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.25", "10.75"
.YRange "-24.75", "-25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "20.25"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "25.75"
.YRange "-20.25", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "24.75", "25.75"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.25", "25.75"
.YRange "-24.75", "-25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "35.75"
.YRange "-25.25", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "-20.75", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "39.25", "40.25"
.YRange "-25.25", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "-24.25", "-25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49", "50"
.YRange "-26", "-19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49", "56"
.YRange "-20", "-19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "55", "56"
.YRange "-26", "-19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49", "56"
.YRange "-25", "-26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.25", "65.25"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.25", "70.75"
.YRange "-20.25", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "69.75", "70.75"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.25", "70.75"
.YRange "-24.75", "-25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "80.25"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "-20.25", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "84.75", "85.75"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "-24.75", "-25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "95.25"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "-20.25", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "99.75", "100.75"
.YRange "-25.75", "-19.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "-24.75", "-25.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.75", "110.75"
.YRange "-25.25", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.75", "115.25"
.YRange "-20.75", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "114.25", "115.25"
.YRange "-25.25", "-19.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.75", "115.25"
.YRange "-24.25", "-25.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124", "125"
.YRange "-26", "-19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124", "131"
.YRange "-20", "-19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "130", "131"
.YRange "-26", "-19"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124", "131"
.YRange "-25", "-26"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-22", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "-24", "-21"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-23", "-24"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "139.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "-19.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "145.5", "146.5"
.YRange "-26.5", "-18.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "138.5", "146.5"
.YRange "-25.5", "-26.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-17.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "-28.5", "-16.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-27.5", "-28.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-145.5"
.YRange "-41.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "-34.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-139.5", "-138.5"
.YRange "-41.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146.5", "-138.5"
.YRange "-40.5", "-41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-147.75", "-146.75"
.YRange "-42.75", "-32.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-147.75", "-137.25"
.YRange "-33.25", "-32.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-138.25", "-137.25"
.YRange "-42.75", "-32.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-147.75", "-137.25"
.YRange "-41.75", "-42.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-130.5"
.YRange "-41.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-123.5"
.YRange "-34.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-124.5", "-123.5"
.YRange "-41.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-123.5"
.YRange "-40.5", "-41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-114.75"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "-35.25", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.25", "-109.25"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.75", "-109.25"
.YRange "-39.75", "-40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-99.25"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-94.75"
.YRange "-35.75", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95.75", "-94.75"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-94.75"
.YRange "-39.25", "-40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-85"
.YRange "-41", "-34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-79"
.YRange "-35", "-34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80", "-79"
.YRange "-41", "-34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86", "-79"
.YRange "-40", "-41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-69.25"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "-35.75", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65.75", "-64.75"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-70.25", "-64.75"
.YRange "-39.25", "-40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-55.5"
.YRange "-41.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "-34.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-49.5", "-48.5"
.YRange "-41.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "-40.5", "-41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-39.75"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "-35.25", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.25", "-34.25"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "-39.75", "-40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-24.25"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-19.75"
.YRange "-35.75", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-20.75", "-19.75"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.25", "-19.75"
.YRange "-39.25", "-40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-9.25"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "-35.75", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5.75", "-4.75"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-10.25", "-4.75"
.YRange "-39.25", "-40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "5.75"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "-35.75", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.25", "10.25"
.YRange "-40.25", "-34.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "-39.25", "-40.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.5", "20.5"
.YRange "-40.5", "-34.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.5", "25.5"
.YRange "-35.5", "-34.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "24.5", "25.5"
.YRange "-40.5", "-34.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.5", "25.5"
.YRange "-39.5", "-40.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "34.5"
.YRange "-41.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "-34.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "40.5", "41.5"
.YRange "-41.5", "-33.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "-40.5", "-41.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.25", "50.25"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.25", "55.75"
.YRange "-35.25", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.75", "55.75"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.25", "55.75"
.YRange "-39.75", "-40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64", "65"
.YRange "-41", "-34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64", "71"
.YRange "-35", "-34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "70", "71"
.YRange "-41", "-34"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64", "71"
.YRange "-40", "-41"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "80.25"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "-35.25", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "84.75", "85.75"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "-39.75", "-40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "95.25"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "-35.25", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "99.75", "100.75"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "-39.75", "-40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.25", "110.25"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.25", "115.75"
.YRange "-35.25", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "114.75", "115.75"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.25", "115.75"
.YRange "-39.75", "-40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "125.25"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "130.75"
.YRange "-35.25", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "129.75", "130.75"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "130.75"
.YRange "-39.75", "-40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-37", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "-39", "-36"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-38", "-39"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.25", "140.25"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.25", "145.75"
.YRange "-35.25", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "144.75", "145.75"
.YRange "-40.75", "-34.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.25", "145.75"
.YRange "-39.75", "-40.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-32.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "-43.5", "-31.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-42.5", "-43.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.75", "-144.75"
.YRange "-55.75", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.75", "-139.25"
.YRange "-50.25", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140.25", "-139.25"
.YRange "-55.75", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.75", "-139.25"
.YRange "-54.75", "-55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-129.75"
.YRange "-55.75", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "-50.25", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.25", "-124.25"
.YRange "-55.75", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "-54.75", "-55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-115.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "-49.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-109.5", "-108.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "-55.5", "-56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-99.25"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-94.75"
.YRange "-50.75", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95.75", "-94.75"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.25", "-94.75"
.YRange "-54.25", "-55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.25", "-84.25"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.25", "-79.75"
.YRange "-50.75", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-80.75", "-79.75"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-85.25", "-79.75"
.YRange "-54.25", "-55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71", "-70"
.YRange "-56", "-49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71", "-64"
.YRange "-50", "-49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65", "-64"
.YRange "-56", "-49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71", "-64"
.YRange "-55", "-56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-53"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52", "-51"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-54", "-51"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56", "-55"
.YRange "-56", "-49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56", "-49"
.YRange "-50", "-49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-50", "-49"
.YRange "-56", "-49"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56", "-49"
.YRange "-55", "-56"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-39.75"
.YRange "-55.75", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "-50.25", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.25", "-34.25"
.YRange "-55.75", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.75", "-34.25"
.YRange "-54.75", "-55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.25", "-25.25"
.YRange "-56.25", "-48.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.25", "-18.75"
.YRange "-49.75", "-48.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-19.75", "-18.75"
.YRange "-56.25", "-48.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-26.25", "-18.75"
.YRange "-55.25", "-56.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-8.75", "-7.75"
.YRange "-53.75", "-51.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-8.75", "-6.25"
.YRange "-52.25", "-51.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7.25", "-6.25"
.YRange "-53.75", "-51.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-8.75", "-6.25"
.YRange "-52.75", "-53.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-10.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "-49.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-4.5", "-3.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11.5", "-3.5"
.YRange "-55.5", "-56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "5.75"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "-50.75", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "9.25", "10.25"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "4.75", "10.25"
.YRange "-54.25", "-55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.5", "20.5"
.YRange "-55.5", "-49.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.5", "25.5"
.YRange "-50.5", "-49.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "24.5", "25.5"
.YRange "-55.5", "-49.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.5", "25.5"
.YRange "-54.5", "-55.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "34.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "-49.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "40.5", "41.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "33.5", "41.5"
.YRange "-55.5", "-56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "50.75"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "-50.75", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "54.25", "55.25"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49.75", "55.25"
.YRange "-54.25", "-55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "64.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "-49.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "70.5", "71.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "63.5", "71.5"
.YRange "-55.5", "-56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "62.25", "63.25"
.YRange "-57.75", "-47.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "62.25", "72.75"
.YRange "-48.25", "-47.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "71.75", "72.75"
.YRange "-57.75", "-47.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "62.25", "72.75"
.YRange "-56.75", "-57.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.75", "80.75"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.75", "85.25"
.YRange "-50.75", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "84.25", "85.25"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.75", "85.25"
.YRange "-54.25", "-55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96.25", "97.25"
.YRange "-53.75", "-51.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96.25", "98.75"
.YRange "-52.25", "-51.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "97.75", "98.75"
.YRange "-53.75", "-51.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96.25", "98.75"
.YRange "-52.75", "-53.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "94.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "101.5"
.YRange "-49.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "100.5", "101.5"
.YRange "-56.5", "-48.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "93.5", "101.5"
.YRange "-55.5", "-56.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.75", "110.75"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.75", "115.25"
.YRange "-50.75", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "114.25", "115.25"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.75", "115.25"
.YRange "-54.25", "-55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "125.25"
.YRange "-55.75", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "130.75"
.YRange "-50.25", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "129.75", "130.75"
.YRange "-55.75", "-49.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.25", "130.75"
.YRange "-54.75", "-55.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-52", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "-54", "-51"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-53", "-54"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.75", "140.75"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.75", "145.25"
.YRange "-50.75", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "144.25", "145.25"
.YRange "-55.25", "-49.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.75", "145.25"
.YRange "-54.25", "-55.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-47.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "-58.5", "-46.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-57.5", "-58.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-144.25"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-139.75"
.YRange "-65.75", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140.75", "-139.75"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-145.25", "-139.75"
.YRange "-69.25", "-70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-129.75"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "-65.25", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-125.25", "-124.25"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-130.75", "-124.25"
.YRange "-69.75", "-70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-114.25"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "-65.75", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-110.75", "-109.75"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-115.25", "-109.75"
.YRange "-69.25", "-70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101", "-100"
.YRange "-71", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101", "-94"
.YRange "-65", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95", "-94"
.YRange "-71", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-101", "-94"
.YRange "-70", "-71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-83.75", "-82.75"
.YRange "-68.75", "-66.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-83.75", "-81.25"
.YRange "-67.25", "-66.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82.25", "-81.25"
.YRange "-68.75", "-66.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-83.75", "-81.25"
.YRange "-67.75", "-68.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86.5", "-85.5"
.YRange "-71.5", "-63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86.5", "-78.5"
.YRange "-64.5", "-63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-79.5", "-78.5"
.YRange "-71.5", "-63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86.5", "-78.5"
.YRange "-70.5", "-71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-87.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-77.5", "-76.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-88.5", "-76.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-68"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-67", "-66"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-69", "-66"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71", "-70"
.YRange "-71", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71", "-64"
.YRange "-65", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-65", "-64"
.YRange "-71", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-71", "-64"
.YRange "-70", "-71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-72.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-62.5", "-61.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-73.5", "-61.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-53.75", "-52.75"
.YRange "-68.75", "-66.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-53.75", "-51.25"
.YRange "-67.25", "-66.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-52.25", "-51.25"
.YRange "-68.75", "-66.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-53.75", "-51.25"
.YRange "-67.75", "-68.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-55.5"
.YRange "-71.5", "-63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "-64.5", "-63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-49.5", "-48.5"
.YRange "-71.5", "-63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-56.5", "-48.5"
.YRange "-70.5", "-71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-57.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-47.5", "-46.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-58.5", "-46.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-38"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-37", "-36"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-39", "-36"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-39.25"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-34.75"
.YRange "-65.75", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-35.75", "-34.75"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-40.25", "-34.75"
.YRange "-69.25", "-70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-42.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-32.5", "-31.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-43.5", "-31.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-23"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-22", "-21"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-24", "-21"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.75", "-24.75"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.75", "-19.25"
.YRange "-65.25", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-20.25", "-19.25"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-25.75", "-19.25"
.YRange "-69.75", "-70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-27.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-17.5", "-16.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-28.5", "-16.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-8"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-7", "-6"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-9", "-6"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11", "-10"
.YRange "-71", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11", "-4"
.YRange "-65", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-5", "-4"
.YRange "-71", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-11", "-4"
.YRange "-70", "-71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-12.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-2.5", "-1.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-13.5", "-1.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "7"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "8", "9"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "6", "9"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "3.5", "4.5"
.YRange "-71.5", "-63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "3.5", "11.5"
.YRange "-64.5", "-63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "10.5", "11.5"
.YRange "-71.5", "-63.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "3.5", "11.5"
.YRange "-70.5", "-71.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "2.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "12.5", "13.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "1.5", "13.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "22"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "23", "24"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "21", "24"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.5", "20.5"
.YRange "-70.5", "-64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.5", "25.5"
.YRange "-65.5", "-64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "24.5", "25.5"
.YRange "-70.5", "-64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "19.5", "25.5"
.YRange "-69.5", "-70.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "17.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "27.5", "28.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "16.5", "28.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "37"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "38", "39"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "36", "39"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "35.75"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "-65.75", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "39.25", "40.25"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "34.75", "40.25"
.YRange "-69.25", "-70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "32.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "42.5", "43.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "31.5", "43.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "52"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "53", "54"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "51", "54"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49", "50"
.YRange "-71", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49", "56"
.YRange "-65", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "55", "56"
.YRange "-71", "-64"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "49", "56"
.YRange "-70", "-71"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "47.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "57.5", "58.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "46.5", "58.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "67"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "68", "69"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "66", "69"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.25", "65.25"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.25", "70.75"
.YRange "-65.25", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "69.75", "70.75"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "64.25", "70.75"
.YRange "-69.75", "-70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "62.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "72.5", "73.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "61.5", "73.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "82"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "83", "84"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "81", "84"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "80.25"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "-65.25", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "84.75", "85.75"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "79.25", "85.75"
.YRange "-69.75", "-70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "77.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "87.5", "88.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "76.5", "88.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "97"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "98", "99"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "96", "99"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "95.25"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "-65.25", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "99.75", "100.75"
.YRange "-70.75", "-64.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "94.25", "100.75"
.YRange "-69.75", "-70.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "92.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "102.5", "103.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "91.5", "103.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "112"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "113", "114"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "111", "114"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.5", "110.5"
.YRange "-70.5", "-64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.5", "115.5"
.YRange "-65.5", "-64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "114.5", "115.5"
.YRange "-70.5", "-64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "109.5", "115.5"
.YRange "-69.5", "-70.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "107.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "117.5", "118.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "106.5", "118.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "127"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "128", "129"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "126", "129"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.5", "125.5"
.YRange "-70.5", "-64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.5", "130.5"
.YRange "-65.5", "-64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "129.5", "130.5"
.YRange "-70.5", "-64.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "124.5", "130.5"
.YRange "-69.5", "-70.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "122.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "132.5", "133.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "121.5", "133.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "142"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-67", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "143", "144"
.YRange "-69", "-66"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "141", "144"
.YRange "-68", "-69"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.75", "140.75"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.75", "145.25"
.YRange "-65.75", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "144.25", "145.25"
.YRange "-70.25", "-64.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "139.75", "145.25"
.YRange "-69.25", "-70.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "137.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-62.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "147.5", "148.5"
.YRange "-73.5", "-61.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "136.5", "148.5"
.YRange "-72.5", "-73.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-143"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-82", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-142", "-141"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-144", "-141"
.YRange "-83", "-84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-145"
.YRange "-86", "-79"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-139"
.YRange "-80", "-79"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-140", "-139"
.YRange "-86", "-79"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-146", "-139"
.YRange "-85", "-86"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-147.5"
.YRange "-88.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-77.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-137.5", "-136.5"
.YRange "-88.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-148.5", "-136.5"
.YRange "-87.5", "-88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-128"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-82", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-127", "-126"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-129", "-126"
.YRange "-83", "-84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-130.5"
.YRange "-86.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-123.5"
.YRange "-79.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-124.5", "-123.5"
.YRange "-86.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-131.5", "-123.5"
.YRange "-85.5", "-86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-132.5"
.YRange "-88.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-77.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-122.5", "-121.5"
.YRange "-88.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-133.5", "-121.5"
.YRange "-87.5", "-88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-113"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-82", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-112", "-111"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-114", "-111"
.YRange "-83", "-84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-115.5"
.YRange "-86.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "-79.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-109.5", "-108.5"
.YRange "-86.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-116.5", "-108.5"
.YRange "-85.5", "-86.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-117.5"
.YRange "-88.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-77.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-107.5", "-106.5"
.YRange "-88.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-118.5", "-106.5"
.YRange "-87.5", "-88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-98"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-82", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-97", "-96"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-99", "-96"
.YRange "-83", "-84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-99.75"
.YRange "-85.75", "-79.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "-80.25", "-79.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-95.25", "-94.25"
.YRange "-85.75", "-79.25"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-100.75", "-94.25"
.YRange "-84.75", "-85.75"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-102.5"
.YRange "-88.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-77.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-92.5", "-91.5"
.YRange "-88.5", "-76.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:outersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "outersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-103.5", "-91.5"
.YRange "-87.5", "-88.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ Merge Common Materials:Base

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
Solid.MergeMaterialsOfComponent "Base"

'@ define brick: Base:innersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-83"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-82", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquareright"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-82", "-81"
.YRange "-84", "-81"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:innersquarebottom

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "innersquarebottom"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-84", "-81"
.YRange "-83", "-84"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareleft

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareleft"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86.5", "-85.5"
.YRange "-86.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquaretop

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquaretop"
.Component "Base"
.Material "Copper (annealed)"
.XRange "-86.5", "-78.5"
.YRange "-79.5", "-78.5"
.ZRange "7.57", "7.605"
.Create
End With

'@ define brick: Base:centersquareright

'[VERSION]2021.1|30.0.1|20201110[/VERSION]
With Brick
.Reset
.Name "centersquareright"
.Create

