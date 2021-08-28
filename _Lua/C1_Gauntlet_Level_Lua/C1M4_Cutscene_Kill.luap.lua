function C1M4_Cutscene_Kill(owner)
  WaitFor(1)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) then
      Kill(cutscenes)
      cutscene = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  end
  DebugOut("Cam Change")
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  DebugOut("Teleporting")
  Teleport(Troop.TGrunt24, -254, -573, 320)
  Teleport(Troop.TGrunt27, -263, -587, 320)
  GoToArea(Ground_Vehicle.TTank6, -238, -592, 10)
  Teleport(Ground_Vehicle.TTank6, -238, -592, 300)
  StoreSummaryMessage(57, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(58, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(59, 0, SpriteID.CO_WF_Betty_Happy)
  SetCamera(Camera.PlayerCam)
  UnfreezePlayer()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  LevelState = 2
  StartScoringTimer()
end
