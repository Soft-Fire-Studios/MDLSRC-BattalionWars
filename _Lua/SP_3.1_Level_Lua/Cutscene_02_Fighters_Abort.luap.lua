function Cutscene_02_Fighters_Abort(owner)
  repeat
    EndFrame()
  until fightermid == 1
  PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  Spawn(Air_Vehicle.SE_Gunship_11)
  Spawn(Air_Vehicle.SE_Gunship_12)
  GoToArea(Air_Vehicle.SE_Gunship_11, -900, 320, 10)
  GoToArea(Air_Vehicle.SE_Gunship_12, -900, 310, 10)
  FreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 1
  SetInvulnerable(flag.TYPE_ANGLO, true)
  SetInvulnerable(flag.TYPE_TUNDRAN, true)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StartOutro()
  fightermid = 2
  WaitFor(2)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("mid level cutscene skipped")
      ClearMessageQueue()
      Kill(cutkiller)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
      fightermid = 3
      break
    else
    end
    EndFrame()
  end
  SetViewDistanceAdjustment(470, 2)
  if fighterintro == 2 then
    StoreSummaryMessage(15, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(91, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Sad)
  else
    StoreSummaryMessage(14, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Sad)
  end
  EndIntro()
  PauseTimerActive = 0
  Despawn(Air_Vehicle.SE_Gunship_11)
  Despawn(Air_Vehicle.SE_Gunship_12)
  Despawn(Air_Vehicle.SE_Gunship_13)
  Despawn(Air_Vehicle.SE_Gunship_14)
  ClearMessageQueue()
  SetCamera(Camera.Player_Camera)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_TUNDRAN, false)
  SetInvulnerable(flag.TYPE_ANGLO, false)
  PhoneMessage(17, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  WaitFor(3.2)
  SetActive(Air_Vehicle.AI_Fighter_1, constant.ACTIVE)
  SetActive(Air_Vehicle.AI_Fighter_2, constant.ACTIVE)
  WaitFor(0.2)
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    repeat
      EndFrame()
    until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mission_Boundaries) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260026610) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260027849) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity570012803) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260025831) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260027852) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260027916) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260027857) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260027851) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260027854) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260027914) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260027918) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Entity260025497)
    PauseTutorialShow()
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(64, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, true)
    SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_NONE, true, Air_Vehicle.AI_Fighter_1)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_TWIST, constant.HUD_ITEM_FLASH, 99999)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_ANALOGUE, constant.HUD_ITEM_FLASH, 99999)
    WaitForPTText(2)
    repeat
      EndFrame()
    until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
    SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_NONE, true, Air_Vehicle.AI_Fighter_1)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_TWIST, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_ANALOGUE, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF)
    ClearMessageQueue(constant.PLAYER_ONE)
    PauseTutorialExit()
    SetFunctionIndicatorState(true)
  end
  fightermid = 4
end
