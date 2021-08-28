function Their_Finest_Hour_SE_POW02_Gunships(owner)
  local Time = 0
  Kill(Air_Vehicle.SE_Gunship_Barracks01)
  Kill(Troop.SE_Gunship_Barracks01_Pilot01)
  Kill(Air_Vehicle.SE_Gunship_Barracks02)
  Kill(Troop.SE_Gunship_Barracks02_Pilot01)
  repeat
    EndFrame()
  until AttackWaveReinforcements == 1 and IsDead(Air_Vehicle.SE_Gunship_Barracks01) and IsDead(Troop.SE_Gunship_Barracks01_Pilot01) and IsDead(Air_Vehicle.SE_Gunship_Barracks02) and IsDead(Troop.SE_Gunship_Barracks02_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Gunship_Barracks01) and IsReadyToRevive(Troop.SE_Gunship_Barracks01_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Gunship_Barracks02) and IsReadyToRevive(Troop.SE_Gunship_Barracks02_Pilot01)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_Barracks01, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn01), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn01), 270, 0)
  ReviveDeadUnit(Troop.SE_Gunship_Barracks01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_Barracks02, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn02), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn02), 270, 0)
  ReviveDeadUnit(Troop.SE_Gunship_Barracks02_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_Gunship_Barracks01) and IsActive(Troop.SE_Gunship_Barracks01_Pilot01) and IsActive(Air_Vehicle.SE_Gunship_Barracks02) and IsActive(Troop.SE_Gunship_Barracks02_Pilot01)
  PutUnitInVehicle(Troop.SE_Gunship_Barracks01_Pilot01, Air_Vehicle.SE_Gunship_Barracks01, 0)
  PutUnitInVehicle(Troop.SE_Gunship_Barracks02_Pilot01, Air_Vehicle.SE_Gunship_Barracks02, 0)
  FollowWaypoint(Air_Vehicle.SE_Gunship_Barracks01, Waypoint.SE_Gunship_Barracks01, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Air_Vehicle.SE_Gunship_Barracks02, Waypoint.SE_Gunship_Barracks02, 0, 0, constant.ORDER_NORMAL)
end
