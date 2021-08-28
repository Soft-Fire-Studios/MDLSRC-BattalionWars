function battle_5_townhall_air(owner)
  local loop = 0
  while battle < 5 do
    EndFrame()
  end
  FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gthirda, 0, 0, 20)
  WaitFor(5)
  FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gthirdb, 0, 0, 20)
  WaitFor(20)
  while battle > 4 do
    if IsReadyToRevive(Air_Vehicle.xgunship1) then
      Teleport(Air_Vehicle.xgunship1, 395, -140, 270, 10)
      DebugOut("Heli1 Respawn")
      WaitFor(12)
      ReviveDeadUnit(Air_Vehicle.xgunship1)
      EndFrame()
      while 0 < GetNumSeatsFree(Air_Vehicle.xgunship1) do
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship1)
        WaitFor(1)
      end
      if battle == 5 then
        FollowUnit(Air_Vehicle.xgunship1, GetPlayerUnit(), 10, 20)
      else
        FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.first, 0, 0, 20, constant.ORDER_FORCED)
      end
      heli = heli + 1
      DebugOut(heli)
    elseif IsReadyToRevive(Air_Vehicle.xgunship2) then
      Teleport(Air_Vehicle.xgunship2, 0, -300, 270, 10)
      DebugOut("Heli2 Respawn")
      WaitFor(12)
      ReviveDeadUnit(Air_Vehicle.xgunship2)
      EndFrame()
      while 0 < GetNumSeatsFree(Air_Vehicle.xgunship2) do
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship2)
        WaitFor(1)
      end
      if battle == 5 then
        FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gthirdb, 0, 0, 20)
      else
        FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.second, 0, 0, 20, constant.ORDER_FORCED)
      end
      heli = heli + 1
      DebugOut(heli)
      do break end
      while tank == 1 do
        WaitFor(5)
      end
    end
    EndFrame()
  end
end
