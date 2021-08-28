function Their_Finest_Hour_SE_AttackWave01(owner)
  AttackWave01 = owner
  local TimeCheck = 0
  local AttackWaveArmour01Landed = 0
  local AttackWaveArmour02Landed = 0
  local AttackWaveArmour01Launch = 0
  local AttackWaveArmour02Launch = 0
  local ReadyForRepeat = 0
  local PierceInitialWarning = 0
  Kill(Air_Vehicle.SE_Gunship01)
  Kill(Troop.SE_Gunship01_Pilot01)
  Kill(Air_Vehicle.SE_Gunship02)
  Kill(Troop.SE_Gunship02_Pilot01)
  Kill(Air_Vehicle.SE_Gunship03)
  Kill(Troop.SE_Gunship03_Pilot01)
  Kill(Air_Vehicle.SE_Gunship04)
  Kill(Troop.SE_Gunship04_Pilot01)
  Kill(Air_Vehicle.SE_Gunship05)
  Kill(Troop.SE_Gunship05_Pilot01)
  Kill(Air_Vehicle.SE_Gunship06)
  Kill(Troop.SE_Gunship06_Pilot01)
  Kill(Ground_Vehicle.SE_AttackWaveArmour_LightTank01)
  Kill(Troop.SE_AttackWaveArmour_LightTank01_Pilot01)
  Kill(Ground_Vehicle.SE_AttackWaveArmour_LightTank02)
  Kill(Troop.SE_AttackWaveArmour_LightTank02_Pilot01)
  Kill(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01)
  Kill(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02)
  Kill(Troop.SE_AttackWaveGrunts_AirTransport01_Pilot01)
  Kill(Troop.SE_AttackWaveGrunts_AirTransport02_Pilot01)
  Kill(Air_Vehicle.SE_AttackWaveArmour_AirTransport01)
  Kill(Air_Vehicle.SE_AttackWaveArmour_AirTransport02)
  Kill(Troop.SE_AttackWaveArmour_AirTransport01_Pilot01)
  Kill(Troop.SE_AttackWaveArmour_AirTransport02_Pilot01)
  Kill(Troop.SE_AttackWaveGrunts_Grunt01)
  Kill(Troop.SE_AttackWaveGrunts_Grunt02)
  Kill(Troop.SE_AttackWaveGrunts_Grunt03)
  Kill(Troop.SE_AttackWaveGrunts_Grunt04)
  Kill(Troop.SE_AttackWaveGrunts_Grunt05)
  Kill(Troop.SE_AttackWaveGrunts_Grunt06)
  Kill(Troop.SE_AttackWaveGrunts_Grunt07)
  Kill(Troop.SE_AttackWaveGrunts_Grunt08)
  Kill(Air_Vehicle.SE_Fighter01)
  Kill(Troop.SE_Fighter01_Pilot01)
  Kill(Air_Vehicle.SE_Fighter02)
  Kill(Troop.SE_Fighter02_Pilot01)
  repeat
    EndFrame()
  until IntroComplete == 1
  PhoneMessage(8, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  PhoneMessage(6, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  repeat
    EndFrame()
  until AirTransportCutsceneActive == 0 and IsReadyToRevive(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_AirTransport01_Pilot01) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt01) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt02) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt03) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt04)
  ReviveDeadUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn03), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn03), 270, 0)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt02, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt03, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt04, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01) and IsActive(Troop.SE_AttackWaveGrunts_AirTransport01_Pilot01) and IsActive(Troop.SE_AttackWaveGrunts_Grunt01) and IsActive(Troop.SE_AttackWaveGrunts_Grunt02) and IsActive(Troop.SE_AttackWaveGrunts_Grunt03) and IsActive(Troop.SE_AttackWaveGrunts_Grunt04)
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_AirTransport01_Pilot01, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 0)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt01, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 3)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt02, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 4)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt03, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 5)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt04, Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, 7)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport01 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01))
  LandAirUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01, GetObjectXPosition(Waypoint.AttackWaveGrunts), GetObjectZPosition(Waypoint.AttackWaveGrunts), constant.ORDER_FORCED, 1, 5, 90)
  ClearMessageQueue()
  PhoneMessage(9, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(10, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  TimeCheck = GetTime()
  repeat
    EndFrame()
  until GetTime() > TimeCheck + 30 or IsDead(Troop.SE_AttackWaveGrunts_Grunt01) and IsDead(Troop.SE_AttackWaveGrunts_Grunt02) and IsDead(Troop.SE_AttackWaveGrunts_Grunt03) and IsDead(Troop.SE_AttackWaveGrunts_Grunt04)
  repeat
    EndFrame()
  until AirTransportCutsceneActive == 0 and IsReadyToRevive(Air_Vehicle.SE_Fighter01) and IsReadyToRevive(Troop.SE_Fighter01_Pilot01)
  ReviveDeadUnit(Air_Vehicle.SE_Fighter01, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn01), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn01), 270, 0)
  ReviveDeadUnit(Troop.SE_Fighter01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_Fighter01) and IsActive(Troop.SE_Fighter01_Pilot01)
  PutUnitInVehicle(Troop.SE_Fighter01_Pilot01, Air_Vehicle.SE_Fighter01, 0)
  GoToArea(Air_Vehicle.SE_Fighter01, GetObjectXPosition(Capture_Point.AI_Airbase01), GetObjectZPosition(Capture_Point.AI_Airbase01), 30, constant.ORDER_NORMAL)
  ClearMessageQueue()
  PhoneMessage(11, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(12, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  TimeCheck = GetTime()
  repeat
    EndFrame()
  until GetTime() > TimeCheck + 30 or IsDead(Air_Vehicle.SE_Fighter01)
  repeat
    EndFrame()
  until AirTransportCutsceneActive == 0 and IsReadyToRevive(Air_Vehicle.SE_Gunship01) and IsReadyToRevive(Troop.SE_Gunship01_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_AttackWaveArmour_AirTransport01) and IsReadyToRevive(Troop.SE_AttackWaveArmour_AirTransport01_Pilot01) and IsReadyToRevive(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) and IsReadyToRevive(Troop.SE_AttackWaveArmour_LightTank01_Pilot01)
  ReviveDeadUnit(Air_Vehicle.SE_AttackWaveArmour_AirTransport01, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn02), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn02), 270, 0)
  ReviveDeadUnit(Troop.SE_AttackWaveArmour_AirTransport01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship01, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn01), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn01), 270, 0)
  ReviveDeadUnit(Troop.SE_Gunship01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Ground_Vehicle.SE_AttackWaveArmour_LightTank01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveArmour_LightTank01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_Gunship01) and IsActive(Troop.SE_Gunship01_Pilot01) and IsActive(Air_Vehicle.SE_AttackWaveArmour_AirTransport01) and IsActive(Troop.SE_AttackWaveArmour_AirTransport01_Pilot01) and IsActive(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) and IsActive(Troop.SE_AttackWaveArmour_LightTank01_Pilot01)
  PutUnitInVehicle(Troop.SE_AttackWaveArmour_LightTank01_Pilot01, Ground_Vehicle.SE_AttackWaveArmour_LightTank01, 0)
  repeat
    EndFrame()
  until GetUnitInSeat(Ground_Vehicle.SE_AttackWaveArmour_LightTank01, 0) == Troop.SE_AttackWaveArmour_LightTank01_Pilot01
  PutUnitInVehicle(Ground_Vehicle.SE_AttackWaveArmour_LightTank01, Air_Vehicle.SE_AttackWaveArmour_AirTransport01, 6)
  PutUnitInVehicle(Troop.SE_Gunship01_Pilot01, Air_Vehicle.SE_Gunship01, 0)
  PutUnitInVehicle(Troop.SE_AttackWaveArmour_AirTransport01_Pilot01, Air_Vehicle.SE_AttackWaveArmour_AirTransport01, 0)
  GoToArea(Air_Vehicle.SE_Gunship01, GetObjectXPosition(Capture_Point.AI_Airbase01), GetObjectZPosition(Capture_Point.AI_Airbase01), 30, constant.ORDER_NORMAL)
  LandAirUnit(Air_Vehicle.SE_AttackWaveArmour_AirTransport01, GetObjectXPosition(Waypoint.AttackWaveArmour01), GetObjectZPosition(Waypoint.AttackWaveArmour01), constant.ORDER_FORCED, 1, 5, 90)
  ClearMessageQueue()
  PhoneMessage(13, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(14, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  TimeCheck = GetTime()
  repeat
    EndFrame()
  until GetTime() > TimeCheck + 5 and IsReadyToRevive(Air_Vehicle.SE_AttackWaveArmour_AirTransport02) and IsReadyToRevive(Troop.SE_AttackWaveArmour_AirTransport02_Pilot01) and IsReadyToRevive(Ground_Vehicle.SE_AttackWaveArmour_LightTank02) and IsReadyToRevive(Troop.SE_AttackWaveArmour_LightTank02_Pilot01)
  ReviveDeadUnit(Air_Vehicle.SE_AttackWaveArmour_AirTransport02, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn03), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn03), 270, 0)
  ReviveDeadUnit(Troop.SE_AttackWaveArmour_AirTransport02_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Ground_Vehicle.SE_AttackWaveArmour_LightTank02, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveArmour_LightTank02_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_AttackWaveArmour_AirTransport02) and IsActive(Troop.SE_AttackWaveArmour_AirTransport02_Pilot01) and IsActive(Ground_Vehicle.SE_AttackWaveArmour_LightTank02) and IsActive(Troop.SE_AttackWaveArmour_LightTank02_Pilot01)
  PutUnitInVehicle(Troop.SE_AttackWaveArmour_LightTank02_Pilot01, Ground_Vehicle.SE_AttackWaveArmour_LightTank02, 0)
  repeat
    EndFrame()
  until GetUnitInSeat(Ground_Vehicle.SE_AttackWaveArmour_LightTank02, 0) == Troop.SE_AttackWaveArmour_LightTank02_Pilot01
  PutUnitInVehicle(Ground_Vehicle.SE_AttackWaveArmour_LightTank02, Air_Vehicle.SE_AttackWaveArmour_AirTransport02, 6)
  PutUnitInVehicle(Troop.SE_AttackWaveArmour_AirTransport02_Pilot01, Air_Vehicle.SE_AttackWaveArmour_AirTransport02, 0)
  LandAirUnit(Air_Vehicle.SE_AttackWaveArmour_AirTransport02, GetObjectXPosition(Waypoint.AttackWaveArmour02), GetObjectZPosition(Waypoint.AttackWaveArmour02), constant.ORDER_FORCED, 1, 5, 90)
  TimeCheck = GetTime()
  repeat
    if IsPassengerInUnit(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) == false and AttackWaveArmour01Landed == 0 then
      FollowWaypoint(Ground_Vehicle.SE_AttackWaveArmour_LightTank01, Waypoint.SE_CircleAirbase, 0, 0, constant.ORDER_NORMAL)
      AttackWaveArmour01Landed = 1
    end
    EndFrame()
    if IsPassengerInUnit(Ground_Vehicle.SE_AttackWaveArmour_LightTank02) == false and AttackWaveArmour02Landed == 0 then
      FollowWaypoint(Ground_Vehicle.SE_AttackWaveArmour_LightTank02, Waypoint.SE_CircleAirbase, 0, 0, constant.ORDER_NORMAL)
      AttackWaveArmour02Landed = 1
    end
    EndFrame()
  until GetTime() > TimeCheck + 40 or IsDead(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) and IsDead(Ground_Vehicle.SE_AttackWaveArmour_LightTank02)
  repeat
    EndFrame()
  until AirTransportCutsceneActive == 0 and IsReadyToRevive(Air_Vehicle.SE_Fighter02) and IsReadyToRevive(Troop.SE_Fighter02_Pilot01)
  ReviveDeadUnit(Air_Vehicle.SE_Fighter02, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn01), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn01), 270, 0)
  ReviveDeadUnit(Troop.SE_Fighter02_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_Fighter02) and IsActive(Troop.SE_Fighter02_Pilot01)
  PutUnitInVehicle(Troop.SE_Fighter02_Pilot01, Air_Vehicle.SE_Fighter02, 0)
  GoToArea(Air_Vehicle.SE_Fighter02, GetObjectXPosition(Capture_Point.AI_Airbase01), GetObjectZPosition(Capture_Point.AI_Airbase01), 30, constant.ORDER_NORMAL)
  ClearMessageQueue()
  PhoneMessage(17, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(18, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  DebugOut("SE Fighter wave")
  TimeCheck = GetTime()
  repeat
    EndFrame()
  until GetTime() > TimeCheck + 30 or IsDead(Air_Vehicle.SE_Fighter02)
  repeat
    EndFrame()
  until AirTransportCutsceneActive == 0 and IsReadyToRevive(Air_Vehicle.SE_Gunship02) and IsReadyToRevive(Troop.SE_Gunship02_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Gunship03) and IsReadyToRevive(Troop.SE_Gunship03_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_AirTransport02_Pilot01) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt05) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt06) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt07) and IsReadyToRevive(Troop.SE_AttackWaveGrunts_Grunt08)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship02, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn01), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn01), 270, 0)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship03, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn02), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn02), 270, 0)
  ReviveDeadUnit(Troop.SE_Gunship02_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_Gunship02_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn03), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn03), 270, 0)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt05, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt06, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt07, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  ReviveDeadUnit(Troop.SE_AttackWaveGrunts_Grunt08, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
  repeat
    EndFrame()
  until IsActive(Air_Vehicle.SE_Gunship02) and IsActive(Troop.SE_Gunship02_Pilot01) and IsActive(Air_Vehicle.SE_Gunship03) and IsActive(Troop.SE_Gunship03_Pilot01) and IsActive(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02) and IsActive(Troop.SE_AttackWaveGrunts_AirTransport02_Pilot01) and IsActive(Troop.SE_AttackWaveGrunts_Grunt05) and IsActive(Troop.SE_AttackWaveGrunts_Grunt06) and IsActive(Troop.SE_AttackWaveGrunts_Grunt07) and IsActive(Troop.SE_AttackWaveGrunts_Grunt08)
  PutUnitInVehicle(Troop.SE_Gunship02_Pilot01, Air_Vehicle.SE_Gunship02, 0)
  PutUnitInVehicle(Troop.SE_Gunship03_Pilot01, Air_Vehicle.SE_Gunship03, 0)
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_AirTransport02_Pilot01, Air_Vehicle.SE_AttackWaveGrunts_AirTransport02, 0)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport02 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt05, Air_Vehicle.SE_AttackWaveGrunts_AirTransport02, 3)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport02 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt06, Air_Vehicle.SE_AttackWaveGrunts_AirTransport02, 4)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport02 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt07, Air_Vehicle.SE_AttackWaveGrunts_AirTransport02, 5)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport02 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02))
  PutUnitInVehicle(Troop.SE_AttackWaveGrunts_Grunt08, Air_Vehicle.SE_AttackWaveGrunts_AirTransport02, 7)
  DebugOut("Number of passengers in SE AttackWaveGrunts AirTransport02 =", NumPassengersInUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02))
  GoToArea(Air_Vehicle.SE_Gunship02, GetObjectXPosition(Capture_Point.AI_Airbase01), GetObjectZPosition(Capture_Point.AI_Airbase01), 30, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.SE_Gunship03, GetObjectXPosition(Capture_Point.AI_Airbase01), GetObjectZPosition(Capture_Point.AI_Airbase01), 30, constant.ORDER_NORMAL)
  LandAirUnit(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02, GetObjectXPosition(Waypoint.AttackWaveGrunts), GetObjectZPosition(Waypoint.AttackWaveGrunts), constant.ORDER_FORCED, 1, 5, 90)
  ClearMessageQueue()
  PhoneMessage(21, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(16, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  PhoneMessage(22, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0 or IsDead(Troop.SE_AttackWaveGrunts_Grunt05) and IsDead(Troop.SE_AttackWaveGrunts_Grunt06) and IsDead(Troop.SE_AttackWaveGrunts_Grunt07) and IsDead(Troop.SE_AttackWaveGrunts_Grunt08)
  repeat
    if ReadyForRepeat == 0 and GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0 then
      TimeCheck = GetTime()
      ReadyForRepeat = 1
    end
    EndFrame()
    if ReadyForRepeat == 1 and PierceInitialWarning == 0 and GetTime() > TimeCheck + 15 then
      PhoneMessage(34, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      PierceInitialWarning = 1
    end
    EndFrame()
    if ReadyForRepeat == 1 and GetTime() > TimeCheck + 35 then
      PhoneMessage(23, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      TimeCheck = GetTime()
    end
    EndFrame()
  until IsDead(Air_Vehicle.SE_Fighter01) and IsDead(Air_Vehicle.SE_Fighter02) and IsDead(Air_Vehicle.SE_Gunship01) and IsDead(Air_Vehicle.SE_Gunship02) and IsDead(Air_Vehicle.SE_Gunship03) and IsDead(Ground_Vehicle.SE_AttackWaveArmour_LightTank01) and IsDead(Ground_Vehicle.SE_AttackWaveArmour_LightTank02) and IsDead(Troop.SE_AttackWaveGrunts_Grunt01) and IsDead(Troop.SE_AttackWaveGrunts_Grunt02) and IsDead(Troop.SE_AttackWaveGrunts_Grunt03) and IsDead(Troop.SE_AttackWaveGrunts_Grunt04) and IsDead(Troop.SE_AttackWaveGrunts_Grunt05) and IsDead(Troop.SE_AttackWaveGrunts_Grunt06) and IsDead(Troop.SE_AttackWaveGrunts_Grunt07) and IsDead(Troop.SE_AttackWaveGrunts_Grunt08)
  Kill(Air_Vehicle.SE_AttackWaveGrunts_AirTransport01)
  Kill(Air_Vehicle.SE_AttackWaveGrunts_AirTransport02)
  Kill(Air_Vehicle.SE_AttackWaveArmour_AirTransport01)
  Kill(Air_Vehicle.SE_AttackWaveArmour_AirTransport02)
  DefenceComplete = 1
end
