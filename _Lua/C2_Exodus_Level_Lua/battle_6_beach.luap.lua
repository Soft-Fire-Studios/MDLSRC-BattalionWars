function battle_6_beach(owner)
  local loop = 0
  while battle < 6 do
    EndFrame()
  end
  WaitFor(5)
  heli = 0
  WaitFor(15)
  FollowWaypoint(Unit_Group.first, Waypoint.first, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Unit_Group.second, Waypoint.second, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Unit_Group.third, Waypoint.third, 0, 0, constant.ORDER_FORCED)
  WaitFor(5)
  FollowWaypoint(Ground_Vehicle.xtank1, Waypoint.path2, 0, 0, constant.ORDER_FORCED)
  WaitFor(5)
  FollowWaypoint(Ground_Vehicle.xtank2, Waypoint.second, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Unit_Group.xfirst, Waypoint.first, 0, 0, constant.ORDER_FORCED)
  WaitFor(10)
  FollowWaypoint(Unit_Group.xsecond, Waypoint.second, 0, 0, constant.ORDER_FORCED)
  WaitFor(15)
  FollowWaypoint(Unit_Group.xthird, Waypoint.third, 0, 0, constant.ORDER_FORCED)
  while battle == 6 do
    if IsReadyToRevive(Air_Vehicle.xgunship1) then
      Teleport(Air_Vehicle.xgunship1, 150, -60, 270, 10)
      DebugOut("Heli1 Respawn")
      WaitFor(15)
      ReviveDeadUnit(Air_Vehicle.xgunship1)
      EndFrame()
      while 0 < GetNumSeatsFree(Air_Vehicle.xgunship1) do
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship1)
        WaitFor(1)
      end
      FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.first, 0, 0)
      heli = heli + 1
      DebugOut(heli)
    else
      if IsReadyToRevive(Air_Vehicle.xgunship2) then
        Teleport(Air_Vehicle.xgunship2, 45, -225, 270, 10)
        DebugOut("Heli2 Respawn")
        WaitFor(15)
        ReviveDeadUnit(Air_Vehicle.xgunship2)
        EndFrame()
        while 0 < GetNumSeatsFree(Air_Vehicle.xgunship2) do
          SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship2)
          WaitFor(1)
        end
        FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.second, 0, 0)
        heli = heli + 1
        DebugOut(heli)
      else
      end
    end
    EndFrame()
  end
  WaitFor(5)
  Kill(Air_Vehicle.xgunship1)
  WaitFor(2)
  Kill(Air_Vehicle.xgunship2)
end
