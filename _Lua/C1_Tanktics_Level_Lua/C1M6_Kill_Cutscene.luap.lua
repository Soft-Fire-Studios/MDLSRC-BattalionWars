function C1M6_Kill_Cutscene(owner)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) then
      DebugOut("Killed cutscene", cutsceneStart)
      Kill(cutsceneStart)
      cutsceneStart = 1
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      C1M1_Global_Variable = 1
      DebugOut("C1M1 Global Variable = ", C1M1_Global_Variable)
      StoreSummaryMessage(40, 0, SpriteID.CO_WF_Herman_Happy)
      StoreSummaryMessage(41, 0, SpriteID.CO_WF_Herman_Happy)
      StoreSummaryMessage(42, 0, SpriteID.CO_WF_Herman_Happy)
      StoreSummaryMessage(44, 2, SpriteID.CO_T_Nova_Happy)
      StoreSummaryMessage(45, 0, SpriteID.CO_WF_Herman_Happy)
      StoreSummaryMessage(47, 0, SpriteID.CO_WF_Herman_Happy)
      StoreSummaryMessage(50, 0, SpriteID.CO_WF_Herman_Happy)
      SetCamera(Camera.Player0001)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      UnfreezePlayer()
      StartScoringTimer()
      FollowWaypoint(Ground_Vehicle.TheavyTank0001, Waypoint.Entity0194, 5, 5, constant.ORDER_NORMAL)
      ClearMessageQueue()
      PhoneMessage(43, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(47, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(50, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
    end
    EndFrame()
  until cutsceneStart == 1
  EndFrame()
  return
end
