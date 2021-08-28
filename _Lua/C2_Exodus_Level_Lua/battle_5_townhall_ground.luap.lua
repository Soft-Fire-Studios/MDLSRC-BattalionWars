function battle_5_townhall_ground(owner)
  local loop = 0
  while battle < 5 do
    EndFrame()
  end
  FollowWaypoint(Ground_Vehicle.xtank1, Waypoint.north, 0, 0, 20)
  WaitFor(5)
  FollowWaypoint(Ground_Vehicle.xtank2, Waypoint.south, 0, 0, 20)
  WaitFor(10)
  if IsReadyToRevive(Ground_Vehicle.xtank1) then
    if IsInArea(GetPlayerUnit(), -190, 125, 100) then
      Teleport(Ground_Vehicle.xtank1, 375, 95, 270)
    else
      Teleport(Ground_Vehicle.xtank1, -140, 40, 270, 10)
    end
    WaitFor(15)
    ReviveDeadUnit(Ground_Vehicle.xtank1)
    EndFrame()
    SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.xtank1)
    EndFrame()
    SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.xtank1)
    EndFrame()
    SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.xtank1)
    FollowWaypoint(Ground_Vehicle.xtank1, Waypoint.north, 0, 0, 20)
  end
  if IsReadyToRevive(Ground_Vehicle.xtank2) then
    if IsInArea(GetPlayerUnit(), -110, 25, 100) then
      Teleport(Ground_Vehicle.xtank2, 425, -140, 270)
    else
      Teleport(Ground_Vehicle.xtank2, -110, 25, 270, 10)
    end
    WaitFor(15)
    ReviveDeadUnit(Ground_Vehicle.xtank2)
    EndFrame()
    SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.xtank2)
    EndFrame()
    SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.xtank2)
    EndFrame()
    SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.xtank2)
    FollowWaypoint(Ground_Vehicle.xtank2, Waypoint.south, 0, 0, 20)
    while battle > 4 do
      if IsReadyToRevive(Ground_Vehicle.xtank1) then
        if IsInArea(GetPlayerUnit(), -330, -20, 110) then
          if IsInArea(GetPlayerUnit(), -150, 120, 100) then
            Teleport(Ground_Vehicle.xtank1, 130, -30, 270, 20)
          else
            Teleport(Ground_Vehicle.xtank1, -150, 117, 270, 20)
          end
        else
          Teleport(Ground_Vehicle.xtank1, -330, -20, 270, 20)
        end
        WaitFor(15)
        DebugOut("Tank1 Respawn")
        WaitFor(1)
        ReviveDeadUnit(Ground_Vehicle.xtank1)
        EndFrame()
        AddToGroup(Unit_Group.flag4, Ground_Vehicle.xtank1)
        while 0 < GetNumSeatsFree(Ground_Vehicle.xtank1) do
          SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.xtank1)
          WaitFor(1)
        end
        if battle == 5 then
          GoToArea(Unit_Group.flag4, -515, -40, 25)
          WaitFor(1)
          FollowWaypoint(Ground_Vehicle.xtank1, Waypoint.north, 0, 0)
        else
          FollowWaypoint(Ground_Vehicle.xtank1, Waypoint.path, 0, 0)
        end
        heli = heli + 2
        DebugOut(heli)
      end
      if IsReadyToRevive(Ground_Vehicle.xtank2) then
        if IsInArea(GetPlayerUnit(), -400, -190, 100) then
          if IsInArea(GetPlayerUnit(), -155, -370, 100) then
            Teleport(Ground_Vehicle.xtank2, 115, -370, 270, 20)
          else
            Teleport(Ground_Vehicle.xtank2, -155, -370, 270, 20)
          end
        else
          Teleport(Ground_Vehicle.xtank2, -400, -190, 270, 20)
        end
        WaitFor(15)
        DebugOut("Tank2 Respawn")
        WaitFor(1)
        ReviveDeadUnit(Ground_Vehicle.xtank2)
        EndFrame()
        AddToGroup(Unit_Group.flag4, Ground_Vehicle.xtank2)
        while 0 < GetNumSeatsFree(Ground_Vehicle.xtank2) do
          SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.xtank2)
          WaitFor(1)
        end
        if battle == 5 then
          GoToArea(Unit_Group.flag4, -515, -40, 25)
          WaitFor(1)
          FollowWaypoint(Ground_Vehicle.xtank2, Waypoint.south, 0, 0)
        else
          FollowWaypoint(Ground_Vehicle.xtank2, Waypoint.first, 0, 0, constant.ORDER_FORCED)
        end
        heli = heli + 2
        DebugOut(heli)
      end
      EndFrame()
    end
  end
end
