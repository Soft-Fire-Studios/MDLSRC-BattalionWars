function Cutscene_Kill(owner)
  WaitFor(1)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) then
      Kill(cutscenes)
      cutscene = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  end
  DebugOut("Cam Change")
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.PlayerCam)
  UnfreezePlayer()
  StoreSummaryMessage(0, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(1, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(2, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(3, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(4, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(5, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(7, 0, SpriteID.CO_WF_Betty_Happy)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  LevelState = 1
  StartScoringTimer()
  repeat
    EndFrame()
  until LevelState == 2
  while LevelState == 2 do
    if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) then
      Kill(endscenes)
      LevelState = 3
      DebugOut("Killed cutscene")
    end
    EndFrame()
  end
end
