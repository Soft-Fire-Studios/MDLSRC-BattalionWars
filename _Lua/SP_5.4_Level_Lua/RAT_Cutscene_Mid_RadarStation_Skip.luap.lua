function RAT_Cutscene_Mid_RadarStation_Skip(owner)
  repeat
    EndFrame()
  until CutsceneMidRadarStationStart == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", CutsceneMidRadarStationID)
      Kill(CutsceneMidRadarStationID)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      Spawn(Ground_Vehicle.WFtank01)
      Spawn(Ground_Vehicle.WFtank03)
      Spawn(Ground_Vehicle.Xbattlestation01)
      SetActive(Ground_Vehicle.Xbattlestation01, constant.ACTIVE, constant.ADJUST_WEAPON)
      GoToArea(Ground_Vehicle.Xbattlestation01, -425, 225, 5, 0, constant.ORDER_FORCED)
      StoreSummaryMessage(constant.PLAYER_ONE, 35, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
      SetCamera(Camera.Player_Camera, constant.PLAYER_ONE)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(36, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      PauseTimerActive = 0
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_TUNDRAN, false)
      SetInvulnerable(flag.TYPE_XYLVANIAN, false)
      SetUnitInvulnerable(GetPlayerUnit(), false)
      CutsceneMidRadarStationStart = 2
    end
    EndFrame()
  until CutsceneMidRadarStationStart == 2
  SetActive(Building.WFRadarStation01, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Building.WFRadarStation02, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Building.WFRadarStation03, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  WaitFor(4)
  if not IsDead(Ground_Vehicle.X_Battlestation_1) then
    SetActive(Ground_Vehicle.X_Battlestation_1, constant.ACTIVE, constant.ADJUST_WEAPON)
  end
  if not IsDead(Ground_Vehicle.Xtank02) then
    SetActive(Ground_Vehicle.Xtank02, constant.ACTIVE, constant.ADJUST_WEAPON)
  end
end
