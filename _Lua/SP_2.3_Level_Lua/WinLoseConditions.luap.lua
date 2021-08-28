function WinLoseConditions(owner)
  cutscene04kill = owner
  while missionend == 0 do
    if IsDead(Ground_Vehicle.WF_Recon_1) and recondead == 0 then
      ExitVehicle(Troop.WF_Grunt_1, Building.WFMGNest01)
      ExitVehicle(Troop.WF_Grunt_2, Building.WFMGNest02)
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      WaitFor(2)
      PhoneMessage(90, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(153)
      break
    end
    EndFrame()
    if GetState(Capture_Point.WF_HQ_Capture_Point) == flag.TYPE_TUNDRAN then
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      Kill(cutscene02kill)
      Kill(cutsceneskip02)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StartOutro()
      SetCamera(Camera.Camera1)
      CameraSetWaypoint(Camera.Camera1, Waypoint.FailCutSceneWaypoint)
      CameraSetTarget(Camera.Camera1, Waypoint.FailCutSceneTarget)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      cutscene04 = 1
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
      PhoneMessage(53, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(20)
      DebugOut("WinLoseConditions - End Cutscene 1")
      cutscenefinished04 = 1
      DebugOut("WinLoseConditions - End Cutscene 2")
      break
    end
    EndFrame()
    if 1 > GetTimeLeft() and GetState(Capture_Point.TT_HQ_Capture_Point) ~= flag.TYPE_WFRONTIER and timer == 1 then
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(74, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
      WaitFor(10)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(176)
      break
    end
    if 0 < GetTimeLeft() and GetState(Capture_Point.TT_HQ_Capture_Point) == flag.TYPE_WFRONTIER then
      ShowTimer(0)
      StopScoringTimer()
      FreezePlayer(constant.PLAYER_ONE)
      DefeatLament(constant.ARMY_TUNDRAN)
      VictoryDance(constant.ARMY_WF)
      tundranHQ = 1
      SetObjectiveData(Objective.Tundran_HQ, constant.OBJECTIVE_DATA_STATE, 1)
      break
    end
    EndFrame()
  end
end
