function CutsceneAbort(owner)
  cutsceneabort = owner
  WaitFor(1)
  FreezePlayer()
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) then
      CameraFade(constant.FADE_OUT, constant.WAIT, 0.2)
      Kill(cutscenes)
      ClearMessageQueue()
      cutscene = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  until cutscene == 1
  ClearMessageQueue()
  StoreSummaryMessage(0, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(1, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(6, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(2, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(26, 0, SpriteID.CO_WF_Herman_Sad)
  StoreSummaryMessage(27, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(25, 0, SpriteID.CO_WF_Herman_Happy)
  SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  if tanksonbridge == 1 then
    Teleport(Ground_Vehicle.WFHeavyTank1, 10, -355, 0, 2)
    Teleport(Ground_Vehicle.WFHeavyTank2, 23, -355, 0, 2)
    Teleport(Ground_Vehicle.WFHeavyTank3, 17, -365, 0, 2)
    StopAndGuard(Ground_Vehicle.WFHeavyTank1)
    StopAndGuard(Ground_Vehicle.WFHeavyTank2)
    StopAndGuard(Ground_Vehicle.WFHeavyTank3)
    WaitFor(1)
  end
  SetCamera(Camera.PlayerCam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  cutscenetimer = GetTime()
  SetTimer(420)
  ShowTimer(1)
  UnfreezePlayer()
  StartScoringTimer()
  Vanish(Destroyable_Object.EastBridge1ExplosiveCentre)
  Vanish(Destroyable_Object.EastBridge1Piece3)
  Vanish(Destroyable_Object.EastBridge1Piece4)
  Vanish(Destroyable_Object.EastBridge1ExplosiveStart)
  Vanish(Destroyable_Object.EastBridge1ExplosiveEnd)
  Vanish(Destroyable_Object.EastBridge1Piece2)
  Vanish(Destroyable_Object.EastBridge1Piece5)
  Vanish(Destroyable_Object.EastBridge1Piece1)
  Vanish(Destroyable_Object.EastBridge1Piece6)
end
