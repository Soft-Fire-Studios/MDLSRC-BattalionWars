function MP3_Cutscene_INTRO(owner)
  cutscene = owner
  DebugOut("Cutscene Start ID", cutscene)
  StartIntro()
  FreezePlayer(constant.PLAYER_ONE)
  FreezePlayer(constant.PLAYER_TWO)
  Despawn(Air_Vehicle.WFfighter1)
  Despawn(Air_Vehicle.WFfighter2)
  Despawn(Air_Vehicle.TTfighter1)
  Despawn(Air_Vehicle.TTfighter2)
  Despawn(Air_Vehicle.IntroWFFighter02)
  Despawn(Air_Vehicle.IntroWFStrat01)
  Despawn(Air_Vehicle.IntroTTFighter02)
  Despawn(Air_Vehicle.IntroTTFighter03)
  Despawn(Air_Vehicle.IntroTTFighter04)
  SetUnitInvulnerable(Air_Vehicle.TBlimp01, true)
  SetUnitInvulnerable(Air_Vehicle.TBlimp02, true)
  SetUnitInvulnerable(Air_Vehicle.TBlimp03, true)
  SetUnitInvulnerable(Air_Vehicle.TBlimp04, true)
  SetUnitInvulnerable(Air_Vehicle.TBlimp05, true)
  SetUnitInvulnerable(Air_Vehicle.TBlimp06, true)
  SetUnitInvulnerable(Air_Vehicle.TBlimp07, true)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.P1, constant.PLAYER_ONE)
    CameraSetFOV(Camera.P1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetWaypoint(Camera.P1, Waypoint.IntroWFShot01Spline)
    CameraSetTarget(Camera.P1, Waypoint.IntroWFShot01Target)
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(1, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.P2, constant.PLAYER_TWO)
    CameraSetFOV(Camera.P2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetWaypoint(Camera.P2, Waypoint.IntroTTShot01Spline)
    CameraSetTarget(Camera.P2, Waypoint.IntroTTShot01Target)
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(51, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
  end
  Spawn(Air_Vehicle.IntroWFFighter02)
  Spawn(Air_Vehicle.IntroTTFighter03)
  WaitFor(0.5)
  WaitFor(1)
  WaitFor(6.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Air_Vehicle.IntroWFFighter01)
  Despawn(Air_Vehicle.IntroWFFighter02)
  Despawn(Air_Vehicle.IntroWFStrat01)
  Despawn(Air_Vehicle.IntroTTFighter01)
  Despawn(Air_Vehicle.IntroTTFighter02)
  Despawn(Air_Vehicle.IntroTTFighter03)
  Despawn(Air_Vehicle.IntroTTFighter04)
  SetObjectiveData(Objective_Marker.P1Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.P2Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.P1, constant.PLAYER_ONE)
    CameraSetFOV(Camera.P1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetWaypoint(Camera.P1, Waypoint.IntroWFShot02Spline)
    CameraSetTarget(Camera.P1, Waypoint.IntroWFShot02Target)
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessageWithObjective(3, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.P2, constant.PLAYER_TWO)
    CameraSetFOV(Camera.P2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetWaypoint(Camera.P2, Waypoint.IntroTTShot02Spline)
    CameraSetTarget(Camera.P2, Waypoint.IntroTTShot02Target)
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessageWithObjective(53, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  end
  WaitFor(7.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective_Marker.P1Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.P2Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.P1tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.P1tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.P1tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.P2tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.P2tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.P2tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.P1, constant.PLAYER_ONE)
    CameraSetFOV(Camera.P1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetWaypoint(Camera.P1, Waypoint.IntroWFShot03Spline)
    CameraSetTarget(Camera.P1, Waypoint.IntroWFShot03Target)
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(2, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.P2, constant.PLAYER_TWO)
    CameraSetFOV(Camera.P2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetWaypoint(Camera.P2, Waypoint.IntroTTShot03Spline)
    CameraSetTarget(Camera.P2, Waypoint.IntroTTShot03Target)
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(52, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
  end
  WaitFor(9)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective_Marker.P1tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.P1tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.P1tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.P2tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.P2tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.P2tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.P1HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.P2HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.P1, constant.PLAYER_ONE)
    CameraSetFOV(Camera.P1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetWaypoint(Camera.P1, Waypoint.IntroWFShot04Spline)
    CameraSetTarget(Camera.P1, Waypoint.IntroWFShot04Target)
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(4, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.P2, constant.PLAYER_TWO)
    CameraSetFOV(Camera.P2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetWaypoint(Camera.P2, Waypoint.IntroTTShot04Spline)
    CameraSetTarget(Camera.P2, Waypoint.IntroTTShot04Target)
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(54, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
  end
  WaitFor(9)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective_Marker.P1HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.P2HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetUnitInvulnerable(Air_Vehicle.TBlimp01, false)
  SetUnitInvulnerable(Air_Vehicle.TBlimp02, false)
  SetUnitInvulnerable(Air_Vehicle.TBlimp03, false)
  SetUnitInvulnerable(Air_Vehicle.TBlimp04, false)
  SetUnitInvulnerable(Air_Vehicle.TBlimp05, false)
  SetUnitInvulnerable(Air_Vehicle.TBlimp06, false)
  SetUnitInvulnerable(Air_Vehicle.TBlimp07, false)
  Spawn(Air_Vehicle.WFfighter2)
  Teleport(Air_Vehicle.WFfighter2, WFfighter2XLandingCoord, WFfighter2ZLandingCoord, 180, 0)
  Spawn(Air_Vehicle.TTfighter2)
  Teleport(Air_Vehicle.TTfighter2, TTfighter2XLandingCoord, TTfighter2ZLandingCoord, 0, 0)
  Spawn(Air_Vehicle.WFfighter1)
  Teleport(Air_Vehicle.WFfighter1, WFfighter1XLandingCoord, WFfighter1ZLandingCoord, 180, 0)
  Spawn(Air_Vehicle.TTfighter1)
  Teleport(Air_Vehicle.TTfighter1, TTfighter1XLandingCoord, TTfighter1ZLandingCoord, 0, 0)
  EndIntro()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.player2cam, constant.PLAYER_TWO)
    ForceUnitTransfer(constant.PLAYER_TWO, Air_Vehicle.TTfighter1, true)
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.player1cam, constant.PLAYER_ONE)
    ForceUnitTransfer(constant.PLAYER_ONE, Air_Vehicle.WFfighter1, true)
  end
  WaitFor(0.1)
  SetActive(Troop.WFextra01, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.TTextra01, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  WaitFor(0.1)
  Kill(Troop.WFextra01)
  Kill(Troop.TTextra01)
  Kill(Troop.TTextra02)
  Kill(Troop.TTextra03)
  Kill(Troop.TTextra04)
  Kill(Troop.TTextra05)
  Kill(Troop.TTextra06)
  Despawn(Capture_Point.HQ)
  Spawn(Building.CapturePointDummy)
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.cutsceneskipped = 1
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(60, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
    PhoneMessage(61, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.cutsceneskipped = 1
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
    PhoneMessage(11, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  end
  cutsceneStart = 1
  CleanupSkipCutscene()
  WaitFor(FreezeDelay)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetTimer(480)
    ShowTimer(1)
    TimerShown = 1
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_ONE)
    ResetCommandBar()
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Air_Vehicle.WFfighter2, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetTimer(480)
    ShowTimer(1)
    TimerShown = 1
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_TWO)
    ResetCommandBar()
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Air_Vehicle.TTfighter2, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
    end
  end
  StartScoringTimer()
end
