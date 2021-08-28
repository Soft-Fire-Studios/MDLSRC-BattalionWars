function CAPTURE_THE_FACTORY(owner)
  repeat
    EndFrame()
    WaitFor(0.1)
  until NumItemsInArea(Map_Zone.Factory, flag.TYPE_WFRONTIER) > 0
  PhoneMessage(47, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
  PhoneMessage(48, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetState(Capture_Point.FactoryCP) == flag.TYPE_WFRONTIER and BarracksCutsceneOn == false
  FactoryCutsceneOn = true
  FactoryCutscene = true
  TimerPaused = GetTimeLeft()
  SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("cutscene skipped")
      MidCutscene3Ended = true
    else
    end
    EndFrame()
  until MidCutscene3Ended == true
  PauseTimerActive = 0
  EndIntro()
  Kill(cutscenemid3)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetTimer(TimerPaused)
  Despawn(Ground_Vehicle.WFcutsceneArtillery1)
  Despawn(Ground_Vehicle.WFcutsceneArtillery2)
  Spawn(Ground_Vehicle.WFartillery1)
  Spawn(Ground_Vehicle.WFartillery2)
  EndFrame()
  StoreSummaryMessage(constant.PLAYER_ONE, 50, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 51, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
  AddToGroup(Unit_Group.WFUnits, Ground_Vehicle.WFartillery1)
  AddToGroup(Unit_Group.WFUnits, Ground_Vehicle.WFartillery2)
  SetActive(Ground_Vehicle.WFartillery1, constant.ACTIVE)
  SetActive(Ground_Vehicle.WFartillery2, constant.ACTIVE)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.WFartillery1, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Ground_Vehicle.WFartillery2, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  SetCamera(Camera.playercam)
  EndFrame()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  UnfreezePlayer(constant.PLAYER_ONE)
  FactoryCutsceneOn = false
  PhoneMessage(52, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  PhoneMessage(53, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  WaitFor(1)
  FactoryCaptured = true
end
