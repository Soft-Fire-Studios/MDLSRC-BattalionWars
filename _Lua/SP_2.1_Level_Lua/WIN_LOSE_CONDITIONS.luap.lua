function WIN_LOSE_CONDITIONS(owner)
  Despawn(Air_Vehicle.CutsceneTTransport1)
  Despawn(Air_Vehicle.CutsceneTTransport2)
  Despawn(Air_Vehicle.CutsceneTTransport3)
  Despawn(Air_Vehicle.CutsceneTTransport4)
  Despawn(Air_Vehicle.CutsceneTTransport5)
  Despawn(Air_Vehicle.CutsceneTTransport6)
  Despawn(Air_Vehicle.CutsceneTTransport7)
  Despawn(Air_Vehicle.CutsceneTTransport8)
  repeat
    if FactoryCutsceneOn == false and BarracksCutsceneOn == false and GetState(Capture_Point.THQCP) == flag.TYPE_WFRONTIER and missionover == 0 then
      ForceSpawningStopped = true
      FreezePlayer(constant.PLAYER_ONE)
      ClearMessageQueue()
      VictoryDance(constant.ARMY_WF, true)
      DefeatLament(constant.ARMY_TUNDRAN, false)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Kill(Air_Vehicle.Tgunship01)
      Kill(Air_Vehicle.Tgunship02)
      Kill(Air_Vehicle.Tgunship03)
      Kill(Air_Vehicle.Tgunship04)
      Kill(Air_Vehicle.Ttransport1)
      StopScoringTimer()
      SetObjectiveData(Objective.THQ, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      WFwin = true
      Kill(scriptWarnings)
      Kill(scriptGunships)
      Kill(scriptFactoryTanks)
      Kill(scriptFactoryDefence)
      Kill(scriptBarracksDefence)
      Kill(scriptAirbaseDefence)
      Kill(cutscenemid1)
      Kill(cutscenemid2)
      Kill(cutscenemid3)
      WaitFor(1)
      repeat
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          DebugOut("cutscene skipped")
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          WinCutsceneEnded = true
        else
        end
        EndFrame()
      until WinCutsceneEnded == true
      EndIntro()
      Kill(cutscenewin)
      WinMission()
      missionover = 1
    end
    EndFrame()
    if FactoryCutsceneOn == false and BarracksCutsceneOn == false and GetState(Capture_Point.WFHQCP) == flag.TYPE_TUNDRAN and missionover == 0 then
      VictoryDance(constant.ARMY_TUNDRAN, true)
      DefeatLament(constant.ARMY_WF, true)
      ForceSpawningStopped = true
      FreezePlayer(constant.PLAYER_ONE)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WFlose1 = true
      SetObjectiveData(Objective_Marker.WFHQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(scriptWarnings)
      Kill(scriptGunships)
      Kill(scriptFactoryTanks)
      Kill(scriptFactoryDefence)
      Kill(scriptBarracksDefence)
      Kill(scriptAirbaseDefence)
      Kill(cutscenemid1)
      Kill(cutscenemid2)
      Kill(cutscenemid3)
      WaitFor(1)
      repeat
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          DebugOut("cutscene skipped")
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          Lose1CutsceneEnded = true
        else
        end
        EndFrame()
      until Lose1CutsceneEnded == true
      DeclareVictory(constant.ARMY_TUNDRAN)
      EndIntro()
      Kill(cutscenelose1)
      LoseMission(166)
      missionover = 1
    end
    EndFrame()
    if FactoryCutsceneOn == false and BarracksCutsceneOn == false and missionover == 0 and TimerStarted == true and 1 > GetTimeLeft() then
      ForceSpawningStopped = true
      FreezePlayer(constant.PLAYER_ONE)
      ClearMessageQueue()
      VictoryDance(constant.ARMY_TUNDRAN, true)
      DefeatLament(constant.ARMY_WF, true)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WFlose2 = true
      SetObjectiveData(Objective_Marker.WFHQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(scriptWarnings)
      Kill(scriptGunships)
      Kill(scriptFactoryTanks)
      Kill(scriptFactoryDefence)
      Kill(scriptBarracksDefence)
      Kill(scriptAirbaseDefence)
      Kill(cutscenemid1)
      Kill(cutscenemid2)
      Kill(cutscenemid3)
      WaitFor(1)
      repeat
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          DebugOut("cutscene skipped")
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          Lose2CutsceneEnded = true
        else
        end
        EndFrame()
      until Lose2CutsceneEnded == true
      EndIntro()
      DeclareVictory(constant.ARMY_TUNDRAN)
      Kill(cutscenelose1)
      LoseMission(173)
      missionover = 1
    end
    EndFrame()
  until missionover == 1
end
