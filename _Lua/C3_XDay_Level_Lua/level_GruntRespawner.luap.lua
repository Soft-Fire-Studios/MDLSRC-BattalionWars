function level_GruntRespawner(owner)
  while true do
    if group.NumInZone(Unit_Group.PlayerUnits, Map_Zone.CHARGE) > 0 or group.NumInZone(Unit_Group.PlayerUnits, Map_Zone.CHARGE) > 0 then
      break
    end
    EndFrame()
  end
  local timeout = GetTime() + 5
  local count = 0
  while true do
    local unit = 0
    unit = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT)
    if unit > 0 then
      SpawnUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, GetRandom(-45, -65), GetRandom(-255, -275), 0, 5)
      AddToGroup(Unit_Group.GruntRush, unit)
      count = count + 1
    end
    if count > 6 then
      DebugOut("Reached count")
      break
    end
    if timeout < GetTime() then
      DebugOut("Time out")
      break
    end
    WaitFor(1)
  end
  DebugOut("Charge")
  if 0 < GetPlayerUnit() then
    group.AttackTarget(Unit_Group.GruntRush, GetPlayerUnit())
    AttackTarget(Ground_Vehicle.XV_LTK03, GetPlayerUnit())
  end
  local ChooseSpawnPath = function(target)
    FollowWaypoint(target, Waypoint.WP_BASE01, 1, 1)
  end
  while true do
    if messages.HasBeenTriggered("XV_Launch_Strat") then
      DebugOut("Spawn Stopped")
      return
    end
    local unit = 0
    unit = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT)
    while unit > 0 do
      if Teleport(unit, GetRandom(-330, -295), GetRandom(90, 75), 0, 10) then
        ReviveDeadUnit(unit)
        WaitFor(2)
        ChooseSpawnPath(unit)
      end
      unit = 0
      WaitFor(1)
    end
    unit = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR)
    while unit > 0 do
      if Teleport(unit, GetRandom(-330, -295), GetRandom(90, 75), 0, 10) then
        ReviveDeadUnit(unit)
        WaitFor(2)
        ChooseSpawnPath(unit)
      end
      unit = 0
      WaitFor(1)
    end
    EndFrame()
  end
end
