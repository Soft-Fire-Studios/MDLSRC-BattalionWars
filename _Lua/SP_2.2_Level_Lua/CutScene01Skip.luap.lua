function CutScene01Skip(owner)
  local cutscenefinished01 = 0
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      IntroCutsceneFinished = 1
      DebugOut("*Cutscene01Skip* - Intro Cutscene Skipped")
    end
    EndFrame()
  until IntroCutsceneFinished == 1
  ClearMessageQueue()
  Kill(IntroCutsceneGlobal)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  FollowWaypoint(Water_Vehicle.TFrigate02, Waypoint.TFrigate02Waypoint01, 0, 0, constant.ORDER_FORCED)
  StoreSummaryMessage(5, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Sad)
  StoreSummaryMessage(6, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Sad)
  StoreSummaryMessage(14, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Sad)
  StoreSummaryMessage(90, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Sad)
  GoToArea(Troop.WFAAVet05, 213.161, -1182.14, 1, 0, constant.ORDER_FORCED)
  GoToArea(Troop.WFAAVet06, 212.475, -1175.7, 1, 0, constant.ORDER_FORCED)
  GoToArea(Troop.WFAAVet07, 205.574, -1174.36, 1, 0, constant.ORDER_FORCED)
  GoToArea(Troop.WFAAVet08, 204.798, -1167.35, 1, 0, constant.ORDER_FORCED)
  Teleport(Troop.WFAAVet05, 213.161, -1182.14, 100, 1)
  Teleport(Troop.WFAAVet06, 212.475, -1175.7, 100, 1)
  Teleport(Troop.WFAAVet07, 205.574, -1174.36, 100, 1)
  Teleport(Troop.WFAAVet08, 204.798, -1167.35, 100, 1)
  SetCamera(Camera.PlayerCamera)
  EndFrame()
  ResetCommandBar()
  CleanupSkipCutscene()
  EndIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  ResetHealthAndScoreTotals()
  playerincutscene = false
  UnfreezePlayer(constant.PLAYER_ONE)
  StartScoringTimer()
  WaitFor(1)
  PhoneMessage(83, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
end
