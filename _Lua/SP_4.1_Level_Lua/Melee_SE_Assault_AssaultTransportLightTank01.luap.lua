function Melee_SE_Assault_AssaultTransportLightTank01(owner)
  Kill(Air_Vehicle.SE_Assault_AirTransport03)
  Kill(Air_Vehicle.SE_Assault_AirTransport04)
  Kill(Troop.SE_Assault_AirTransport03_Pilot01)
  Kill(Troop.SE_Assault_AirTransport04_Pilot01)
  Kill(Ground_Vehicle.SE_Assault_LightTank01)
  Kill(Ground_Vehicle.SE_Assault_LightTank02)
  Kill(Troop.SE_Assault_LightTank01_Pilot01)
  Kill(Troop.SE_Assault_LightTank02_Pilot01)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Assault_AirTransport03) and IsDead(Air_Vehicle.SE_Assault_AirTransport04) and IsReadyToRevive(Air_Vehicle.SE_Assault_AirTransport03) and IsReadyToRevive(Air_Vehicle.SE_Assault_AirTransport04) and IsDead(Troop.SE_Assault_AirTransport03_Pilot01) and IsDead(Troop.SE_Assault_AirTransport04_Pilot01) and IsReadyToRevive(Troop.SE_Assault_AirTransport03_Pilot01) and IsReadyToRevive(Troop.SE_Assault_AirTransport04_Pilot01) and IsDead(Ground_Vehicle.SE_Assault_LightTank01) and IsDead(Ground_Vehicle.SE_Assault_LightTank02) and IsReadyToRevive(Ground_Vehicle.SE_Assault_LightTank01) and IsReadyToRevive(Ground_Vehicle.SE_Assault_LightTank02) and IsDead(Troop.SE_Assault_AirTransport01_Pilot01) and IsDead(Troop.SE_Assault_AirTransport02_Pilot01) and IsReadyToRevive(Troop.SE_Assault_AirTransport01_Pilot01) and IsReadyToRevive(Troop.SE_Assault_AirTransport02_Pilot01) and AssaultTransportLightTank01 == 1
  ReviveDeadUnit(Air_Vehicle.SE_Assault_AirTransport03, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Troop.SE_Assault_AirTransport03_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Air_Vehicle.SE_Assault_AirTransport04, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Troop.SE_Assault_AirTransport04_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_LightTank01_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_LightTank02_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Ground_Vehicle.SE_Assault_LightTank01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Ground_Vehicle.SE_Assault_LightTank02, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Assault_AirTransport03) == false and IsDead(Air_Vehicle.SE_Assault_AirTransport04) == false and IsDead(Troop.SE_Assault_AirTransport03_Pilot01) == false and IsDead(Troop.SE_Assault_AirTransport04_Pilot01) == false and IsDead(Troop.SE_Assault_LightTank01_Pilot01) == false and IsDead(Troop.SE_Assault_LightTank02_Pilot01) == false and IsDead(Ground_Vehicle.SE_Assault_LightTank01) == false and IsDead(Ground_Vehicle.SE_Assault_LightTank02) == false
  PutUnitInVehicle(Troop.SE_Assault_LightTank01_Pilot01, Ground_Vehicle.SE_Assault_LightTank01, 0)
  PutUnitInVehicle(Troop.SE_Assault_LightTank02_Pilot01, Ground_Vehicle.SE_Assault_LightTank02, 0)
  repeat
    EndFrame()
  until NumPassengersInUnit(Ground_Vehicle.SE_Assault_LightTank01) == 1 and NumPassengersInUnit(Ground_Vehicle.SE_Assault_LightTank02) == 1
  AssaultTransportLightTank01ReadyToGo = 1
  PutUnitInVehicle(Troop.SE_Assault_AirTransport03_Pilot01, Air_Vehicle.SE_Assault_AirTransport03, 0)
  PutUnitInVehicle(Troop.SE_Assault_AirTransport04_Pilot01, Air_Vehicle.SE_Assault_AirTransport04, 0)
  PutUnitInVehicle(Ground_Vehicle.SE_Assault_LightTank01, Air_Vehicle.SE_Assault_AirTransport03, 6)
  PutUnitInVehicle(Ground_Vehicle.SE_Assault_LightTank02, Air_Vehicle.SE_Assault_AirTransport04, 6)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_Assault_AirTransport03) == 2 and NumPassengersInUnit(Air_Vehicle.SE_Assault_AirTransport04) == 2
  LandAirUnit(Air_Vehicle.SE_Assault_AirTransport03, GetObjectXPosition(Waypoint.SE_Assault_AirTransport03), GetObjectZPosition(Waypoint.SE_Assault_AirTransport03), constant.ORDER_FORCED, 1, 10, 0)
  LandAirUnit(Air_Vehicle.SE_Assault_AirTransport04, GetObjectXPosition(Waypoint.SE_Assault_AirTransport04), GetObjectZPosition(Waypoint.SE_Assault_AirTransport04), constant.ORDER_FORCED, 1, 10, 0)
  repeat
    EndFrame()
  until (NumPassengersInUnit(Air_Vehicle.SE_Assault_AirTransport03) == 1 or IsDead(Air_Vehicle.SE_Assault_AirTransport03)) and (NumPassengersInUnit(Air_Vehicle.SE_Assault_AirTransport04) == 1 or IsDead(Air_Vehicle.SE_Assault_AirTransport04))
  AssaultTransportLightTank01Landed = 1
  GoToArea(Air_Vehicle.SE_Assault_AirTransport03, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SE_Assault_AirTransport04, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  AttackTarget(Ground_Vehicle.SE_Assault_LightTank01, Building.IL_Battlestation01, constant.ORDER_NORMAL)
  AttackTarget(Ground_Vehicle.SE_Assault_LightTank02, Building.IL_Battlestation01, constant.ORDER_NORMAL)
  repeat
    if IsInRange(Air_Vehicle.SE_Assault_AirTransport03, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Assault_AirTransport03)
    end
    EndFrame()
    if IsInRange(Air_Vehicle.SE_Assault_AirTransport04, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Assault_AirTransport04)
    end
    EndFrame()
  until IsDead(Air_Vehicle.SE_Assault_AirTransport03) and IsDead(Air_Vehicle.SE_Assault_AirTransport04) and IsDead(Ground_Vehicle.SE_Assault_LightTank01) and IsDead(Ground_Vehicle.SE_Assault_LightTank02)
end
