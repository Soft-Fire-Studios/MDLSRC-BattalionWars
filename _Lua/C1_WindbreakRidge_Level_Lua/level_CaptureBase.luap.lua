function level_CaptureBase(owner)
  while CurrentObjective < 2 do
    EndFrame()
  end
  while true do
    local unit = 0
    if unit == 0 then
      unit = group.RandomInZone(Unit_Group.TN_InfantryWave_01, Map_Zone.CapBase)
    end
    if unit == 0 then
      unit = group.RandomInZone(Unit_Group.TN_InfantryWave_02, Map_Zone.CapBase)
    end
    if unit == 0 then
      unit = group.RandomInZone(Unit_Group.TN_InfantryWave_03, Map_Zone.CapBase)
    end
    if unit == 0 then
      unit = group.RandomInZone(Unit_Group.TN_InfantryWave_04, Map_Zone.CapBase)
    end
    DebugOut(unit)
    if unit > 0 and 0 < GetNumSeatsFree(Capture_Point.OUTPOST_CAPTURE_POINT) then
      EnterVehicle(unit, Capture_Point.OUTPOST_CAPTURE_POINT)
    end
    WaitFor(15)
  end
end
