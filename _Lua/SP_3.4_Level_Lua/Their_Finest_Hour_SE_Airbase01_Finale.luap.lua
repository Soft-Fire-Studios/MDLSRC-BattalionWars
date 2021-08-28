function Their_Finest_Hour_SE_Airbase01_Finale(owner)
  KillFinale = owner
  local Gunship04Time = 0
  local Gunship04 = 0
  repeat
    EndFrame()
  until IsInArea(Troop.AI_Grunt01, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt02, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt03, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt04, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt05, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt06, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt07, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt08, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt09, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt10, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose01, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose02, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose03, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose04, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose05, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour01, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour02, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour03, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour04, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour05, Map_Zone.SE_Airbase01) or IsInArea(Ground_Vehicle.AI_HeavyTank01, Map_Zone.SE_Airbase01)
  ClearMessageQueue()
  PhoneMessage(65, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Gunship04) and IsDead(Troop.SE_Gunship04_Pilot01) and IsDead(Air_Vehicle.SE_Gunship05) and IsDead(Troop.SE_Gunship05_Pilot01) and IsDead(Air_Vehicle.SE_Gunship06) and IsDead(Troop.SE_Gunship06_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Gunship04) and IsReadyToRevive(Troop.SE_Gunship04_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Gunship05) and IsReadyToRevive(Troop.SE_Gunship05_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Gunship06) and IsReadyToRevive(Troop.SE_Gunship06_Pilot01)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship04, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn01), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn01), 270, 0)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship05, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn02), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn02), 270, 0)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship06, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn03), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn03), 270, 0)
  ReviveDeadUnit(Troop.SE_Gunship04_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_Gunship05_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_Gunship06_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_Gunship04) and IsActive(Troop.SE_Gunship04_Pilot01) and IsActive(Air_Vehicle.SE_Gunship05) and IsActive(Troop.SE_Gunship05_Pilot01) and IsActive(Air_Vehicle.SE_Gunship06) and IsActive(Troop.SE_Gunship06_Pilot01)
  PutUnitInVehicle(Troop.SE_Gunship04_Pilot01, Air_Vehicle.SE_Gunship04, 0)
  PutUnitInVehicle(Troop.SE_Gunship05_Pilot01, Air_Vehicle.SE_Gunship05, 0)
  PutUnitInVehicle(Troop.SE_Gunship06_Pilot01, Air_Vehicle.SE_Gunship06, 0)
  FollowWaypoint(Air_Vehicle.SE_Gunship04, Waypoint.SE_CircleSEAirbase, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Air_Vehicle.SE_Gunship05, Waypoint.SE_CircleSEAirbase, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Air_Vehicle.SE_Gunship06, Waypoint.SE_CircleSEAirbase, 0, 0, constant.ORDER_NORMAL)
  while true do
    if IsDead(Air_Vehicle.SE_Gunship04) and IsDead(Troop.SE_Gunship04_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Gunship04) and IsReadyToRevive(Troop.SE_Gunship04_Pilot01) then
      if Gunship04 == 0 then
        Gunship04Time = GetTime()
        Gunship04 = 1
      end
      if GetTime() > Gunship04Time + 30 and Gunship04 == 1 then
        ReviveDeadUnit(Air_Vehicle.SE_Gunship04, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn01), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn01), 270, 0)
        ReviveDeadUnit(Troop.SE_Gunship04_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
        repeat
          EndFrame()
        until IsActive(Air_Vehicle.SE_Gunship04) and IsActive(Troop.SE_Gunship04_Pilot01)
        PutUnitInVehicle(Troop.SE_Gunship04_Pilot01, Air_Vehicle.SE_Gunship04, 0)
        FollowWaypoint(Air_Vehicle.SE_Gunship04, Waypoint.SE_CircleSEAirbase, 0, 0, constant.ORDER_NORMAL)
        Gunship04 = 0
      end
    end
    EndFrame()
  end
end
