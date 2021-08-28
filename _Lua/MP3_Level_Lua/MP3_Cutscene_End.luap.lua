function MP3_Cutscene_End(owner)
  cutsceneEndID = owner
  DebugOut("Cutscene End ID", cutsceneEndID)
  Despawn(Troop.OutroTTGrunt01)
  Despawn(Troop.OutroTTGrunt02)
  Despawn(Troop.OutroTTGrunt03)
  Despawn(Troop.OutroTTGrunt04)
  Despawn(Troop.OutroTTGrunt05)
  Despawn(Troop.OutroTTGrunt06)
  Despawn(Troop.OutroTTAAVet01)
  Despawn(Troop.OutroTTAAVet02)
  Despawn(Troop.OutroTTFlameVet01)
  Despawn(Troop.OutroTTFlameVet02)
  Despawn(Troop.OutroWFGrunt01)
  Despawn(Troop.OutroWFGrunt02)
  Despawn(Troop.OutroWFGrunt03)
  Despawn(Troop.OutroWFGrunt04)
  Despawn(Troop.OutroWFBazookaVet01)
  Despawn(Troop.OutroWFBazookaVet02)
  Despawn(Troop.OutroWFFlameVet01)
  Despawn(Troop.OutroWFFlameVet02)
  while true do
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.winner == 1 then
      PauseTimerActive = 1
      MissionTimeLeft = GetTimeLeft()
      ShowTimer(false)
      StopScoringTimer()
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StartOutro()
      SetCamera(Camera.CutsceneEndP1, constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutsceneEndP1, 65, constant.IMMEDIATE, 10, constant.NO_WAIT)
      CameraSetWaypoint(Camera.CutsceneEndP1, Waypoint.OutroWFShot01Spline)
      CameraSetTarget(Camera.CutsceneEndP1, Waypoint.OutroWFShot01Target)
      DeclareVictory(constant.ARMY_WF)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(30, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(9)
      CutsceneEnd = 1
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      DebugOut("Time Taken for level = ", GetTime())
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      DebugOut("WF WIN P1")
      if IsNetworkHost() == true then
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 166)
        NetworkGameOver()
        break
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.winner == 1 then
      PauseTimerActive = 1
      MissionTimeLeft = GetTimeLeft()
      ShowTimer(false)
      StopScoringTimer()
      ClearMessageQueue(constant.PLAYER_TWO)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.CutsceneEndP2, constant.PLAYER_TWO)
      CameraSetFOV(Camera.CutsceneEndP2, 65, constant.IMMEDIATE, 10, constant.NO_WAIT)
      CameraSetWaypoint(Camera.CutsceneEndP2, Waypoint.OutroTTShot01Spline)
      CameraSetTarget(Camera.CutsceneEndP2, Waypoint.OutroTTShot01Target)
      WaitFor(0.25)
      WaitFor(0.5)
      DeclareVictory(constant.ARMY_WF)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(81, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(9)
      CutsceneEnd = 1
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      DebugOut("Time Taken for level = ", GetTime())
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      DebugOut("WF WIN P2")
      if IsNetworkHost() == true then
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 166)
        NetworkGameOver()
        break
      end
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.winner == 2 then
      PauseTimerActive = 1
      MissionTimeLeft = GetTimeLeft()
      ShowTimer(false)
      StopScoringTimer()
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.CutsceneEndP1, constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutsceneEndP1, 65, constant.IMMEDIATE, 10, constant.NO_WAIT)
      CameraSetWaypoint(Camera.CutsceneEndP1, Waypoint.OutroWFShot01Spline)
      CameraSetTarget(Camera.CutsceneEndP1, Waypoint.OutroWFShot01Target)
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(31, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(9)
      CutsceneEnd = 1
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      DebugOut("Time Taken for level = ", GetTime())
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      DebugOut("TUNDRANS WIN P1")
      if IsNetworkHost() == true then
        SetNetworkMissionComplete(1, false, 176)
        SetNetworkMissionComplete(2, true, 1)
        NetworkGameOver()
        break
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.winner == 2 then
      PauseTimerActive = 1
      MissionTimeLeft = GetTimeLeft()
      ShowTimer(false)
      StopScoringTimer()
      ClearMessageQueue(constant.PLAYER_TWO)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.CutsceneEndP2, constant.PLAYER_TWO)
      CameraSetFOV(Camera.CutsceneEndP2, 65, constant.IMMEDIATE, 10, constant.NO_WAIT)
      CameraSetWaypoint(Camera.CutsceneEndP2, Waypoint.OutroTTShot01Spline)
      CameraSetTarget(Camera.CutsceneEndP2, Waypoint.OutroTTShot01Target)
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(80, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(9)
      CutsceneEnd = 1
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      DebugOut("Time Taken for level = ", GetTime())
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      DebugOut("TUNDRANS WIN P2")
      if IsNetworkHost() == true then
        SetNetworkMissionComplete(1, false, 176)
        SetNetworkMissionComplete(2, true, 1)
        NetworkGameOver()
        break
      end
    end
    EndFrame()
  end
end
