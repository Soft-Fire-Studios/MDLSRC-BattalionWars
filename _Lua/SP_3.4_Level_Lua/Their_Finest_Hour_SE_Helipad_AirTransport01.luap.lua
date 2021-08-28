function Their_Finest_Hour_SE_Helipad_AirTransport01(owner)
  Kill(Air_Vehicle.SE_Helipad_AirTransport01)
  Kill(Troop.SE_Helipad_AirTransport01_Pilot01)
  Kill(Troop.SE_Helipad_Grunt01)
  Kill(Troop.SE_Helipad_Grunt02)
  Kill(Troop.SE_Helipad_AntiAir01)
  repeat
    WaitFor(1)
    EndFrame()
  until Helipad01Complete == 1
  DebugOut("SE Helipad AirTransport01 CALLED")
  repeat
    WaitFor(1)
    EndFrame()
  until IsDead(Air_Vehicle.SE_Helipad_AirTransport01) and IsDead(Troop.SE_Helipad_AirTransport01_Pilot01) and IsDead(Troop.SE_Helipad_Grunt01) and IsDead(Troop.SE_Helipad_Grunt02) and IsDead(Troop.SE_Helipad_AntiAir01) and IsReadyToRevive(Air_Vehicle.SE_Helipad_AirTransport01) and IsReadyToRevive(Troop.SE_Helipad_AirTransport01_Pilot01) and IsReadyToRevive(Troop.SE_Helipad_Grunt01) and IsReadyToRevive(Troop.SE_Helipad_Grunt02) and IsReadyToRevive(Troop.SE_Helipad_AntiAir01)
  ReviveDeadUnit(Air_Vehicle.SE_Helipad_AirTransport01, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn03), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn03), 270, 0)
  DebugOut("SE Helipad AirTransport01 REVIVED")
  ReviveDeadUnit(Troop.SE_Helipad_AirTransport01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  DebugOut("SE Helipad AirTransport01 Pilot REVIVED")
  ReviveDeadUnit(Troop.SE_Helipad_Grunt01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_Helipad_Grunt02, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_Helipad_AntiAir01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_Helipad_AirTransport01) and IsActive(Troop.SE_Helipad_AirTransport01_Pilot01) and IsActive(Troop.SE_Helipad_Grunt01) and IsActive(Troop.SE_Helipad_Grunt02) and IsActive(Troop.SE_Helipad_AntiAir01)
  DebugOut("SE Helipad AirTransport01 ACTIVE")
  PutUnitInVehicle(Troop.SE_Helipad_AirTransport01_Pilot01, Air_Vehicle.SE_Helipad_AirTransport01, 0)
  PutUnitInVehicle(Troop.SE_Helipad_Grunt01, Air_Vehicle.SE_Helipad_AirTransport01, 3)
  PutUnitInVehicle(Troop.SE_Helipad_Grunt02, Air_Vehicle.SE_Helipad_AirTransport01, 4)
  PutUnitInVehicle(Troop.SE_Helipad_AntiAir01, Air_Vehicle.SE_Helipad_AirTransport01, 5)
  LandAirUnit(Air_Vehicle.SE_Helipad_AirTransport01, GetObjectXPosition(Waypoint.SE_Helipad_AirTransport01), GetObjectZPosition(Waypoint.SE_Helipad_AirTransport01), constant.ORDER_FORCED, 1, 5, 270)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.SE_Helipad_AirTransport01) == constant.MOVEMENT_STATE_ON_GROUND
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_Helipad_AirTransport01) == 1
  FollowUnit(Troop.SE_Helipad_Grunt01, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
  FollowUnit(Troop.SE_Helipad_Grunt02, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
  FollowUnit(Troop.SE_Helipad_AntiAir01, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.SE_Helipad_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(Air_Vehicle.SE_Helipad_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 25)
  Kill(Air_Vehicle.SE_Helipad_AirTransport01)
end
