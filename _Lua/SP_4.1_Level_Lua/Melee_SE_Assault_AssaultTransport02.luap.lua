function Melee_SE_Assault_AssaultTransport02(owner)
  Kill(Air_Vehicle.SE_Assault_AirTransport05)
  Kill(Air_Vehicle.SE_Assault_AirTransport06)
  Kill(Troop.SE_Assault_AirTransport05_Pilot01)
  Kill(Troop.SE_Assault_AirTransport06_Pilot01)
  Kill(Troop.SE_Assault_Grunt07)
  Kill(Troop.SE_Assault_Grunt08)
  Kill(Troop.SE_Assault_Grunt09)
  Kill(Troop.SE_Assault_Grunt10)
  Kill(Troop.SE_Assault_AntiArmour01)
  Kill(Troop.SE_Assault_AntiArmour02)
  Kill(Troop.SE_Assault_AntiArmour03)
  Kill(Troop.SE_Assault_AntiArmour04)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Assault_AirTransport05) and IsDead(Air_Vehicle.SE_Assault_AirTransport06) and IsReadyToRevive(Air_Vehicle.SE_Assault_AirTransport05) and IsReadyToRevive(Air_Vehicle.SE_Assault_AirTransport06) and IsDead(Troop.SE_Assault_AirTransport05_Pilot01) and IsDead(Troop.SE_Assault_AirTransport06_Pilot01) and IsReadyToRevive(Troop.SE_Assault_AirTransport05_Pilot01) and IsReadyToRevive(Troop.SE_Assault_AirTransport06_Pilot01) and IsDead(Troop.SE_Assault_Grunt07) and IsDead(Troop.SE_Assault_Grunt08) and IsDead(Troop.SE_Assault_Grunt09) and IsDead(Troop.SE_Assault_Grunt10) and IsDead(Troop.SE_Assault_AntiArmour01) and IsDead(Troop.SE_Assault_AntiArmour02) and IsDead(Troop.SE_Assault_AntiArmour03) and IsDead(Troop.SE_Assault_AntiArmour04) and IsReadyToRevive(Troop.SE_Assault_Grunt07) and IsReadyToRevive(Troop.SE_Assault_Grunt08) and IsReadyToRevive(Troop.SE_Assault_Grunt09) and IsReadyToRevive(Troop.SE_Assault_Grunt10) and IsReadyToRevive(Troop.SE_Assault_AntiArmour01) and IsReadyToRevive(Troop.SE_Assault_AntiArmour02) and IsReadyToRevive(Troop.SE_Assault_AntiArmour03) and IsReadyToRevive(Troop.SE_Assault_AntiArmour04) and AssaultTransport02 == 1
  ReviveDeadUnit(Air_Vehicle.SE_Assault_AirTransport05, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Troop.SE_Assault_AirTransport05_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Air_Vehicle.SE_Assault_AirTransport06, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Troop.SE_Assault_AirTransport06_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_Grunt07, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_Grunt08, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_Grunt09, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_Grunt10, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_AntiArmour01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_AntiArmour02, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_AntiArmour03, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  ReviveDeadUnit(Troop.SE_Assault_AntiArmour04, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 5)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Assault_AirTransport05) == false and IsDead(Air_Vehicle.SE_Assault_AirTransport06) == false and IsDead(Troop.SE_Assault_AirTransport05_Pilot01) == false and IsDead(Troop.SE_Assault_AirTransport06_Pilot01) == false and IsDead(Troop.SE_Assault_Grunt07) == false and IsDead(Troop.SE_Assault_Grunt08) == false and IsDead(Troop.SE_Assault_Grunt09) == false and IsDead(Troop.SE_Assault_Grunt10) == false and IsDead(Troop.SE_Assault_AntiArmour01) == false and IsDead(Troop.SE_Assault_AntiArmour02) == false and IsDead(Troop.SE_Assault_AntiArmour03) == false and IsDead(Troop.SE_Assault_AntiArmour04) == false
  AssaultTransport02ReadyToGo = 1
  PutUnitInVehicle(Troop.SE_Assault_AirTransport05_Pilot01, Air_Vehicle.SE_Assault_AirTransport05, 0)
  PutUnitInVehicle(Troop.SE_Assault_AirTransport06_Pilot01, Air_Vehicle.SE_Assault_AirTransport06, 0)
  PutUnitInVehicle(Troop.SE_Assault_AntiArmour01, Air_Vehicle.SE_Assault_AirTransport05, 3)
  PutUnitInVehicle(Troop.SE_Assault_AntiArmour02, Air_Vehicle.SE_Assault_AirTransport05, 4)
  PutUnitInVehicle(Troop.SE_Assault_Grunt07, Air_Vehicle.SE_Assault_AirTransport05, 7)
  PutUnitInVehicle(Troop.SE_Assault_Grunt08, Air_Vehicle.SE_Assault_AirTransport05, 8)
  PutUnitInVehicle(Troop.SE_Assault_AntiArmour03, Air_Vehicle.SE_Assault_AirTransport06, 3)
  PutUnitInVehicle(Troop.SE_Assault_AntiArmour04, Air_Vehicle.SE_Assault_AirTransport06, 4)
  PutUnitInVehicle(Troop.SE_Assault_Grunt09, Air_Vehicle.SE_Assault_AirTransport06, 7)
  PutUnitInVehicle(Troop.SE_Assault_Grunt10, Air_Vehicle.SE_Assault_AirTransport06, 8)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_Assault_AirTransport05) == 5 and NumPassengersInUnit(Air_Vehicle.SE_Assault_AirTransport06) == 5
  LandAirUnit(Air_Vehicle.SE_Assault_AirTransport05, GetObjectXPosition(Waypoint.SE_Assault_AirTransport01), GetObjectZPosition(Waypoint.SE_Assault_AirTransport01), constant.ORDER_FORCED, 1, 10, 0)
  LandAirUnit(Air_Vehicle.SE_Assault_AirTransport06, GetObjectXPosition(Waypoint.SE_Assault_AirTransport02), GetObjectZPosition(Waypoint.SE_Assault_AirTransport02), constant.ORDER_FORCED, 1, 10, 0)
  repeat
    EndFrame()
  until (NumPassengersInUnit(Air_Vehicle.SE_Assault_AirTransport05) == 1 or IsDead(Air_Vehicle.SE_Assault_AirTransport05)) and (NumPassengersInUnit(Air_Vehicle.SE_Assault_AirTransport06) == 1 or IsDead(Air_Vehicle.SE_Assault_AirTransport06))
  AssaultTransport02Landed = 1
  GoToArea(Air_Vehicle.SE_Assault_AirTransport05, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SE_Assault_AirTransport06, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  AttackTarget(Troop.SE_Assault_AntiArmour01, Building.IL_Battlestation01, constant.ORDER_NORMAL)
  AttackTarget(Troop.SE_Assault_AntiArmour02, Building.IL_Battlestation01, constant.ORDER_NORMAL)
  AttackTarget(Troop.SE_Assault_AntiArmour03, Building.IL_Battlestation01, constant.ORDER_NORMAL)
  AttackTarget(Troop.SE_Assault_AntiArmour04, Building.IL_Battlestation01, constant.ORDER_NORMAL)
  GoToArea(Troop.SE_Assault_Grunt07, GetObjectXPosition(Building.IL_Battlestation01), GetObjectZPosition(Building.IL_Battlestation01), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SE_Assault_Grunt08, GetObjectXPosition(Building.IL_Battlestation01), GetObjectZPosition(Building.IL_Battlestation01), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SE_Assault_Grunt09, GetObjectXPosition(Building.IL_Battlestation01), GetObjectZPosition(Building.IL_Battlestation01), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SE_Assault_Grunt10, GetObjectXPosition(Building.IL_Battlestation01), GetObjectZPosition(Building.IL_Battlestation01), 15, 0, constant.ORDER_FORCED)
  repeat
    if IsInRange(Air_Vehicle.SE_Assault_AirTransport05, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Assault_AirTransport05)
    end
    EndFrame()
    if IsInRange(Air_Vehicle.SE_Assault_AirTransport06, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Assault_AirTransport06)
    end
    EndFrame()
  until IsDead(Air_Vehicle.SE_Assault_AirTransport05) and IsDead(Air_Vehicle.SE_Assault_AirTransport06) and IsDead(Troop.SE_Assault_Grunt07) and IsDead(Troop.SE_Assault_Grunt08) and IsDead(Troop.SE_Assault_Grunt09) and IsDead(Troop.SE_Assault_Grunt10) and IsDead(Troop.SE_Assault_AntiArmour01) and IsDead(Troop.SE_Assault_AntiArmour02) and IsDead(Troop.SE_Assault_AntiArmour03) and IsDead(Troop.SE_Assault_AntiArmour04)
end
