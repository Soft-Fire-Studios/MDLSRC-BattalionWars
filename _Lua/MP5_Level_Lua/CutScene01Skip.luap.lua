function CutScene01Skip(owner)
  local cutscenefinished01 = 0
  PrepareSkipCutscene()
  WaitFor(1)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Cutscene01End = 1
      DebugOut(" In split screen - killed cutscene")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.Cutscene01Skip = 1
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.Cutscene01Skip = 1
    end
    EndFrame()
  until netvariable.player1.Cutscene01Skip == 1 and netvariable.player2.Cutscene01Skip == 1 or Cutscene01End == 1
  Kill(KillCutScene01)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  CleanupSkipCutscene()
  Spawn(Water_Vehicle.SolarBattleship01)
  Spawn(Water_Vehicle.SolarFrigate01)
  Spawn(Air_Vehicle.SolarGunship01)
  Spawn(Air_Vehicle.SolarGunship02)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(constant.PLAYER_ONE, 60, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 61, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.SolarBattleship01, true, true)
    SetCamera(Camera.PlayerCameraOne, constant.PLAYER_ONE)
    EndFrame()
    ResetCommandBar()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(constant.PLAYER_TWO, 10, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
    StoreSummaryMessage(constant.PLAYER_TWO, 11, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
    SetCamera(Camera.PlayerCameraTwo, constant.PLAYER_TWO)
    EndFrame()
    ResetCommandBar()
  end
  Despawn(Troop.SEDummy)
  Despawn(Water_Vehicle.IntroSEBattleship01)
  Despawn(Water_Vehicle.IntroSEFrigate01)
  Despawn(Air_Vehicle.IntroSEGunship01)
  Despawn(Air_Vehicle.IntroSEGunship02)
  SetObjectiveData(Objective_Marker.Objective02LighthouseDestroy, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective02LighthouseProtect, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective03SolarHQCapture, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective03SolarHQProtect, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetViewDistanceAdjustment(-1, 10)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  UnfreezePlayer(constant.PLAYER_TWO)
  SetTimer(600)
  ShowTimer(1)
  Cutscene01End = 2
end
