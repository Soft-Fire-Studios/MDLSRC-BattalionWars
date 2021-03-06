function Cutscene(owner)
  cutscene = owner
  Despawn(Capture_Point.HQ)
  Despawn(Troop.CutSceneGrunt01)
  Despawn(Troop.CutSceneGrunt02)
  SetObjectiveData(Objective_Marker.Objective1Battery1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective1Battery2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective1Battery3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective3HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  CameraFade(constant.FADE_OUT, constant.WAIT, 0)
  GoToArea(Troop.XGrunt1, -132, 303, 10)
  GoToArea(Troop.XGrunt2, -132, 303, 10)
  GoToArea(Troop.XGrunt3, -132, 303, 10)
  GoToArea(Troop.XGrunt4, -132, 303, 10)
  GoToArea(Troop.XGrunt5, -132, 303, 10)
  GoToArea(Troop.XGrunt6, -132, 303, 10)
  GoToArea(Troop.XChainVet1, -132, 303, 10)
  GoToArea(Troop.XChainVet2, -132, 303, 10)
  GoToArea(Troop.XChainVet3, -132, 303, 10)
  GoToArea(Troop.XBazooka1, -132, 303, 10)
  GoToArea(Troop.XBazooka2, -132, 303, 10)
  GoToArea(Troop.XBazooka3, -132, 303, 10)
  GoToArea(Air_Vehicle.XGunship, -132, 303, 10)
  GoToArea(Ground_Vehicle.XLightTank1, -132, 303, 10)
  GoToArea(Ground_Vehicle.XLightTank2, -132, 303, 10)
  GoToArea(Troop.WFGrunt1, -160, 964, 10)
  GoToArea(Troop.WFGrunt2, -160, 964, 10)
  GoToArea(Troop.WFGrunt3, -160, 964, 10)
  GoToArea(Troop.WFGrunt4, -160, 964, 10)
  GoToArea(Troop.WFGrunt5, -160, 964, 10)
  GoToArea(Troop.WFGrunt6, -160, 964, 10)
  GoToArea(Troop.WFFlamer1, -160, 964, 10)
  GoToArea(Troop.WFBazooka1, -160, 964, 10)
  GoToArea(Troop.WFBazooka2, -160, 964, 10)
  GoToArea(Troop.WFBazooka3, -160, 964, 10)
  FollowWaypoint(Ground_Vehicle.SolarLightTank1, Waypoint.WFIntroTankPath, 0, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.WFAntiAir, -160, 964, 10)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutsceneCam1, constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.WFIntroCutsceneShot01Target)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.WFIntroCutsceneShot01Spline)
    CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    PhoneMessage(6, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutsceneCam2, constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.XIntroCutsceneShot01Target)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.XIntroCutsceneShot01Spline)
    CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    PhoneMessage(1, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
  end
  WaitFor(0.5)
  StartIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(10)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective_Marker.Objective1Battery1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Objective1Battery2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Objective1Battery3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutsceneCam1, constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.WFIntroCutsceneShot02Target)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.WFIntroCutsceneShot02Spline)
    CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutsceneCam2, constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.XIntroCutsceneShot02Target)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.XIntroCutsceneShot02Spline)
    CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(7, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(2, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(9)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective_Marker.Objective1Battery1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective1Battery2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective1Battery3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Objective3HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutsceneCam1, constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.WFIntroCutsceneShot03Target)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.WFIntroCutsceneShot03Spline)
    CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutsceneCam2, constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.XIntroCutsceneShot03Target)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.XIntroCutsceneShot03Spline)
    CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(8, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
  PhoneMessage(3, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
  WaitFor(9)
  cutscenefinished = 1
end
