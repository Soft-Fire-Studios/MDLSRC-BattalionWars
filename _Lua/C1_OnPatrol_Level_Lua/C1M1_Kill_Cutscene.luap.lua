function C1M1_Kill_Cutscene(owner)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) then
      DebugOut("Killed cutscene", cutsceneStart)
      Kill(cutsceneStart)
      cutsceneStart = 1
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.Player0001)
      StoreSummaryMessage(110, 0, SpriteID.CO_WF_Betty_Happy)
      StoreSummaryMessage(0, 0, SpriteID.CO_WF_Betty_Happy)
      StoreSummaryMessage(1, 0, SpriteID.CO_WF_Betty_Happy)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      UnfreezePlayer()
      StartScoringTimer()
      C1M1_Global_Variable = 1
      DebugOut("C1M1 Global Variable = ", C1M1_Global_Variable)
    end
    EndFrame()
  until cutsceneStart == 1
  EndFrame()
  return
end
