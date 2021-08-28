function level_CarrierSpawner(owner)
  group.Add(Unit_Group.Carriers, Building.MGNEST03)
  group.Add(Unit_Group.Carriers, Building.MGNEST04)
  group.Add(Unit_Group.Carriers, Building.MGNEST05)
  group.Add(Unit_Group.Carriers, Building.MGNEST06)
  group.Add(Unit_Group.Carriers, Building.MGNEST07)
  group.Add(Unit_Group.Carriers, Building.MGNEST01)
  group.Add(Unit_Group.Carriers, Building.MGNEST02)
  group.Add(Unit_Group.Carriers, Ground_Vehicle.XV_LTK01)
  group.Add(Unit_Group.Carriers, Ground_Vehicle.XV_LTK02)
  group.Add(Unit_Group.Carriers, Ground_Vehicle.XV_LTK03)
  while true do
    local carr = 0
    local unit = 0
    carr = group.FirstContainerWithSeatsFree(Unit_Group.Carriers)
    unit = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT)
    if carr > 0 and unit > 0 and GetHealthPercent(carr) > 0.3 then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, carr)
    end
    WaitFor(5)
  end
end
