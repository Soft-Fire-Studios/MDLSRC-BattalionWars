function DEFEND_THE_HQ(owner)
  local MidCutscene1Skipped = false
  SetObjectiveData(Objective_Marker.WFHQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.WFHQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.WFHQ, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.THQ, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.THQ, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.CaptureBarracks, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.CaptureBarracks, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.CaptureFactory, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.CaptureFactory, constant.OBJECTIVE_DATA_STATE, 0)
  repeat
    EndFrame()
  until CutsceneEnded == true
  WaitFor(10)
  GoToArea(Ground_Vehicle.Tltank01, 100, -585, 10, constant.ORDER_NORMAL)
  GoToArea(Ground_Vehicle.Tltank02, 100, -585, 10, constant.ORDER_NORMAL)
  GoToArea(Ground_Vehicle.tank1, 70, -602, 15, constant.ORDER_FORCED)
  FollowWaypoint(Ground_Vehicle.tank2, Waypoint.T2track, 0, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
    WaitFor(0.1)
  until IsInArea(Ground_Vehicle.Tltank01, Map_Zone.WFHQfrontline) or IsInArea(Ground_Vehicle.Tltank02, Map_Zone.WFHQfrontline) or IsDead(Ground_Vehicle.Tltank01) and IsDead(Ground_Vehicle.Tltank02)
  GoToArea(Troop.Tgrunt01, 100, -504, 5, constant.ORDER_FORCED)
  GoToArea(Troop.Tgrunt02, 100, -504, 5, constant.ORDER_FORCED)
  GoToArea(Troop.Tgrunt03, 100, -504, 5, constant.ORDER_FORCED)
  GoToArea(Troop.Tgrunt04, 100, -504, 5, constant.ORDER_FORCED)
  GoToArea(Troop.Tgrunt05, 100, -504, 5, constant.ORDER_FORCED)
  GoToArea(Troop.Tgrunt06, 100, -504, 5, constant.ORDER_FORCED)
  GoToArea(Troop.Tgrunt07, 100, -504, 5, constant.ORDER_FORCED)
  EnterVehicle(Troop.TgruntA1, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.TgruntA2, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.TgruntB1, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.TgruntB2, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  WaitFor(8)
  EnterVehicle(Troop.Tgrunt01, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt02, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt03, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt04, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt05, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt06, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt07, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  PhoneMessage(22, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  PhoneMessage(23, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  PhoneMessage(24, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  WaitFor(25)
  PhoneMessage(27, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
  EnterVehicle(Troop.Tgrunt10, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt11, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt12, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt13, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt14, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt15, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.Tgrunt16, Capture_Point.WFHQCP, constant.ORDER_FORCED)
  local mrtimer = GetTime()
  local mrtimer2 = GetTime()
  local TundransFlee = false
  repeat
    if GetTime() > mrtimer + 10 then
      if 1 > NumItemsInArea(Map_Zone.WFinnerbase, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_WFRONTIER), 1) and 0 < NumItemsInArea(Map_Zone.WFinnerbase, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_TUNDRAN), 1) then
        EnterVehicle(Troop.Tgrunt10, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.Tgrunt11, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.Tgrunt12, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.Tgrunt13, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.Tgrunt14, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.Tgrunt15, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.Tgrunt16, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.TgruntB1, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.TgruntB2, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.TgruntA1, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        EnterVehicle(Troop.TgruntA2, Capture_Point.WFHQCP, constant.ORDER_FORCED)
        mrtimer = GetTime()
      end
      EndFrame()
    end
    EndFrame()
    if TundransFlee == false and GetTime() > mrtimer2 + 30 then
      if 1 > NumItemsInArea(Map_Zone.WFbase, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_TUNDRAN), 1) and 0 < NumItemsInArea(Map_Zone.WFbase, CombineFlags(flag.TYPE_GVEHICLE, flag.TYPE_TUNDRAN), 1) then
        TundransFlee = true
        PhoneMessage(29, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
        GoToArea(Ground_Vehicle.Tltank01, -152, -109, 15, constant.ORDER_FORCED)
        GoToArea(Ground_Vehicle.Tltank02, -152, -109, 15, constant.ORDER_FORCED)
        GoToArea(Ground_Vehicle.tank1, -152, -109, 15, constant.ORDER_FORCED)
        GoToArea(Ground_Vehicle.tank2, -152, -109, 15, constant.ORDER_FORCED)
      end
      EndFrame()
    end
    EndFrame()
  until IsDead(Troop.Tgrunt01) and IsDead(Troop.Tgrunt02) and IsDead(Troop.Tgrunt03) and IsDead(Troop.Tgrunt04) and IsDead(Troop.Tgrunt05) and IsDead(Troop.Tgrunt06) and IsDead(Troop.Tgrunt07) and IsDead(Troop.Tgrunt10) and IsDead(Troop.Tgrunt11) and IsDead(Troop.Tgrunt12) and IsDead(Troop.Tgrunt13) and IsDead(Troop.Tgrunt14) and IsDead(Troop.Tgrunt15) and IsDead(Troop.Tgrunt16) and IsDead(Troop.TgruntA1) and IsDead(Troop.TgruntA2) and IsDead(Troop.TgruntB1) and IsDead(Troop.TgruntB2) and 1 > NumItemsInArea(Map_Zone.WFbase, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_TUNDRAN), 1) and 1 > NumItemsInArea(Map_Zone.WFbase, CombineFlags(flag.TYPE_GVEHICLE, flag.TYPE_TUNDRAN), 1)
  SetObjectiveData(Objective.WFHQ, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.WFHQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  WaitFor(3)
  DefenceMissionFinished = true
  local mgnest01troop = 0
  local mgnest02troop = 0
  local mgnest01 = Building.mgnest1
  local mgnest02 = Building.mgnest2
  local p1 = GetPlayerUnit(constant.PLAYER_ONE)
  if mgnest01 ~= GetPlayerUnit(constant.PLAYER_ONE) and GetUnitInSeat(mgnest01, 0) ~= 0 then
    mgnest01troop = GetUnitInSeat(mgnest01, 0)
    ExitVehicle(GetUnitInSeat(mgnest01, 0))
    FollowUnit(mgnest01troop, p1, -1, constant.ORDER_NORMAL)
  end
  if mgnest02 ~= GetPlayerUnit(constant.PLAYER_ONE) and GetUnitInSeat(mgnest02, 0) ~= 0 then
    mgnest02troop = GetUnitInSeat(mgnest02, 0)
    ExitVehicle(GetUnitInSeat(mgnest02, 0))
    FollowUnit(mgnest02troop, p1, -1, constant.ORDER_NORMAL)
  end
  SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  WaitFor(1)
  Spawn(Air_Vehicle.WFtransport1)
  Spawn(Air_Vehicle.WFtransport2)
  LandAirUnit(Air_Vehicle.WFtransport1, GetObjectXPosition(Waypoint.transport1), GetObjectZPosition(Waypoint.transport1), constant.ORDER_FORCED, 0, 10, 0)
  LandAirUnit(Air_Vehicle.WFtransport2, GetObjectXPosition(Waypoint.transport2), GetObjectZPosition(Waypoint.transport2), constant.ORDER_FORCED, 0, 10, 0)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("cutscene skipped")
      MidCutscene1Skipped = true
      MidCutscene1Ended = true
    else
    end
    EndFrame()
  until MidCutscene1Ended == true
  PauseTimerActive = 0
  EndIntro()
  Kill(cutscenemid1)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StoreSummaryMessage(constant.PLAYER_ONE, 30, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
  if MidCutscene1Skipped == true then
    ExitVehicle(Ground_Vehicle.WFrecon1, constant.ID_NONE)
    ExitVehicle(Troop.WFassault01, constant.ID_NONE)
    ExitVehicle(Troop.WFassault02, constant.ID_NONE)
    ExitVehicle(Troop.WFassault03, constant.ID_NONE)
    ExitVehicle(Troop.WFassault04, constant.ID_NONE)
    Teleport(Troop.WFassault01, 43.7, -598.9, 90, 5)
    Teleport(Troop.WFassault02, 43.7, -598.9, 90, 5)
    Teleport(Troop.WFassault03, 43.7, -598.9, 90, 5)
    Teleport(Troop.WFassault04, 43.7, -598.9, 90, 5)
    Teleport(Ground_Vehicle.WFrecon1, 19.8, -598.3, 90, 5)
    SetActive(Troop.WFassault01, constant.ACTIVE)
    SetActive(Troop.WFassault02, constant.ACTIVE)
    SetActive(Troop.WFassault03, constant.ACTIVE)
    SetActive(Troop.WFassault04, constant.ACTIVE)
    SetActive(Ground_Vehicle.WFrecon1, constant.ACTIVE)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.WFassault01, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Troop.WFassault02, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Troop.WFassault03, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Troop.WFassault04, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Ground_Vehicle.WFrecon1, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    end
    Teleport(Air_Vehicle.WFtransport1, -24.6, -616.7, 200, 5)
    GoToArea(Air_Vehicle.WFtransport1, -329, -1288, 0, constant.ORDER_FORCED)
    GoToArea(Air_Vehicle.WFtransport2, -329, -1288, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  SetCamera(Camera.playercam)
  EndFrame()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  UnfreezePlayer(constant.PLAYER_ONE)
  PhoneMessageWithObjective(31, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  SetObjectiveData(Objective.THQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  PhoneMessage(34, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
  PhoneMessageWithObjective(37, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  PhoneMessage(91, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  WaitFor(16)
  SetTimer(840)
  ShowTimer(1)
  TimerStarted = true
  WaitFor(4)
  SetObjectiveData(Objective.CaptureBarracks, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.CaptureFactory, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SecondObjectivesShown = true
  if GetPrimaryActionState(Troop.WFbazooka01) == constant.ACTION_STATE_GUARD or GetPrimaryActionState(Troop.WFbazooka02) == constant.ACTION_STATE_GUARD or GetPrimaryActionState(Troop.WFbazooka03) == constant.ACTION_STATE_GUARD or GetPrimaryActionState(Troop.WFbazooka04) == constant.ACTION_STATE_GUARD or GetPrimaryActionState(Troop.WFgrunt01) == constant.ACTION_STATE_GUARD or GetPrimaryActionState(Troop.WFgrunt02) == constant.ACTION_STATE_GUARD or GetPrimaryActionState(Troop.WFgrunt03) == constant.ACTION_STATE_GUARD or GetPrimaryActionState(Troop.WFgrunt04) == constant.ACTION_STATE_GUARD or GetPrimaryActionState(Troop.WFgrunt05) == constant.ACTION_STATE_GUARD or GetPrimaryActionState(Troop.WFgrunt06) == constant.ACTION_STATE_GUARD then
    PhoneMessage(84, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  end
  EndFrame()
  DefenceFinallyFinished = true
end
