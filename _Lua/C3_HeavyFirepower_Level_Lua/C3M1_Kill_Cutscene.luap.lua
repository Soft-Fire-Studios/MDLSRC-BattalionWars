function C3M1_Kill_Cutscene(owner)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) then
      DebugOut("Killed cutscene", cutsceneStart)
      Kill(cutsceneStart)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.Camera0001)
      EnterVehicle(Troop.SgruntMG0001, Building.SmgNest0001, constant.ORDER_FORCED)
      EnterVehicle(Troop.SgruntMG0002, Building.SmgNest0002, constant.ORDER_FORCED)
      GoToArea(Troop.Sgrunt0004, 346, -182, 5, constant.ORDER_FORCED)
      GoToArea(Troop.Sgrunt0005, 367, -176, 5, constant.ORDER_FORCED)
      GoToArea(Troop.Sgrunt0006, 357, -192, 5, constant.ORDER_FORCED)
      GoToArea(Troop.Sgrunt0007, 351, -205, 5, constant.ORDER_FORCED)
      Spawn(Ground_Vehicle.Xbattlestation0001)
      Spawn(Ground_Vehicle.Xbattlestation0002)
      StoreSummaryMessage(0, 0, SpriteID.CO_WF_Betty_Sad)
      StoreSummaryMessage(1, 0, SpriteID.CO_WF_Betty_Happy)
      StoreSummaryMessage(2, 3, SpriteID.CO_SE_Leiqo_Happy)
      StoreSummaryMessage(3, 0, SpriteID.CO_WF_Betty_Happy)
      StoreSummaryMessage(4, 0, SpriteID.CO_WF_Betty_Happy)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      ClearMessageQueue()
      PhoneMessage(5, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy)
      PhoneMessage(6, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      cutsceneStart = 1
      UnfreezePlayer()
      StartScoringTimer()
    end
    EndFrame()
  until cutsceneStart == 1
  EndFrame()
  return
end
