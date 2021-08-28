function Their_Finest_Hour_Cutscene_Helipad_Village_Abort(owner)
  CutscenePOW02Abort = owner
  SetUnitInvulnerable(Troop.AI_AntiArmour01, true)
  SetUnitInvulnerable(Troop.AI_AntiArmour02, true)
  SetUnitInvulnerable(Troop.AI_AntiArmour03, true)
  SetUnitInvulnerable(Troop.AI_AntiArmour04, true)
  SetUnitInvulnerable(Troop.AI_AntiArmour05, true)
  Despawn(Troop.AI_AntiArmour01)
  Despawn(Troop.AI_AntiArmour02)
  Despawn(Troop.AI_AntiArmour03)
  Despawn(Troop.AI_AntiArmour04)
  Despawn(Troop.AI_AntiArmour05)
  repeat
    EndFrame()
  until CutscenePOW02Begun == 1
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      SetInvulnerable(flag.TYPE_ANGLO, 0)
      SetInvulnerable(flag.TYPE_SOLAR, 0)
      Kill(CutscenePOW02)
      CutscenePOW02Finished = 1
    end
    EndFrame()
  until CutscenePOW02Finished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StoreSummaryMessage(constant.PLAYER_ONE, 25, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
  ExitVehicle(Troop.AI_AntiArmour01, Air_Vehicle.AI_AirTransport02)
  ExitVehicle(Troop.AI_AntiArmour02, Air_Vehicle.AI_AirTransport02)
  ExitVehicle(Troop.AI_AntiArmour03, Air_Vehicle.AI_AirTransport02)
  ExitVehicle(Troop.AI_AntiArmour04, Air_Vehicle.AI_AirTransport02)
  ExitVehicle(Troop.AI_AntiArmour05, Air_Vehicle.AI_AirTransport02)
  EndFrame()
  Teleport(Troop.AI_AntiArmour01, GetObjectXPosition(Waypoint.AI_AntiArmour01), GetObjectZPosition(Waypoint.AI_AntiArmour01), 180, 0)
  SetActive(Troop.AI_AntiArmour01, constant.ACTIVE)
  SetUnitInvulnerable(Troop.AI_AntiArmour01, false)
  Teleport(Troop.AI_AntiArmour02, GetObjectXPosition(Waypoint.AI_AntiArmour02), GetObjectZPosition(Waypoint.AI_AntiArmour02), 180, 0)
  SetActive(Troop.AI_AntiArmour02, constant.ACTIVE)
  SetUnitInvulnerable(Troop.AI_AntiArmour02, false)
  Teleport(Troop.AI_AntiArmour03, GetObjectXPosition(Waypoint.AI_AntiArmour03), GetObjectZPosition(Waypoint.AI_AntiArmour03), 180, 0)
  SetActive(Troop.AI_AntiArmour03, constant.ACTIVE)
  SetUnitInvulnerable(Troop.AI_AntiArmour03, false)
  Teleport(Troop.AI_AntiArmour04, GetObjectXPosition(Waypoint.AI_AntiArmour04), GetObjectZPosition(Waypoint.AI_AntiArmour04), 180, 0)
  SetActive(Troop.AI_AntiArmour04, constant.ACTIVE)
  SetUnitInvulnerable(Troop.AI_AntiArmour04, false)
  Teleport(Troop.AI_AntiArmour05, GetObjectXPosition(Waypoint.AI_AntiArmour05), GetObjectZPosition(Waypoint.AI_AntiArmour05), 180, 0)
  SetActive(Troop.AI_AntiArmour05, constant.ACTIVE)
  SetUnitInvulnerable(Troop.AI_AntiArmour05, false)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.AI_AntiArmour01, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_AntiArmour02, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_AntiArmour03, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_AntiArmour04, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_AntiArmour05, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
  end
  GoToArea(Air_Vehicle.AI_AirTransport01, GetObjectXPosition(Waypoint.AI_AirTransport_Despawner), GetObjectZPosition(Waypoint.AI_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.AI_AirTransport02, GetObjectXPosition(Waypoint.AI_AirTransport_Despawner), GetObjectZPosition(Waypoint.AI_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  StopCapturePointSounds(Capture_Point.POW02)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  if AttackWaveReinforcements == 0 then
    Spawn(Troop.AI_Airbase01_MGTower01_Pilot01)
    Spawn(Troop.AI_Airbase01_MGTower02_Pilot01)
    Spawn(Troop.AI_Airbase01_MGTower03_Pilot01)
    Spawn(Air_Vehicle.AI_Fighter01)
    Spawn(Air_Vehicle.AI_Bomber01)
  end
  if AttackWaveReinforcements == 1 then
    Spawn(Troop.AI_Hose01)
    Spawn(Troop.AI_Hose02)
    Spawn(Troop.AI_Hose03)
    Spawn(Troop.AI_Hose04)
    Spawn(Troop.AI_Hose05)
    Spawn(Troop.AI_Grunt01)
    Spawn(Troop.AI_Grunt02)
    Spawn(Troop.AI_Grunt03)
    Spawn(Troop.AI_Grunt04)
    Spawn(Troop.AI_Grunt05)
    Spawn(Troop.AI_Grunt06)
    Spawn(Troop.AI_Grunt07)
    Spawn(Troop.AI_Grunt08)
    Spawn(Troop.AI_Grunt09)
    Spawn(Troop.AI_Grunt10)
    Spawn(Air_Vehicle.AI_Fighter02)
    Spawn(Air_Vehicle.AI_Fighter03)
    Spawn(Air_Vehicle.AI_Bomber02)
    Spawn(Air_Vehicle.AI_Bomber03)
  end
  if Helipad01Complete == 1 then
    Spawn(Ground_Vehicle.AI_HeavyTank01)
  end
  ForceUnitTransfer(constant.PLAYER_ONE, CurrentActiveUnit, true, true)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == CurrentActiveUnit
  SetUnitInvulnerable(Troop.CUTSCENE, false)
  Despawn(Troop.CUTSCENE)
  SetCamera(Camera.Player01)
  EndIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  PauseTimerActive = 0
  POW02Objective = 1
  AirTransportCutsceneActive = 0
  PhoneMessage(80, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  PhoneMessage(75, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
end
