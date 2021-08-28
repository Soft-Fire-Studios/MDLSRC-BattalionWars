function WinLoseConditions(owner)
  local gettothechopper01 = 0
  local gettothechopper02 = 0
  local gettothechopper03 = 0
  local gettothechopper04 = 0
  while missionend == 0 do
    if Objective01 == 1 and Objective02 == 1 and Objective03 == 1 then
      Kill(phonemessages)
      missionend = 1
      StopScoringTimer()
      FreezePlayer(constant.PLAYER_ONE)
      DefeatLament(constant.ARMY_TUNDRAN)
      VictoryDance(constant.ARMY_WF)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Spawn(Troop.EndCutSceneGrunt01)
      Spawn(Troop.EndCutSceneGrunt02)
      Spawn(Troop.EndCutSceneGrunt03)
      Spawn(Troop.EndCutSceneGrunt04)
      Spawn(Troop.EndCutSceneGrunt05)
      Spawn(Troop.EndCutSceneGrunt06)
      Spawn(Troop.EndCutSceneGrunt07)
      Spawn(Troop.EndCutSceneGrunt08)
      Spawn(Troop.EndCutSceneGrunt09)
      Despawn(Air_Vehicle.TundranGunship04)
      Despawn(Air_Vehicle.TundranGunship05)
      Teleport(Troop.WFGrunt01, -17, 543, 180, 20)
      Teleport(Troop.WFGrunt02, -17, 543, 180, 20)
      Teleport(Troop.WFGrunt03, -17, 543, 180, 20)
      Teleport(Troop.WFGrunt04, -17, 543, 180, 20)
      Teleport(Troop.WFGrunt05, -17, 543, 180, 20)
      Teleport(Troop.WFGrunt06, -17, 543, 180, 20)
      Teleport(Troop.Entity330103991, -17, 543, 180, 20)
      Teleport(Troop.Entity330103992, -17, 543, 180, 20)
      Teleport(Troop.PlayerUnit, -17, 543, 180, 20)
      Teleport(Troop.WFAAVet05, -17, 543, 180, 20)
      Teleport(Troop.WFAAVet06, -17, 543, 180, 20)
      Teleport(Troop.WFAAVet07, -17, 543, 180, 20)
      Teleport(Troop.WFAAVet08, -17, 543, 180, 20)
      Teleport(Troop.XsylvanianDigSiteWFAAVet01, -17, 543, 180, 20)
      Teleport(Troop.XsylvanianDigSiteWFAAVet02, -17, 543, 180, 20)
      Teleport(Troop.XsylvanianDigSiteWFAAVet03, -17, 543, 180, 20)
      Teleport(Troop.XsylvanianDigSiteWFAAVet04, -17, 543, 180, 20)
      Teleport(Troop.AirbasePowWFChainVet01, -17, 543, 180, 20)
      Teleport(Troop.AirbasePowWFChainVet02, -17, 543, 180, 20)
      Teleport(Troop.AirbasePowWFChainVet03, -17, 543, 180, 20)
      Teleport(Troop.AirbasePowWFChainVet04, -17, 543, 180, 20)
      Teleport(Ground_Vehicle.WFArtillery01, -17, 543, 180, 20)
      Teleport(Ground_Vehicle.WFArtillery02, -17, 543, 180, 20)
      Teleport(Ground_Vehicle.WFArtillery03, -17, 543, 180, 20)
      DeclareVictory(constant.ARMY_WF)
      ClearMessageQueue()
      SetCamera(Camera.IntroductionCutsceneCamera)
      CameraSetWaypoint(Camera.IntroductionCutsceneCamera, Waypoint.Entity330104682)
      CameraSetTarget(Camera.IntroductionCutsceneCamera, Waypoint.Entity330104683)
      SetViewDistanceAdjustment(600, 10)
      StartOutro()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      missioncomplete = 1
      break
    end
    EndFrame()
    if AllPlayerUnitsDead(constant.PLAYER_ONE) == true and airbase < 2 then
      WaitFor(2)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) == true and airbase < 2 then
        Kill(phonemessages)
        missionend = 1
        DebugOut("*WinLoseConditions* - 2. All of the players units are dead. MISSION FAILED")
        FreezePlayer(constant.PLAYER_ONE)
        DeclareVictory(constant.ARMY_TUNDRAN)
        ClearMessageQueue()
        PhoneMessage(80, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        repeat
          EndFrame()
        until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(131)
        break
      end
    end
    EndFrame()
    if Objective02 == 0 and IsDead(Air_Vehicle.WFGunship02) and IsDead(Air_Vehicle.WFGunship03) then
      Kill(phonemessages)
      missionend = 1
      DebugOut("*WinLoseConditions* - 3. The Gunships are dead before the gate has been opened. MISSION FAILED")
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(61, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(199)
      break
    end
    EndFrame()
    if EndCutscene02 == 1 then
      if 0 < GetHealthPercent(Air_Vehicle.TundranAirTransport01) and IsInArea(Air_Vehicle.TundranAirTransport01, Map_Zone.TundranAirTransportsEscaped) then
        Kill(phonemessages)
        SetHealthPercent(Air_Vehicle.TundranAirTransport01, 25)
        missionend = 1
        SetInvulnerable(flag.TYPE_WFRONTIER, 1)
        SetInvulnerable(flag.TYPE_TUNDRAN, 1)
        VictoryDance(constant.ARMY_TUNDRAN, true)
        DebugOut("*WinLoseConditions* - 7. One of the Tundran choppers has escaped. MISSION FAILED")
        FreezePlayer(constant.PLAYER_ONE)
        DefeatLament(constant.ARMY_WF)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        ClearMessageQueue()
        SetCamera(Camera.IntroductionCutsceneCamera, constant.PLAYER_ONE)
        CameraSetWaypoint(Camera.IntroductionCutsceneCamera, Waypoint.Entity330104675)
        CameraSetTarget(Camera.IntroductionCutsceneCamera, Air_Vehicle.TundranAirTransport01)
        SetObjectiveData(Objective_Marker.TundranAirTransport01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        StartOutro()
        CameraFade(constant.FADE_IN, constant.WAIT, 1)
        missionfailed = 1
        break
      end
      if 0 < GetHealthPercent(Air_Vehicle.TundranAirTransport02) and IsInArea(Air_Vehicle.TundranAirTransport02, Map_Zone.TundranAirTransportsEscaped) then
        Kill(phonemessages)
        SetHealthPercent(Air_Vehicle.TundranAirTransport01, 25)
        missionend = 1
        SetInvulnerable(flag.TYPE_WFRONTIER, 1)
        SetInvulnerable(flag.TYPE_TUNDRAN, 1)
        VictoryDance(constant.ARMY_TUNDRAN, true)
        DebugOut("*WinLoseConditions* - 7. One of the Tundran choppers has escaped. MISSION FAILED")
        FreezePlayer(constant.PLAYER_ONE)
        DefeatLament(constant.ARMY_WF)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        ClearMessageQueue()
        SetCamera(Camera.IntroductionCutsceneCamera, constant.PLAYER_ONE)
        CameraSetWaypoint(Camera.IntroductionCutsceneCamera, Waypoint.Entity330104675)
        CameraSetTarget(Camera.IntroductionCutsceneCamera, Air_Vehicle.TundranAirTransport02)
        SetObjectiveData(Objective_Marker.TundranAirTransport01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        StartOutro()
        CameraFade(constant.FADE_IN, constant.WAIT, 1)
        missionfailed = 1
        break
      end
      EndFrame()
      if 0 < GetHealthPercent(Air_Vehicle.TundranAirTransport03) and IsInArea(Air_Vehicle.TundranAirTransport03, Map_Zone.TundranAirTransportsEscaped) then
        Kill(phonemessages)
        SetHealthPercent(Air_Vehicle.TundranAirTransport01, 25)
        missionend = 1
        SetInvulnerable(flag.TYPE_WFRONTIER, 1)
        SetInvulnerable(flag.TYPE_TUNDRAN, 1)
        VictoryDance(constant.ARMY_TUNDRAN, true)
        DebugOut("*WinLoseConditions* - 7. One of the Tundran choppers has escaped. MISSION FAILED")
        FreezePlayer(constant.PLAYER_ONE)
        DefeatLament(constant.ARMY_WF)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        ClearMessageQueue()
        SetCamera(Camera.IntroductionCutsceneCamera, constant.PLAYER_ONE)
        CameraSetWaypoint(Camera.IntroductionCutsceneCamera, Waypoint.Entity330104675)
        CameraSetTarget(Camera.IntroductionCutsceneCamera, Air_Vehicle.TundranAirTransport03)
        SetObjectiveData(Objective_Marker.TundranAirTransport01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        StartOutro()
        CameraFade(constant.FADE_IN, constant.WAIT, 1)
        missionfailed = 1
        break
      end
      if 0 < GetHealthPercent(Air_Vehicle.TundranAirTransport04) and IsInArea(Air_Vehicle.TundranAirTransport04, Map_Zone.TundranAirTransportsEscaped) then
        Kill(phonemessages)
        SetHealthPercent(Air_Vehicle.TundranAirTransport01, 25)
        missionend = 1
        SetInvulnerable(flag.TYPE_WFRONTIER, 1)
        SetInvulnerable(flag.TYPE_TUNDRAN, 1)
        VictoryDance(constant.ARMY_TUNDRAN, true)
        DebugOut("*WinLoseConditions* - 7. One of the Tundran choppers has escaped. MISSION FAILED")
        FreezePlayer(constant.PLAYER_ONE)
        DefeatLament(constant.ARMY_WF)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        ClearMessageQueue()
        SetCamera(Camera.IntroductionCutsceneCamera, constant.PLAYER_ONE)
        CameraSetWaypoint(Camera.IntroductionCutsceneCamera, Waypoint.Entity330104675)
        CameraSetTarget(Camera.IntroductionCutsceneCamera, Air_Vehicle.TundranAirTransport04)
        SetObjectiveData(Objective_Marker.TundranAirTransport01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        StartOutro()
        CameraFade(constant.FADE_IN, constant.WAIT, 1)
        missionfailed = 1
        break
      end
    end
    if EndCutscene04 == 1 and gettothechopper01 == 0 and IsInArea(Air_Vehicle.TundranAirTransport01, Map_Zone.TundranAirTransportEscaping) then
      ClearMessageQueue()
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      GoToArea(Air_Vehicle.TundranAirTransport01, -80, 1500, 10, 0, constant.ORDER_FORCED)
      gettothechopper01 = 1
    end
    EndFrame()
    if EndCutscene04 == 1 and gettothechopper02 == 0 and IsInArea(Air_Vehicle.TundranAirTransport02, Map_Zone.TundranAirTransportEscaping) then
      ClearMessageQueue()
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      GoToArea(Air_Vehicle.TundranAirTransport02, -80, 1500, 10, 0, constant.ORDER_FORCED)
      gettothechopper02 = 1
    end
    EndFrame()
    if EndCutscene04 == 1 and gettothechopper03 == 0 and IsInArea(Air_Vehicle.TundranAirTransport03, Map_Zone.TundranAirTransportEscaping) then
      ClearMessageQueue()
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      GoToArea(Air_Vehicle.TundranAirTransport03, -80, 1500, 10, 0, constant.ORDER_FORCED)
      gettothechopper03 = 1
    end
    EndFrame()
    if EndCutscene04 == 1 and gettothechopper04 == 0 and IsInArea(Air_Vehicle.TundranAirTransport04, Map_Zone.TundranAirTransportEscaping) then
      ClearMessageQueue()
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      GoToArea(Air_Vehicle.TundranAirTransport04, -80, 1500, 10, 0, constant.ORDER_FORCED)
      gettothechopper04 = 1
    end
    EndFrame()
  end
end
