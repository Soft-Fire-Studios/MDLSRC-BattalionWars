function level_GruntRespawner(owner)
  group.Add(Unit_Group.LG_CHARGE01, Troop.LG_CHARGE01_RFL01)
  group.Add(Unit_Group.LG_CHARGE01, Troop.LG_CHARGE01_RFL02)
  group.Add(Unit_Group.LG_CHARGE01, Troop.LG_CHARGE01_RFL03)
  group.Add(Unit_Group.LG_CHARGE01, Troop.LG_CHARGE01_RFL04)
  group.Add(Unit_Group.LG_CHARGE01, Troop.LG_CHARGE01_RFL05)
  group.Add(Unit_Group.LG_CHARGE01, Troop.LG_CHARGE01_RFL06)
  group.Add(Unit_Group.LG_CHARGE02, Troop.LG_CHARGE02_RFL01)
  group.Add(Unit_Group.LG_CHARGE02, Troop.LG_CHARGE02_RFL02)
  group.Add(Unit_Group.LG_CHARGE02, Troop.LG_CHARGE02_RFL03)
  group.Add(Unit_Group.LG_CHARGE02, Troop.LG_CHARGE02_RFL04)
  group.Add(Unit_Group.LG_CHARGE02, Troop.LG_CHARGE02_RFL05)
  while not messages.HasBeenTriggered("WF_Fort_01c") do
    EndFrame()
  end
  group.FollowWaypoint(Unit_Group.LG_CHARGE01, Waypoint.p31, 0, 0)
  while NumItemsInArea(Map_Zone.inf, flag.TYPE_WFRONTIER) == 0 do
    EndFrame()
  end
  group.FollowWaypoint(Unit_Group.LG_CHARGE02, Waypoint.Entity0027, 0, 0)
  local revive = 0
  local unit1 = 0
  local unit2 = 0
  local unit3 = 0
  local unit4 = 0
  local stop = false
  while true do
    if 0 < NumItemsInArea(Map_Zone.stopspawn, flag.TYPE_WFRONTIER) then
      stop = true
    end
    if unit1 == 0 then
      unit1 = FindDeadUnit(flag.TYPE_UNDERWORLD, flag.GTYPE_FLAMER)
      revive = unit1
    elseif unit2 == 0 then
      unit2 = FindDeadUnit(flag.TYPE_UNDERWORLD, flag.GTYPE_FLAMER)
      revive = unit2
    elseif unit3 == 0 then
      unit3 = FindDeadUnit(flag.TYPE_UNDERWORLD, flag.GTYPE_FLAMER)
      revive = unit3
    elseif unit4 == 0 then
      unit4 = FindDeadUnit(flag.TYPE_UNDERWORLD, flag.GTYPE_FLAMER)
      revive = unit4
      while revive > 0 do
        if Teleport(revive, GetRandom(-490, -500), GetRandom(640, 650), 0, 10) then
          ReviveDeadUnit(revive)
          WaitFor(1)
        end
        if unit4 > 0 or stop then
          if unit1 > 0 then
            FollowWaypoint(unit1, Waypoint.Entity0006, 0, 0)
            unit1 = 0
          end
          if unit2 > 0 then
            FollowWaypoint(unit2, Waypoint.Entity0006, 0, 0)
            unit2 = 0
          end
          if unit3 > 0 then
            FollowWaypoint(unit3, Waypoint.Entity0006, 0, 0)
            unit3 = 0
          end
          if unit4 > 0 then
            FollowWaypoint(unit4, Waypoint.Entity0006, 0, 0)
            unit4 = 0
          end
          if stop then
            return
          end
          WaitFor(10)
        end
        revive = 0
        WaitFor(1)
      end
    end
    WaitFor(1)
  end
end
