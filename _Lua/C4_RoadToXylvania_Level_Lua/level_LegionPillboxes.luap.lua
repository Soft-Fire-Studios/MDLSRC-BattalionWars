function level_LegionPillboxes(owner)
  group.Add(Unit_Group.LG_PILLBOXES, Building.LG_PILLBOX04)
  group.Add(Unit_Group.LG_PILLBOXES, Building.LG_PILLBOX05)
  group.Add(Unit_Group.LG_PILLBOXES, Building.LG_PILLBOX06)
  group.Add(Unit_Group.LG_PILLBOXES, Building.LG_PILLBOX07)
  group.Add(Unit_Group.LG_PILLBOXES, Building.LG_PILLBOX08)
  while true do
    local box = 0
    local unit = 0
    box = group.FirstEmptyContainer(Unit_Group.LG_PILLBOXES)
    unit = FindDeadUnit(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT)
    if box > 0 and unit > 0 and GetHealthPercent(box) > 0.5 then
      SpawnUnitInCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, box)
    end
    WaitFor(5)
  end
end
