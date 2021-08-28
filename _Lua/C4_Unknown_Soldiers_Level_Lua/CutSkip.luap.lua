function CutSkip(owner)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED) then
        ClearMessageQueue()
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        Kill(cutscenes)
        cutscene = 1
        DebugOut("Killed cutscene")
        Despawn(Air_Vehicle.LChopperCut1)
      end
      EndFrame()
    end
    EndFrame()
  until cutscene == 1
  EndFrame()
  SetCamera(Camera.PlayerCam)
  UnfreezePlayer()
  StoreSummaryMessage(0, 0, SpriteID.CO_WF_Austin_Happy)
  StoreSummaryMessage(1, 0, SpriteID.CO_WF_Austin_Happy)
  StoreSummaryMessage(44, 0, SpriteID.CO_WF_Austin_Happy)
  StoreSummaryMessage(2, 0, SpriteID.CO_WF_Austin_Happy)
  EndIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(3, 0, 0, 4, SpriteID.CO_WF_Austin_Happy)
  EndFrame()
end
