function Their_Finest_Hour_SE_POW02_AirTransport01(owner)
  Kill(Air_Vehicle.SE_POW02_AirTransport01)
  Kill(Troop.SE_POW02_AirTransport01_Pilot01)
  Kill(Ground_Vehicle.SE_POW02_LightTank01)
  Kill(Troop.SE_POW02_LightTank01_Pilot01)
  repeat
    EndFrame()
  until POW02Objective == 1
  repeat
    WaitFor(1)
    EndFrame()
  until IsReadyToRevive(Air_Vehicle.SE_POW02_AirTransport01) and IsReadyToRevive(Troop.SE_POW02_AirTransport01_Pilot01) and IsReadyToRevive(Ground_Vehicle.SE_POW02_LightTank01) and IsReadyToRevive(Troop.SE_POW02_LightTank01_Pilot01)
  ReviveDeadUnit(Air_Vehicle.SE_POW02_AirTransport01, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn03), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn03), 270, 0)
  ReviveDeadUnit(Troop.SE_POW02_AirTransport01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Ground_Vehicle.SE_POW02_LightTank01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_POW02_LightTank01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_POW02_AirTransport01) and IsActive(Troop.SE_POW02_AirTransport01_Pilot01) and IsActive(Ground_Vehicle.SE_POW02_LightTank01) and IsActive(Troop.SE_POW02_LightTank01_Pilot01)
  PutUnitInVehicle(Troop.SE_POW02_AirTransport01_Pilot01, Air_Vehicle.SE_POW02_AirTransport01, 0)
  PutUnitInVehicle(Troop.SE_POW02_LightTank01_Pilot01, Ground_Vehicle.SE_POW02_LightTank01, 0)
  repeat
    EndFrame()
  until NumPassengersInUnit(Ground_Vehicle.SE_POW02_LightTank01) == 1
  PutUnitInVehicle(Ground_Vehicle.SE_POW02_LightTank01, Air_Vehicle.SE_POW02_AirTransport01, 6)
  LandAirUnit(Air_Vehicle.SE_POW02_AirTransport01, GetObjectXPosition(Waypoint.SE_POW02_AirTransport01), GetObjectZPosition(Waypoint.SE_POW02_AirTransport01), constant.ORDER_FORCED, 1, 5, 90)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.SE_POW02_AirTransport01) == constant.MOVEMENT_STATE_ON_GROUND
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_POW02_AirTransport01) == 1
  AttackTarget(Ground_Vehicle.SE_POW02_LightTank01, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.SE_POW02_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(Air_Vehicle.SE_POW02_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 25)
  Despawn(Air_Vehicle.SE_POW02_AirTransport01)
end
