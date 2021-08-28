function Their_Finest_Hour_SE_Airbase01_Counter_Attack(owner)
  local FinaleAttackWaveArmour01Landed = 0
  repeat
    EndFrame()
  until (IsInArea(Troop.AI_Grunt01, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt02, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt03, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt04, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt05, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt06, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt07, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt08, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt09, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Grunt10, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose01, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose02, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose03, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose04, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_Hose05, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour01, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour02, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour03, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour04, Map_Zone.SE_Airbase01) or IsInArea(Troop.AI_AntiArmour05, Map_Zone.SE_Airbase01) or IsInArea(Ground_Vehicle.AI_HeavyTank01, Map_Zone.SE_Airbase01)) and IsDead(Ground_Vehicle.SE_Airbase01_LightTank01) and IsDead(Ground_Vehicle.SE_Airbase01_LightTank02) and AttackWaveReinforcements == 1
  PhoneMessage(66, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  repeat
    EndFrame()
  until IsReadyToRevive(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_AirTransport01_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_AttackWaveArmour_AirTransport01) and IsReadyToRevive(Troop.SE_AttackWaveArmour_AirTransport01_Pilot01) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt01) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt02) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt03) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt04) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt05) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt06) and IsReadyToRevive(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) and IsReadyToRevive(Troop.SE_AttackWaveArmour_LightTank01_Pilot01)
  ReviveDeadUnit(Air_Vehicle.SE_AttackWaveArmour_AirTransport01, GetObjectXPosition(Waypoint.SE_AttackWaveArmour_AirTransport01), GetObjectZPosition(Waypoint.SE_AttackWaveArmour_AirTransport01), 225, 0)
  ReviveDeadUnit(Troop.SE_AttackWaveArmour_AirTransport01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, GetObjectXPosition(Waypoint.SE_AttackWaveGrunts_AirTransport01), GetObjectZPosition(Waypoint.SE_AttackWaveGrunts_AirTransport01), 225, 0)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_AirTransport01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt02, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt03, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt04, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt05, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt06, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Ground_Vehicle.SE_AttackWaveArmour_LightTank01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveArmour_LightTank01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) and IsActive(Troop.SE_AttackWaveGrunts_AirTransport01_Pilot01) and IsActive(Air_Vehicle.SE_AttackWaveArmour_AirTransport01) and IsActive(Troop.SE_AttackWaveArmour_AirTransport01_Pilot01) and IsActive(Troop.SE_AttackWaveGrunts_Grunt01) and IsActive(Troop.SE_AttackWaveGrunts_Grunt02) and IsActive(Troop.SE_AttackWaveGrunts_Grunt03) and IsActive(Troop.SE_AttackWaveGrunts_Grunt04) and IsActive(Troop.SE_AttackWaveGrunts_Grunt05) and IsActive(Troop.SE_AttackWaveGrunts_Grunt06) and IsActive(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) and IsActive(Troop.SE_AttackWaveArmour_LightTank01_Pilot01)
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_AirTransport01_Pilot01, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 0)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveArmour_AirTransport01_Pilot01, Air_Vehicle.SE_AttackWaveArmour_AirTransport01, 0)
  DebugOut("Number of passengers in SE AttackWaveArmour AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveArmour_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt01, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 3)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt02, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 4)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt03, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 5)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt04, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 7)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt05, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 8)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt06, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 9)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveArmour_LightTank01_Pilot01, Ground_Vehicle.SE_AttackWaveArmour_LightTank01, 0)
  repeat
    EndFrame()
  until NumPassengersInUnit(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) == 1
  PutUnitInVehicle(Ground_Vehicle.SE_AttackWaveArmour_LightTank01, Air_Vehicle.SE_AttackWaveArmour_AirTransport01, 6)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) == 7 and NumPassengersInUnit(Air_Vehicle.SE_AttackWaveArmour_AirTransport01) == 2
  LandAirUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, GetObjectXPosition(Waypoint.SE_Airbase01_AttackWaveGrunts_AirTransport01), GetObjectZPosition(Waypoint.SE_Airbase01_AttackWaveGrunts_AirTransport01), constant.ORDER_FORCED, true, 5, 270)
  LandAirUnit(Air_Vehicle.SE_AttackWaveArmour_AirTransport01, GetObjectXPosition(Waypoint.SE_Airbase01_AttackWaveArmour_AirTransport01), GetObjectZPosition(Waypoint.SE_Airbase01_AttackWaveArmour_AirTransport01), constant.ORDER_FORCED, true, 5, 270)
  repeat
    EndFrame()
  until (IsDead(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) or NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) == 1 and GetMovementState(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) == constant.MOVEMENT_STATE_ON_GROUND) and (IsDead(Air_Vehicle.SE_AttackWaveArmour_AirTransport01) or NumPassengersInUnit(Air_Vehicle.SE_AttackWaveArmour_AirTransport01) == 1 and GetMovementState(Air_Vehicle.SE_AttackWaveArmour_AirTransport01) == constant.MOVEMENT_STATE_ON_GROUND)
  GoToArea(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner2), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner2), 5, 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SE_AttackWaveArmour_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner2), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner2), 5, 0, constant.ORDER_FORCED)
  repeat
    if IsInArea(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner2), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner2), 25) then
      Kill(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01)
    end
    EndFrame()
    if IsInArea(Air_Vehicle.SE_AttackWaveArmour_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner2), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner2), 25) then
      Kill(Air_Vehicle.SE_AttackWaveArmour_AirTransport01)
    end
    EndFrame()
    if IsPassengerInUnit(Troop.SE_AttackWaveGrunts_Grunt01, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) == false and GetState(Capture_Point.SE_Airbase01) ~= flag.TYPE_ANGLO and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt01) ~= constant.ACTION_STATE_IN_CAPTUREPOINT and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt01) ~= constant.ACTION_STATE_GOING_TO_CAPTUREPOINT and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt01) ~= constant.ACTION_STATE_MOVING_TO_AREA and IsDead(Troop.SE_AttackWaveGrunts_Grunt01) == false then
      EnterVehicle(Troop.SE_AttackWaveGrunts_Grunt01, Capture_Point.SE_Airbase01, constant.ORDER_FORCED)
    end
    EndFrame()
    if IsPassengerInUnit(Troop.SE_AttackWaveGrunts_Grunt02, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) == false and GetState(Capture_Point.SE_Airbase01) ~= flag.TYPE_ANGLO and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt02) ~= constant.ACTION_STATE_IN_CAPTUREPOINT and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt02) ~= constant.ACTION_STATE_GOING_TO_CAPTUREPOINT and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt02) ~= constant.ACTION_STATE_MOVING_TO_AREA and IsDead(Troop.SE_AttackWaveGrunts_Grunt02) == false then
      EnterVehicle(Troop.SE_AttackWaveGrunts_Grunt02, Capture_Point.SE_Airbase01, constant.ORDER_FORCED)
    end
    EndFrame()
    if IsPassengerInUnit(Troop.SE_AttackWaveGrunts_Grunt03, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) == false and GetState(Capture_Point.SE_Airbase01) ~= flag.TYPE_ANGLO and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt03) ~= constant.ACTION_STATE_IN_CAPTUREPOINT and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt03) ~= constant.ACTION_STATE_GOING_TO_CAPTUREPOINT and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt03) ~= constant.ACTION_STATE_MOVING_TO_AREA and IsDead(Troop.SE_AttackWaveGrunts_Grunt03) == false then
      EnterVehicle(Troop.SE_AttackWaveGrunts_Grunt03, Capture_Point.SE_Airbase01, constant.ORDER_FORCED)
    end
    EndFrame()
    if IsPassengerInUnit(Troop.SE_AttackWaveGrunts_Grunt04, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) == false and GetState(Capture_Point.SE_Airbase01) ~= flag.TYPE_ANGLO and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt04) ~= constant.ACTION_STATE_IN_CAPTUREPOINT and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt04) ~= constant.ACTION_STATE_GOING_TO_CAPTUREPOINT and GetPrimaryActionState(Troop.SE_AttackWaveGrunts_Grunt04) ~= constant.ACTION_STATE_MOVING_TO_AREA and IsDead(Troop.SE_AttackWaveGrunts_Grunt04) == false then
      EnterVehicle(Troop.SE_AttackWaveGrunts_Grunt04, Capture_Point.SE_Airbase01, constant.ORDER_FORCED)
    end
    EndFrame()
    if IsPassengerInUnit(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) == false and FinaleAttackWaveArmour01Landed == 0 then
      FollowWaypoint(Ground_Vehicle.SE_AttackWaveArmour_LightTank01, Waypoint.SE_CircleSEAirbase, 0, 0, constant.ORDER_NORMAL)
      FinaleAttackWaveArmour01Landed = 1
    end
    EndFrame()
  until IsDead(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) and IsDead(Troop.SE_AttackWaveGrunts_Grunt01) and IsDead(Troop.SE_AttackWaveGrunts_Grunt02) and IsDead(Troop.SE_AttackWaveGrunts_Grunt03) and IsDead(Troop.SE_AttackWaveGrunts_Grunt04) and IsDead(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) and IsDead(Air_Vehicle.SE_AttackWaveArmour_AirTransport01)
end
