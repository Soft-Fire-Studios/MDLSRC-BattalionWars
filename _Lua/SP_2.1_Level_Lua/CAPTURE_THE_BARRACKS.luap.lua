function CAPTURE_THE_BARRACKS(owner)
  local barracksattacked = false
  local AAtutorialDone = false
  local GunshipsDead = false
  repeat
    EndFrame()
    WaitFor(0.1)
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.PlayerleftHQ)
  repeat
    if barracksattacked == false and NumItemsInArea(Map_Zone.attackingbarracksflamers, flag.TYPE_WFRONTIER) > 0 then
      GoToArea(Troop.Tbazooka01, 226, -236, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.Tbazooka02, 226, -236, 5, constant.ORDER_NORMAL)
      barracksattacked = true
    end
    EndFrame()
    if barracksattacked == false and 0 < NumItemsInArea(Map_Zone.attackingbarrackstank, flag.TYPE_WFRONTIER) then
      GoToArea(Troop.Tbazooka01, 90, -84, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.Tbazooka02, 90, -84, 5, constant.ORDER_NORMAL)
      barracksattacked = true
    end
    EndFrame()
  until barracksattacked == true
  repeat
    EndFrame()
    WaitFor(0.1)
  until 0 < NumItemsInArea(Map_Zone.Barracks, flag.TYPE_WFRONTIER)
  PhoneMessage(38, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
  PhoneMessage(39, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  GoToArea(Troop.Tgrunt24, 292, -134, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.Tgrunt25, 292, -134, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.Tgrunt26, 292, -134, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.Tgrunt27, 292, -134, 5, constant.ORDER_NORMAL)
  repeat
    EndFrame()
  until GetState(Capture_Point.BarracksCP) == flag.TYPE_WFRONTIER and FactoryCutsceneOn == false
  BarracksCutsceneOn = true
  BarracksCutscene = true
  TimerPaused = GetTimeLeft()
  SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("cutscene skipped")
      MidCutscene2Ended = true
    else
    end
    EndFrame()
  until MidCutscene2Ended == true
  PauseTimerActive = 0
  EndIntro()
  Kill(cutscenemid2)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetTimer(TimerPaused)
  StoreSummaryMessage(constant.PLAYER_ONE, 41, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 42, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
  AddToGroup(Unit_Group.WFUnits, Troop.WFaa1)
  AddToGroup(Unit_Group.WFUnits, Troop.WFaa2)
  AddToGroup(Unit_Group.WFUnits, Troop.WFaa3)
  Teleport(Troop.WFAA1cutscene, 550, -45, 0, 5)
  Teleport(Troop.WFAA2cutscene, 550, -40, 0, 5)
  Teleport(Troop.WFAA3cutscene, 550, -50, 0, 5)
  Spawn(Troop.WFaa1)
  Spawn(Troop.WFaa2)
  Spawn(Troop.WFaa3)
  EndFrame()
  SetActive(Troop.WFaa1, constant.ACTIVE)
  SetActive(Troop.WFaa2, constant.ACTIVE)
  SetActive(Troop.WFaa3, constant.ACTIVE)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.WFaa1, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFaa2, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFaa3, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  Despawn(Troop.WFAA1cutscene)
  Despawn(Troop.WFAA2cutscene)
  Despawn(Troop.WFAA3cutscene)
  SetCamera(Camera.playercam)
  EndFrame()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  UnfreezePlayer(constant.PLAYER_ONE)
  BarracksCutsceneOn = false
  PhoneMessage(43, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
  WaitFor(5)
  Spawn(Air_Vehicle.Tgunship01)
  Spawn(Air_Vehicle.Tgunship02)
  AttackTarget(Air_Vehicle.Tgunship01, GetPlayerUnit(), constant.ORDER_FORCED)
  AttackTarget(Air_Vehicle.Tgunship02, GetPlayerUnit(), constant.ORDER_FORCED)
  DebugOut("GUNSHIPS ATTACK!!!")
  repeat
    EndFrame()
    WaitFor(0.1)
    if GunshipsDead == false and IsDead(Air_Vehicle.Tgunship01) == true and IsDead(Air_Vehicle.Tgunship02) == true then
      PhoneMessage(44, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      GunshipsDead = true
      BarracksCaptured = true
    end
    EndFrame()
    if AAtutorialDone == false and (GetPlayerUnit(constant.PLAYER_ONE) == Troop.WFaa1 or GetPlayerUnit(constant.PLAYER_ONE) == Troop.WFaa2 or GetPlayerUnit(constant.PLAYER_ONE) == Troop.WFaa3) then
      PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      AAtutorialDone = true
    end
    EndFrame()
  until BarracksCaptured == true and AAtutorialDone == true
end
