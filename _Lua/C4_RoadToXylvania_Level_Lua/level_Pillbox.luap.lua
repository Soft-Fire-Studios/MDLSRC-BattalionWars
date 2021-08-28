function level_Pillbox(owner)
  group.Add(Unit_Group.XV_PILLBOXES, Building.XV_PILLBOX03)
  group.Add(Unit_Group.XV_PILLBOXES, Building.XV_PILLBOX04)
  while true do
    local box = 0
    local unit = 0
    DebugOut("Pillbox Spawn Loop")
    box = group.FirstEmptyContainer(Unit_Group.XV_PILLBOXES)
    unit = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT)
    DebugOut(box, unit)
    if box > 0 and unit > 0 and GetHealthPercent(box) > 0.5 then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, box)
      DebugOut("Spawned!")
    end
    WaitFor(5)
  end
end
