function MP3_Cutscene_Mid_Bomber(owner)
  cutsceneMidBomberID = owner
  while true do
    if Blimp7DeadObjective == 1 then
      PauseTimerActive = 1
      MissionTimeLeft = GetTimeLeft()
      ShowTimer(false)
      TimerShown = 0
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        StartOutro()
        FreezePlayer(constant.PLAYER_ONE)
        SetInvulnerable(flag.TYPE_WFRONTIER, true)
        ClearMessageQueue(constant.PLAYER_ONE)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        Spawn(Air_Vehicle.WFbomberCutscene01)
        SetCamera(Camera.P1MidBomber01, constant.PLAYER_ONE)
        CameraSetFOV(Camera.P1MidBomber01, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
        CameraSetWaypoint(Camera.P1MidBomber01, Waypoint.MidBomber01WF)
        CameraSetTarget(Camera.P1MidBomber01, Air_Vehicle.WFbomberCutscene01)
        CameraSetFOV(Camera.P1MidBomber01, 50, constant.SMOOTH, 2, constant.NO_WAIT)
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(100, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        StartOutro()
        FreezePlayer(constant.PLAYER_TWO)
        SetInvulnerable(flag.TYPE_TUNDRAN, true)
        ClearMessageQueue(constant.PLAYER_TWO)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        Spawn(Air_Vehicle.WFbomberCutscene01)
        SetCamera(Camera.P2MidBomber01, constant.PLAYER_TWO)
        CameraSetFOV(Camera.P2MidBomber01, 70, constant.IMMEDIATE, 0, constant.NO_WAIT)
        CameraSetWaypoint(Camera.P2MidBomber01, Waypoint.MidBomber01TT)
        CameraSetTarget(Camera.P2MidBomber01, Air_Vehicle.WFbomberCutscene01)
        CameraSetFOV(Camera.P2MidBomber01, 40, constant.SMOOTH, 3, constant.NO_WAIT)
        ClearMessageQueue(constant.PLAYER_TWO)
        PhoneMessage(101, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
      end
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      break
    end
    EndFrame()
  end
  Despawn(Air_Vehicle.WFbomberCutscene01)
  Spawn(Air_Vehicle.WFbomber01)
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ClearMessageQueue(constant.PLAYER_TWO)
    SetCamera(Camera.player2cam, constant.PLAYER_TWO)
    PhoneMessageWithObjective(63, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
    SetInvulnerable(flag.TYPE_TUNDRAN, false)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessageWithObjective(13, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
    SetCamera(Camera.player1cam, constant.PLAYER_ONE)
    SetInvulnerable(flag.TYPE_WFRONTIER, false)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
  end
  WaitFor(FreezeDelay)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    UnfreezePlayer(constant.PLAYER_ONE)
    SetInvulnerable(flag.TYPE_WFRONTIER, false)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Air_Vehicle.WFbomber01, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    UnfreezePlayer(constant.PLAYER_TWO)
    SetInvulnerable(flag.TYPE_TUNDRAN, false)
  end
  PauseTimerActive = 0
  SetTimer(MissionTimeLeft)
  ShowTimer(1)
  TimerShown = 1
  CutsceneMidBomber = 1
end
