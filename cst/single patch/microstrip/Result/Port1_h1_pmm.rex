<?xml version="1.0" encoding="UTF-8"?>
<MetaResultFile creator="FE Port mode solver" version="20170330">
  <SpecialMaterials>
    <Background type="NORMAL"/>
  </SpecialMaterials>
  <SimulationProperties dB_Amplitude="20" encoded_unit="&amp;U:A^1.:m^-1" fieldname="Port1 h1" fieldtype="H-Field" frequency="0"/>
  <MetaGeometryFile filename="" lod="1"/>
  <ResultGroups num_steps="1">
    <Frame index="0" characteristic="2.5">
      <FieldResultFile filename="Port1_h1[2.5].prt" meshname="Port1_h1_pmm.slim" type="prt"/>
    </Frame>
  </ResultGroups>
  <ResultDataType complex="1" timedomain="0" vector="1"/>
  <SimulationDomain min="0 0 0" max="0 0 0"/>
  <PlotSettings Clipping="Always on" Plot="1" ignore_symmetry="0" deformation="0">
    <Plane normal="-0 1 -0" distance="-28"/>
  </PlotSettings>
  <Source type="SOLVER"/>
  <Units>
    <Quantity factor="0.001" name="Length" unit="mm"/>
    <Quantity factor="1e-09" name="Time" unit="ns"/>
    <Quantity factor="1000000000" name="Frequency" unit="GHz"/>
    <Quantity factor="1" name="Temperature" unit="K"/>
  </Units>
</MetaResultFile>
