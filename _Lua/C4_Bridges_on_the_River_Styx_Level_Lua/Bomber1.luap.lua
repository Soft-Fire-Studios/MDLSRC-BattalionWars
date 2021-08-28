function Bomber1(owner)
  local hellfreezesover = 0
  repeat
    WaitFor(2)
    if IsDead(Air_Vehicle.XBomber1) then
      WaitFor(30)
      if bomberstatus == 0 then
        Teleport(Air_Vehicle.XBomber1, -662, 8, 0, 0)
        repeat
          EndFrame()
        until IsReadyToRevive(Air_Vehicle.XBomber1)
        ReviveDeadUnit(Air_Vehicle.XBomber1)
        WaitFor(10)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XBomber1)
        EndFrame()
        FollowWaypoint(Air_Vehicle.XBomber1, Waypoint.Bomber1Patrol, 0, 0, constant.ORDER_NORMAL)
      end
      if bomberstatus == 1 then
        Teleport(Air_Vehicle.XBomber1, -662, 8, 0, 0)
        ReviveDeadUnit(Air_Vehicle.XBomber1)
        WaitFor(10)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XBomber1)
        EndFrame()
        GoToArea(Air_Vehicle.XBomber1, -69, 447, 5, constant.ORDER_NORMAL)
      end
    end
    EndFrame()
  until hellfreezesover == 1
end
