function CutScene02Skip(owner)
  repeat
    EndFrame()
  until SeaFortDead == 4
  PrepareSkipCutscene()
  EndFrame()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Cutscene02End = 1
      DebugOut(" In split screen - killed cutscene")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.Cutscene02Skip = 1
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.Cutscene02Skip = 1
    end
    EndFrame()
  until netvariable.player1.Cutscene02Skip == 1 and netvariable.player2.Cutscene02Skip == 1 or Cutscene02End == 1
  Kill(KillCutScene02)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  SetObjectiveData(Objective_Marker.Objective03SolarHQCapture, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective03SolarHQProtect, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  Despawn(Water_Vehicle.AngloSubmarine01)
  Despawn(Water_Vehicle.AngloSubmarine02)
  Despawn(Water_Vehicle.AngloSubmarine03)
  Despawn(Water_Vehicle.AngloBattleship01)
  Despawn(Water_Vehicle.AngloBattleship02)
  Despawn(Water_Vehicle.AngloFrigate01)
  Despawn(Water_Vehicle.SolarFrigate01)
  Despawn(Water_Vehicle.SolarBattleship01)
  Despawn(Air_Vehicle.SolarGunship01)
  Despawn(Air_Vehicle.SolarGunship02)
  Spawn(Troop.SolarChainVet01)
  Spawn(Troop.SolarChainVet02)
  Spawn(Troop.SolarBazooka01)
  Spawn(Troop.SolarBazooka02)
  Spawn(Troop.SolarGrunt01)
  Spawn(Troop.SolarGrunt02)
  Spawn(Troop.SolarGrunt03)
  Spawn(Troop.SolarGrunt04)
  Spawn(Troop.SolarGrunt05)
  Spawn(Ground_Vehicle.SolarLightTank01)
  Spawn(Ground_Vehicle.SolarLightTank02)
  ExitVehicle(Ground_Vehicle.SolarLightTank01, Water_Vehicle.SolarTransport02)
  ExitVehicle(Ground_Vehicle.SolarLightTank02, Water_Vehicle.SolarTransport01)
  ExitVehicle(Troop.SolarBazooka01, Water_Vehicle.SolarTransport01)
  ExitVehicle(Troop.SolarBazooka02, Water_Vehicle.SolarTransport01)
  ExitVehicle(Troop.SolarChainVet01, Water_Vehicle.SolarTransport01)
  ExitVehicle(Troop.SolarChainVet02, Water_Vehicle.SolarTransport01)
  ExitVehicle(Troop.SolarGrunt01, Water_Vehicle.SolarTransport02)
  ExitVehicle(Troop.SolarGrunt02, Water_Vehicle.SolarTransport02)
  ExitVehicle(Troop.SolarGrunt03, Water_Vehicle.SolarTransport02)
  ExitVehicle(Troop.SolarGrunt04, Water_Vehicle.SolarTransport02)
  ExitVehicle(Troop.SolarGrunt05, Water_Vehicle.SolarTransport02)
  EndFrame()
  Teleport(Troop.SolarChainVet01, -678, 869, 9, 1)
  Teleport(Troop.SolarChainVet02, -674, 868, 9, 1)
  Teleport(Troop.SolarBazooka01, -670, 868, 9, 1)
  Teleport(Troop.SolarBazooka02, -667, 867, 9, 1)
  Teleport(Troop.SolarGrunt01, -676, 876, 9, 1)
  Teleport(Troop.SolarGrunt02, -673, 874, 9, 1)
  Teleport(Troop.SolarGrunt03, -670, 872, 9, 1)
  Teleport(Troop.SolarGrunt04, -667, 869, 9, 1)
  Teleport(Troop.SolarGrunt05, -663, 867, 9, 1)
  Teleport(Ground_Vehicle.SolarLightTank01, -681, 860, 9, 2)
  Teleport(Ground_Vehicle.SolarLightTank02, -668, 856, 9, 2)
  CurrentPlayer1Direction = 9
  CurrentPlayer2Direction = 230
  CurrentPlayer1SpawnX = -681
  CurrentPlayer1SpawnZ = 830
  CurrentPlayer2SpawnX = -530
  CurrentPlayer2SpawnZ = 997
  Despawn(Capture_Point.AngloHQCapturePoint)
  Spawn(Building.DummyCP)
  Despawn(Water_Vehicle.SolarTransport01)
  Despawn(Water_Vehicle.SolarTransport02)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_SOLAR, 0)
    StoreSummaryMessage(constant.PLAYER_ONE, 68, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 62, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 63, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 64, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarLightTank01, true, true)
    SetCamera(Camera.PlayerCameraOne, constant.PLAYER_ONE)
    EndFrame()
    ResetCommandBar()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_ANGLO, 0)
    StoreSummaryMessage(constant.PLAYER_TWO, 12, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
    StoreSummaryMessage(constant.PLAYER_TWO, 13, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
    StoreSummaryMessage(constant.PLAYER_TWO, 18, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
    StoreSummaryMessage(constant.PLAYER_TWO, 14, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
    SetCamera(Camera.PlayerCameraTwo, constant.PLAYER_TWO)
    EndFrame()
    ResetCommandBar()
  end
  Despawn(Troop.SolarCutSceneTroop)
  EndIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  UnfreezePlayer(constant.PLAYER_TWO)
  PauseTimerActive = 0
  SetTimer(TimerPaused)
  ShowTimer(1)
  SeaFortDead = 1
end
