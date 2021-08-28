function Their_Finest_Hour_SE_POW01_AirTransport02(owner)
  Kill(Air_Vehicle.SE_POW01_AirTransport02)
  Kill(Troop.SE_POW01_AirTransport02_Pilot01)
  Kill(Troop.SE_POW01_Grunt07)
  Kill(Troop.SE_POW01_Grunt08)
  Kill(Troop.SE_POW01_Grunt09)
  Kill(Troop.SE_POW01_Grunt10)
  Kill(Troop.SE_POW01_Grunt11)
  repeat
    WaitFor(1)
    EndFrame()
  until POW01Objective == 1
  repeat
    WaitFor(1)
    EndFrame()
  until IsReadyToRevive(Air_Vehicle.SE_POW01_AirTransport02) and IsReadyToRevive(Troop.SE_POW01_AirTransport02_Pilot01) and IsReadyToRevive(Troop.SE_POW01_Grunt07) and IsReadyToRevive(Troop.SE_POW01_Grunt08) and IsReadyToRevive(Troop.SE_POW01_Grunt09) and IsReadyToRevive(Troop.SE_POW01_Grunt10) and IsReadyToRevive(Troop.SE_POW01_Grunt11)
  ReviveDeadUnit(Air_Vehicle.SE_POW01_AirTransport02, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn04), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn04), 270, 0)
  ReviveDeadUnit(Troop.SE_POW01_AirTransport02_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_POW01_Grunt07, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_POW01_Grunt08, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_POW01_Grunt09, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_POW01_Grunt10, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_POW01_Grunt11, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_POW01_AirTransport02) and IsActive(Troop.SE_POW01_AirTransport02_Pilot01) and IsActive(Troop.SE_POW01_Grunt07) and IsActive(Troop.SE_POW01_Grunt08) and IsActive(Troop.SE_POW01_Grunt09) and IsActive(Troop.SE_POW01_Grunt10) and IsActive(Troop.SE_POW01_Grunt11)
  PutUnitInVehicle(Troop.SE_POW01_AirTransport02_Pilot01, Air_Vehicle.SE_POW01_AirTransport02, 0)
  PutUnitInVehicle(Troop.SE_POW01_Grunt07, Air_Vehicle.SE_POW01_AirTransport02, 3)
  PutUnitInVehicle(Troop.SE_POW01_Grunt08, Air_Vehicle.SE_POW01_AirTransport02, 4)
  PutUnitInVehicle(Troop.SE_POW01_Grunt09, Air_Vehicle.SE_POW01_AirTransport02, 5)
  PutUnitInVehicle(Troop.SE_POW01_Grunt10, Air_Vehicle.SE_POW01_AirTransport02, 7)
  PutUnitInVehicle(Troop.SE_POW01_Grunt11, Air_Vehicle.SE_POW01_AirTransport02, 8)
  LandAirUnit(Air_Vehicle.SE_POW01_AirTransport02, GetObjectXPosition(Waypoint.SE_POW01_AirTransport02), GetObjectZPosition(Waypoint.SE_POW01_AirTransport02), constant.ORDER_FORCED, 1, 5, 180)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.SE_POW01_AirTransport02) == constant.MOVEMENT_STATE_ON_GROUND
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_POW01_AirTransport02) == 1
  GoToArea(Air_Vehicle.SE_POW01_AirTransport02, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(Air_Vehicle.SE_POW01_AirTransport02, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 25)
  Despawn(Air_Vehicle.SE_POW01_AirTransport02)
end
