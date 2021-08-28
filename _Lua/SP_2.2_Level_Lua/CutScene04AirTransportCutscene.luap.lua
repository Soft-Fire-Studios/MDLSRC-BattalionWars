function CutScene04AirTransportCutscene(owner)
  AbortCutscene04 = owner
  repeat
    EndFrame()
  until IntroCutsceneFinished == 1
  while missionend == 0 do
    if 1 <= NumItemsInArea(Map_Zone.Cutscene, flag.TYPE_WFRONTIER) then
      playerincutscene = true
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      DebugOut("End Objective Cutscene Playing")
      StartOutro()
      FreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 1
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetObjectiveData(Objective_Marker.TundranAirTransport01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.TundranAirBaseWaypoint, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Spawn(Troop.TundranCounterFlameVet01)
      Spawn(Troop.TundranCounterFlameVet02)
      Spawn(Troop.TundranCounterFlameVet03)
      Spawn(Troop.TundranCounterAAVet01)
      Spawn(Troop.TundranCounterAAVet02)
      Spawn(Troop.TundranCounterAAVet03)
      Spawn(Troop.TundranCounterAAVet04)
      Spawn(Troop.TundranChainVet05)
      Spawn(Troop.TundranChainVet06)
      Spawn(Troop.TundranChainVet07)
      Spawn(Troop.TundranChainVet08)
      Spawn(Troop.TundranChainVet09)
      Spawn(Ground_Vehicle.TundranHeavyTank03)
      Spawn(Ground_Vehicle.TundranHeavyTank04)
      Spawn(Air_Vehicle.TundranGunship04)
      Spawn(Air_Vehicle.TundranGunship05)
      ClearMessageQueue()
      SetCamera(Camera.Entity330106353, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.Entity330106353, Waypoint.ShowAirTranports)
      CameraSetTarget(Camera.Entity330106353, Waypoint.Target)
      SetObjectiveData(Objective.DestroyTundranAirTransport, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.TundranAirBaseWaypoint, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      StartedCutscene04 = 1
      PhoneMessageWithObjective(50, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessage(51, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(18)
      EndCutscene04 = 1
      DebugOut("*AirTransportCutscene* - The AirTransportCutScene has finished")
      break
    end
    EndFrame()
    EndFrame()
  end
end
