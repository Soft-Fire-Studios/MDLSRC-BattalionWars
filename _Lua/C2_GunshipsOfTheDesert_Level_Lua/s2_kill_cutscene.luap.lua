function s2_kill_cutscene(owner)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) then
      DebugOut("Killed cutscene", cutsceneStart)
      Kill(cutsceneStart)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.PlayerCamera0001)
      cutsceneStart = 1
      Despawn(Troop.XgruntCutscene0001)
      Despawn(Troop.XgruntCutscene0002)
      Despawn(Air_Vehicle.XgunshipCutscene0001)
      Despawn(Air_Vehicle.WFtcopterCutscene0001)
      Despawn(Troop.WFgruntTcopterCutscene0001)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      StoreSummaryMessage(0, 0, SpriteID.CO_WF_Austin_Happy)
      StoreSummaryMessage(1, 0, SpriteID.CO_WF_Austin_Happy)
      StoreSummaryMessage(2, 0, SpriteID.CO_WF_Austin_Happy)
      UnfreezePlayer()
      StartScoringTimer()
      ClearMessageQueue()
      PhoneMessage(3, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy)
      s2_Global_Variable = 1
      DebugOut("s2 Global Variable = ", s2_Global_Variable)
    end
    EndFrame()
  until cutsceneStart == 1
  EndFrame()
  return
end
