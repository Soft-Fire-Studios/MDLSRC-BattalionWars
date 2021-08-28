function CutSkip(owner)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) then
      Kill(cutscene)
      cutscene = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  until cutscene == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Camera0001)
  DebugOut("Cut to player")
  UnfreezePlayer()
  StoreSummaryMessage(1, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(2, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(3, 2, SpriteID.CO_T_Nova_Happy)
  StoreSummaryMessage(4, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(5, 0, SpriteID.CO_WF_Betty_Happy)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(5, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Happy)
  StartScoringTimer()
  WaitFor(1)
  Despawn(Air_Vehicle.TGunship3)
  Despawn(Air_Vehicle.TGunship4)
  Despawn(Air_Vehicle.XBomber1)
  Teleport(Air_Vehicle.XBomber1, 563, 350, 0, 20)
end
