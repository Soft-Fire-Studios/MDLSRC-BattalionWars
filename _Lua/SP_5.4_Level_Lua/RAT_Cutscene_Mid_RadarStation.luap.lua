function RAT_Cutscene_Mid_RadarStation(owner)
  CutsceneMidRadarStationID = owner
  DebugOut("Cutscene Mid RadarStation = ", CutsceneMidRadarStationID)
  repeat
    EndFrame()
  until cutscene == 1
  WaitFor(5)
  while missionend == 0 do
    if CutsceneMidRadarStationStart == 1 then
      DebugOut("Mid Level Cutscene in progress")
      FreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_TUNDRAN, true)
      SetInvulnerable(flag.TYPE_XYLVANIAN, true)
      SetUnitInvulnerable(GetPlayerUnit(), true)
      StartIntro()
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      PauseTimerActive = 1
      Spawn(Ground_Vehicle.WFtank01)
      Spawn(Ground_Vehicle.WFtank03)
      Spawn(Ground_Vehicle.Xbattlestation01)
      SetActive(Ground_Vehicle.Xbattlestation01, constant.INACTIVE, constant.ADJUST_WEAPON)
      if not IsDead(Ground_Vehicle.X_Battlestation_1) then
        SetActive(Ground_Vehicle.X_Battlestation_1, constant.INACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Ground_Vehicle.Xtank02) then
        SetActive(Ground_Vehicle.Xtank02, constant.INACTIVE, constant.ADJUST_WEAPON)
      end
      GoToArea(Ground_Vehicle.Xbattlestation01, -425, 225, 5, 0, constant.ORDER_FORCED)
      SetCamera(Camera.CutsceneMid, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneMid, Waypoint.RadarStation)
      CameraSetTarget(Camera.CutsceneMid, Waypoint.RadarStationTarget)
      CameraSetFOV(Camera.CutsceneMid, 45, constant.IMMEDIATE, 10, constant.WAIT)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessageWithObjective(35, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
      CameraSetFOV(Camera.CutsceneMid, 60, constant.SMOOTH, 2, constant.NO_WAIT)
      WaitFor(4)
      SetActive(Ground_Vehicle.Xbattlestation01, constant.ACTIVE, constant.ADJUST_WEAPON)
      WaitFor(4)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      CutsceneMidRadarStationStart = 2
      EndIntro()
      SetActive(Ground_Vehicle.Xbattlestation01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetCamera(Camera.Player_Camera, constant.PLAYER_ONE)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(36, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      WaitFor(0.5)
      PauseTimerActive = 0
      UnfreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_TUNDRAN, false)
      SetInvulnerable(flag.TYPE_XYLVANIAN, false)
      SetUnitInvulnerable(GetPlayerUnit(), false)
      break
    end
    EndFrame()
  end
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
