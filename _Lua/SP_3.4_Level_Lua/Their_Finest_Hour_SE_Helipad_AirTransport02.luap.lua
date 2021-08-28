function Their_Finest_Hour_SE_Helipad_AirTransport02(owner)
  Kill(Air_Vehicle.SE_Helipad_AirTransport02)
  Kill(Troop.SE_Helipad_AirTransport02_Pilot01)
  Kill(Troop.SE_Helipad_Grunt03)
  Kill(Troop.SE_Helipad_Grunt04)
  Kill(Troop.SE_Helipad_AntiAir02)
  repeat
    WaitFor(1)
    EndFrame()
  until Helipad01Complete == 1
  DebugOut("SE Helipad AirTransport02 CALLED")
  WaitFor(1)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Helipad_AirTransport02) and IsDead(Troop.SE_Helipad_AirTransport02_Pilot01) and IsDead(Troop.SE_Helipad_Grunt03) and IsDead(Troop.SE_Helipad_Grunt04) and IsDead(Troop.SE_Helipad_AntiAir02) and IsReadyToRevive(Air_Vehicle.SE_Helipad_AirTransport02) and IsReadyToRevive(Troop.SE_Helipad_AirTransport02_Pilot01) and IsReadyToRevive(Troop.SE_Helipad_Grunt03) and IsReadyToRevive(Troop.SE_Helipad_Grunt04) and IsReadyToRevive(Troop.SE_Helipad_AntiAir02)
  ReviveDeadUnit(Air_Vehicle.SE_Helipad_AirTransport02, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn04), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn04), 270, 0)
  DebugOut("SE Helipad AirTransport02 REVIVED")
  ReviveDeadUnit(Troop.SE_Helipad_AirTransport02_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  DebugOut("SE Helipad AirTransport02 Pilot REVIVED")
  ReviveDeadUnit(Troop.SE_Helipad_Grunt03, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_Helipad_Grunt04, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_Helipad_AntiAir02, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_Helipad_AirTransport02) and IsActive(Troop.SE_Helipad_AirTransport02_Pilot01) and IsActive(Troop.SE_Helipad_Grunt03) and IsActive(Troop.SE_Helipad_Grunt04) and IsActive(Troop.SE_Helipad_AntiAir02)
  DebugOut("SE Helipad AirTransport02 ACTIVE")
  PutUnitInVehicle(Troop.SE_Helipad_AirTransport02_Pilot01, Air_Vehicle.SE_Helipad_AirTransport02, 0)
  PutUnitInVehicle(Troop.SE_Helipad_Grunt03, Air_Vehicle.SE_Helipad_AirTransport02, 3)
  PutUnitInVehicle(Troop.SE_Helipad_Grunt04, Air_Vehicle.SE_Helipad_AirTransport02, 4)
  PutUnitInVehicle(Troop.SE_Helipad_AntiAir02, Air_Vehicle.SE_Helipad_AirTransport02, 5)
  LandAirUnit(Air_Vehicle.SE_Helipad_AirTransport02, GetObjectXPosition(Waypoint.SE_Helipad_AirTransport02), GetObjectZPosition(Waypoint.SE_Helipad_AirTransport02), constant.ORDER_FORCED, 1, 5, 0)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.SE_Helipad_AirTransport02) == constant.MOVEMENT_STATE_ON_GROUND
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_Helipad_AirTransport02) == 1
  FollowUnit(Troop.SE_Helipad_Grunt03, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
  FollowUnit(Troop.SE_Helipad_Grunt04, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
  FollowUnit(Troop.SE_Helipad_AntiAir02, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.SE_Helipad_AirTransport02, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(Air_Vehicle.SE_Helipad_AirTransport02, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 25)
  Kill(Air_Vehicle.SE_Helipad_AirTransport02)
end
