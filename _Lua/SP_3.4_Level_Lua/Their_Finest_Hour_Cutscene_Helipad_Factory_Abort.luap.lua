function Their_Finest_Hour_Cutscene_Helipad_Factory_Abort(owner)
  CutsceneHelipadAbort = owner
  SetUnitInvulnerable(Ground_Vehicle.AI_HeavyTank01, true)
  Despawn(Ground_Vehicle.AI_HeavyTank01)
  repeat
    EndFrame()
  until CutsceneHelipadBegun == 1
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      SetInvulnerable(flag.TYPE_ANGLO, 0)
      SetInvulnerable(flag.TYPE_SOLAR, 0)
      Kill(CutsceneHelipad)
      CutsceneHelipadFinished = 1
    end
    EndFrame()
  until CutsceneHelipadFinished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StoreSummaryMessage(constant.PLAYER_ONE, 25, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
  if IsPassengerInUnit(Ground_Vehicle.AI_HeavyTank01, Air_Vehicle.AI_AirTransport01) then
    ExitVehicle(Ground_Vehicle.AI_HeavyTank01, Air_Vehicle.AI_AirTransport01)
  end
  Teleport(Ground_Vehicle.AI_HeavyTank01, GetObjectXPosition(Waypoint.AI_HeavyTank01), GetObjectZPosition(Waypoint.AI_HeavyTank01), 90, 0)
  SetActive(Ground_Vehicle.AI_HeavyTank01, constant.ACTIVE)
  SetUnitInvulnerable(Ground_Vehicle.AI_HeavyTank01, false)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.AI_HeavyTank01, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
  end
  GoToArea(Air_Vehicle.AI_AirTransport01, GetObjectXPosition(Waypoint.AI_AirTransport_Despawner), GetObjectZPosition(Waypoint.AI_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.AI_AirTransport02, GetObjectXPosition(Waypoint.AI_AirTransport_Despawner), GetObjectZPosition(Waypoint.AI_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
  StopCapturePointSounds(Capture_Point.Helipad01)
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
  if POW02Objective == 1 then
    Spawn(Troop.AI_AntiArmour01)
    Spawn(Troop.AI_AntiArmour02)
    Spawn(Troop.AI_AntiArmour03)
    Spawn(Troop.AI_AntiArmour04)
    Spawn(Troop.AI_AntiArmour05)
  end
  ForceUnitTransfer(constant.PLAYER_ONE, CurrentActiveUnit, true, true)
  DebugOut("Player will return to their original unit")
  repeat
    DebugOut("Force transfer in progress... Please wait")
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == CurrentActiveUnit
  DebugOut("Player has returned to their original unit")
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
  Helipad01Complete = 1
  AirTransportCutsceneActive = 0
  PhoneMessage(78, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  PhoneMessage(74, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
end
