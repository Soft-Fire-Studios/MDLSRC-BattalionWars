function Their_Finest_Hour_Cutscene02_Abort(owner)
  Cutscene02Abort = owner
  local AIRespawnFighter02Time = 0
  local AIRespawnFighter03Time = 0
  local GetReadyToReviveFighter02 = 0
  local GetReadyToReviveFighter03 = 0
  repeat
    EndFrame()
  until Cutscene02Begun == 1
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      SetInvulnerable(flag.TYPE_ANGLO, 0)
      Kill(Cutscene02)
      DebugOut("Killed Cutscene02")
      ClearMessageQueue()
      StoreSummaryMessage(constant.PLAYER_ONE, 25, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
      Cutscene02Finished = 1
    end
    EndFrame()
  until Cutscene02Finished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsPassengerInUnit(Troop.AI_Hose01, Air_Vehicle.AI_AirTransport01) then
    ExitVehicle(Troop.AI_Hose01, Air_Vehicle.AI_AirTransport01)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Hose01, Air_Vehicle.AI_AirTransport01) == false
  end
  Teleport(Troop.AI_Hose01, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose01_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Hose01, false)
  DebugOut("AI Hose01 is in position")
  if IsPassengerInUnit(Troop.AI_Hose02, Air_Vehicle.AI_AirTransport01) then
    ExitVehicle(Troop.AI_Hose02, Air_Vehicle.AI_AirTransport01)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Hose02, Air_Vehicle.AI_AirTransport01) == false
  end
  Teleport(Troop.AI_Hose02, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose02_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Hose02, false)
  DebugOut("AI Hose02 is in position")
  if IsPassengerInUnit(Troop.AI_Hose03, Air_Vehicle.AI_AirTransport01) then
    ExitVehicle(Troop.AI_Hose03, Air_Vehicle.AI_AirTransport01)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Hose03, Air_Vehicle.AI_AirTransport01) == false
  end
  Teleport(Troop.AI_Hose03, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose03_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose03_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Hose03, false)
  DebugOut("AI Hose03 is in position")
  if IsPassengerInUnit(Troop.AI_Hose04, Air_Vehicle.AI_AirTransport01) then
    ExitVehicle(Troop.AI_Hose04, Air_Vehicle.AI_AirTransport01)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Hose04, Air_Vehicle.AI_AirTransport01) == false
  end
  Teleport(Troop.AI_Hose04, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose04_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose04_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Hose04, false)
  DebugOut("AI Hose04 is in position")
  if IsPassengerInUnit(Troop.AI_Hose05, Air_Vehicle.AI_AirTransport01) then
    ExitVehicle(Troop.AI_Hose05, Air_Vehicle.AI_AirTransport01)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Hose05, Air_Vehicle.AI_AirTransport01) == false
  end
  Teleport(Troop.AI_Hose05, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose05_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose05_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Hose05, false)
  DebugOut("AI Hose05 is in position")
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.AI_Hose01, true)
  SetUnitInvulnerable(Troop.CUTSCENE, false)
  Despawn(Troop.CUTSCENE)
  DebugOut("Player has transfered to AI Hose01")
  if IsPassengerInUnit(Troop.AI_Grunt01, Air_Vehicle.AI_AirTransport02) then
    ExitVehicle(Troop.AI_Grunt01, Air_Vehicle.AI_AirTransport02)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Grunt01, Air_Vehicle.AI_AirTransport02) == false
  end
  Teleport(Troop.AI_Grunt01, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt01_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Grunt01, false)
  DebugOut("AI Grunt01 is in position")
  if IsPassengerInUnit(Troop.AI_Grunt02, Air_Vehicle.AI_AirTransport02) then
    ExitVehicle(Troop.AI_Grunt02, Air_Vehicle.AI_AirTransport02)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Grunt02, Air_Vehicle.AI_AirTransport02) == false
  end
  Teleport(Troop.AI_Grunt02, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt02_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Grunt02, false)
  DebugOut("AI Grunt02 is in position")
  if IsPassengerInUnit(Troop.AI_Grunt03, Air_Vehicle.AI_AirTransport02) then
    ExitVehicle(Troop.AI_Grunt03, Air_Vehicle.AI_AirTransport02)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Grunt03, Air_Vehicle.AI_AirTransport02) == false
  end
  Teleport(Troop.AI_Grunt03, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt03_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt03_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Grunt03, false)
  DebugOut("AI Grunt03 is in position")
  if IsPassengerInUnit(Troop.AI_Grunt04, Air_Vehicle.AI_AirTransport02) then
    ExitVehicle(Troop.AI_Grunt04, Air_Vehicle.AI_AirTransport02)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Grunt04, Air_Vehicle.AI_AirTransport02) == false
  end
  Teleport(Troop.AI_Grunt04, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt04_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt04_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Grunt04, false)
  DebugOut("AI Grunt04 is in position")
  if IsPassengerInUnit(Troop.AI_Grunt05, Air_Vehicle.AI_AirTransport02) then
    ExitVehicle(Troop.AI_Grunt05, Air_Vehicle.AI_AirTransport02)
    repeat
      EndFrame()
    until IsPassengerInUnit(Troop.AI_Grunt05, Air_Vehicle.AI_AirTransport02) == false
  end
  Teleport(Troop.AI_Grunt05, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt05_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt05_Finish), 90)
  SetUnitInvulnerable(Troop.AI_Grunt05, false)
  DebugOut("AI Grunt05 is in position")
  repeat
    if NumPassengersInUnit(Building.AI_Airbase01_MGTower01) == 1 then
      ExitVehicle(GetUnitInSeat(Building.AI_Airbase01_MGTower01, 0), Building.AI_Airbase01_MGTower01)
    end
    DebugOut("MG Tower01 is empty")
    if NumPassengersInUnit(Building.AI_Airbase01_MGTower02) == 1 then
      ExitVehicle(GetUnitInSeat(Building.AI_Airbase01_MGTower02, 0), Building.AI_Airbase01_MGTower02)
    end
    DebugOut("MG Tower02 is empty")
    if NumPassengersInUnit(Building.AI_Airbase01_MGTower03) == 1 then
      ExitVehicle(GetUnitInSeat(Building.AI_Airbase01_MGTower03, 0), Building.AI_Airbase01_MGTower03)
    end
    DebugOut("MG Tower03 is empty")
    EndFrame()
  until NumPassengersInUnit(Building.AI_Airbase01_MGTower01) == 0 and NumPassengersInUnit(Building.AI_Airbase01_MGTower02) == 0 and NumPassengersInUnit(Building.AI_Airbase01_MGTower03) == 0
  DebugOut("ALL MG Towers are empty")
  Despawn(Troop.AI_Airbase01_MGTower01_Pilot01)
  Despawn(Troop.AI_Airbase01_MGTower02_Pilot01)
  Despawn(Troop.AI_Airbase01_MGTower03_Pilot01)
  Despawn(Air_Vehicle.AI_Cutscene02_Fighter01)
  Despawn(Air_Vehicle.AI_Cutscene02_Bomber01)
  CameraSetTarget(Camera.Player01, Troop.AI_Hose01)
  Spawn(Air_Vehicle.AI_Bomber02)
  Spawn(Air_Vehicle.AI_Bomber03)
  Spawn(Air_Vehicle.AI_Fighter02)
  Spawn(Air_Vehicle.AI_Fighter03)
  SetUnitInvulnerable(Air_Vehicle.AI_Bomber01, false)
  SetUnitInvulnerable(Air_Vehicle.AI_Bomber02, false)
  SetUnitInvulnerable(Air_Vehicle.AI_Fighter02, false)
  SetUnitInvulnerable(Air_Vehicle.AI_Fighter03, false)
  Teleport(Air_Vehicle.AI_Bomber01, GetObjectXPosition(Waypoint.Cutscene03_AI_Bomber01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Bomber01_Finish), 90)
  Teleport(Air_Vehicle.AI_Bomber02, GetObjectXPosition(Waypoint.Cutscene03_AI_Bomber02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Bomber02_Finish), 90)
  Teleport(Air_Vehicle.AI_Fighter02, GetObjectXPosition(Waypoint.Cutscene03_AI_Fighter01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Fighter01_Finish), 90)
  Teleport(Air_Vehicle.AI_Fighter03, GetObjectXPosition(Waypoint.Cutscene03_AI_Fighter02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Fighter02_Finish), 90)
  GoToArea(Air_Vehicle.AI_AirTransport01, GetObjectXPosition(Waypoint.AI_AirTransport_Despawner), GetObjectZPosition(Waypoint.AI_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.AI_AirTransport02, GetObjectXPosition(Waypoint.AI_AirTransport_Despawner), GetObjectZPosition(Waypoint.AI_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  Teleport(Troop.AI_Hose01, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose01_Finish), 90)
  Teleport(Troop.AI_Hose02, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose02_Finish), 90)
  Teleport(Troop.AI_Hose03, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose03_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose03_Finish), 90)
  Teleport(Troop.AI_Hose04, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose04_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose04_Finish), 90)
  Teleport(Troop.AI_Hose05, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose05_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose05_Finish), 90)
  Teleport(Troop.AI_Grunt01, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt01_Finish), 90)
  Teleport(Troop.AI_Grunt02, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt02_Finish), 90)
  Teleport(Troop.AI_Grunt03, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt03_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt03_Finish), 90)
  Teleport(Troop.AI_Grunt04, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt04_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt04_Finish), 90)
  Teleport(Troop.AI_Grunt05, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt05_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt05_Finish), 90)
  Spawn(Troop.SE_NorthFork_Grunt01)
  Spawn(Troop.SE_NorthFork_Grunt02)
  Spawn(Troop.SE_NorthFork_Grunt03)
  Spawn(Troop.SE_NorthFork_Grunt04)
  Spawn(Troop.SE_SouthFork_Grunt01)
  Spawn(Troop.SE_SouthFork_Grunt02)
  Spawn(Troop.SE_SouthFork_Grunt03)
  Spawn(Troop.SE_SouthFork_Grunt04)
  Spawn(Troop.SE_CentreRoad_Grunt01)
  Spawn(Troop.SE_CentreRoad_Grunt02)
  Spawn(Troop.SE_Airbase_Grunt01)
  Spawn(Troop.SE_Airbase_Grunt02)
  Spawn(Troop.SE_Airbase_Grunt03)
  Spawn(Troop.SE_Airbase_Grunt04)
  Spawn(Ground_Vehicle.SE_CentreRoad_LightTank01)
  FollowWaypoint(Ground_Vehicle.SE_CentreRoad_LightTank01, Waypoint.SE_CentreRoad_LightTank01, 0, 0, constant.ORDER_FORCED)
  SetObjectiveData(Objective.Capture_SE_Airbase, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SE_Airbase01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if Helipad01Complete == 0 then
    SetObjectiveData(Objective_Marker.Helipad, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    SetObjectiveData(Objective.Helipad, constant.OBJECTIVE_DATA_VISIBLE, 1)
  end
  if POW02Objective == 0 then
    SetObjectiveData(Objective_Marker.VillagePOW, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    SetObjectiveData(Objective.VillagePOW, constant.OBJECTIVE_DATA_VISIBLE, 1)
  end
  if POW01Objective == 0 then
    SetObjectiveData(Objective_Marker.BurningVillagePOW, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    SetObjectiveData(Objective.BurningVillagePOW, constant.OBJECTIVE_DATA_VISIBLE, 1)
  end
  SetCamera(Camera.Player01)
  EndFrame()
  ResetCommandBar()
  EndIntro()
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.AI_Grunt01, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Grunt02, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Grunt03, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Grunt04, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Grunt05, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Hose02, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Hose03, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Hose04, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Hose05, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.AI_Fighter02, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.AI_Fighter03, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.AI_Bomber02, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.AI_Bomber03, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  PauseTimerActive = 0
  AttackWaveReinforcements = 1
  AirTransportCutsceneActive = 0
  PhoneMessage(26, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  PhoneMessageWithObjective(27, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(28, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  if Helipad01Complete == 0 and POW01Objective == 0 or POW02Objective == 0 and POW01Objective == 0 then
    PhoneMessageWithObjective(7, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
    while true do
      if IsDead(Air_Vehicle.AI_Fighter02) and IsReadyToRevive(Air_Vehicle.AI_Fighter02) and GetReadyToReviveFighter02 == 0 then
        AIRespawnFighter02Time = GetTime()
        GetReadyToReviveFighter02 = 1
      end
      EndFrame()
      if GetReadyToReviveFighter02 == 1 and GetTime() > AIRespawnFighter02Time + 15 then
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter02, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15)
      end
      EndFrame()
      if IsDead(Air_Vehicle.AI_Fighter03) and IsReadyToRevive(Air_Vehicle.AI_Fighter03) and GetReadyToReviveFighter03 == 0 then
        AIRespawnFighter03Time = GetTime()
        GetReadyToReviveFighter03 = 1
      end
      EndFrame()
      if GetReadyToReviveFighter03 == 1 and GetTime() > AIRespawnFighter03Time + 15 then
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter03, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15)
      end
      EndFrame()
      if AllPlayerUnitsDead(constant.PLAYER_ONE) == true and IsDead(Air_Vehicle.AI_Fighter02) and IsReadyToRevive(Air_Vehicle.AI_Fighter02) then
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter02, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15)
      end
      EndFrame()
    end
  end
end
