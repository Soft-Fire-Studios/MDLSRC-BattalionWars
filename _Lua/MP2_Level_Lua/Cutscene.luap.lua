function Cutscene(owner)
  cutscene = owner
  StartIntro()
  PlayEffect(Scripted_Effect.Snow, 3, 0, 0, 0)
  Despawn(Capture_Point.THQ)
  Despawn(Troop.XGrunt1)
  Despawn(Troop.XGrunt2)
  Despawn(Troop.XGrunt3)
  Despawn(Troop.XGrunt4)
  Despawn(Troop.XGrunt5)
  Despawn(Troop.XAssault1)
  Despawn(Troop.XAssault2)
  Despawn(Troop.XAssault3)
  Despawn(Troop.XAssault4)
  Despawn(Troop.XBazooka1)
  Despawn(Troop.XBazooka2)
  Despawn(Troop.XBazooka3)
  Despawn(Ground_Vehicle.AntiAir)
  Despawn(Ground_Vehicle.XArtillery1)
  Despawn(Ground_Vehicle.XArtillery2)
  Despawn(Troop.TGrunt1)
  Despawn(Troop.TGrunt2)
  Despawn(Troop.TGrunt3)
  Despawn(Troop.TGrunt4)
  Despawn(Troop.TGrunt5)
  Despawn(Troop.TFlamer1)
  Despawn(Troop.TFlamer2)
  SetObjectiveData(Objective_Marker.Powerstation1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  GoToArea(Troop.IntroXGrunt01, GetObjectXPosition(Troop.XGrunt1), GetObjectZPosition(Troop.XGrunt1), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXGrunt02, GetObjectXPosition(Troop.XGrunt2), GetObjectZPosition(Troop.XGrunt2), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXGrunt03, GetObjectXPosition(Troop.XGrunt3), GetObjectZPosition(Troop.XGrunt3), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXGrunt04, GetObjectXPosition(Troop.XGrunt4), GetObjectZPosition(Troop.XGrunt4), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXGrunt05, GetObjectXPosition(Troop.XGrunt5), GetObjectZPosition(Troop.XGrunt5), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXAssault01, GetObjectXPosition(Troop.XAssault1), GetObjectZPosition(Troop.XAssault1), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXAssault02, GetObjectXPosition(Troop.XAssault2), GetObjectZPosition(Troop.XAssault2), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXAssault03, GetObjectXPosition(Troop.XAssault3), GetObjectZPosition(Troop.XAssault3), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXAssault04, GetObjectXPosition(Troop.XAssault4), GetObjectZPosition(Troop.XAssault4), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXBazooka01, GetObjectXPosition(Troop.XBazooka1), GetObjectZPosition(Troop.XBazooka1), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXBazooka02, GetObjectXPosition(Troop.XBazooka2), GetObjectZPosition(Troop.XBazooka2), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroXBazooka03, GetObjectXPosition(Troop.XBazooka3), GetObjectZPosition(Troop.XBazooka3), 1, 1, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.IntroXAAVehicle01, GetObjectXPosition(Ground_Vehicle.AntiAir), GetObjectZPosition(Ground_Vehicle.AntiAir), 1, 1, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.IntroXArtillery01, GetObjectXPosition(Ground_Vehicle.XArtillery1), GetObjectZPosition(Ground_Vehicle.XArtillery1), 1, 1, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.IntroXArtillery02, GetObjectXPosition(Ground_Vehicle.XArtillery2), GetObjectZPosition(Ground_Vehicle.XArtillery2), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroTTGrunt01, GetObjectXPosition(Troop.TGrunt1), GetObjectZPosition(Troop.TGrunt1), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroTTGrunt02, GetObjectXPosition(Troop.TGrunt2), GetObjectZPosition(Troop.TGrunt2), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroTTGrunt03, GetObjectXPosition(Troop.TGrunt3), GetObjectZPosition(Troop.TGrunt3), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroTTGrunt04, GetObjectXPosition(Troop.TGrunt4), GetObjectZPosition(Troop.TGrunt4), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroTTGrunt05, GetObjectXPosition(Troop.TGrunt5), GetObjectZPosition(Troop.TGrunt5), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroTTFlamer01, GetObjectXPosition(Troop.TFlamer1), GetObjectZPosition(Troop.TFlamer1), 1, 1, constant.ORDER_FORCED)
  GoToArea(Troop.IntroTTFlamer02, GetObjectXPosition(Troop.TFlamer2), GetObjectZPosition(Troop.TFlamer2), 1, 1, constant.ORDER_FORCED)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutsceneCam1, constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.IntroXShot01Target)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.IntroXShot01Spline)
    CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutsceneCam2, constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.IntroTTShot01Target)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.IntroTTShot01Spline)
    CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  PhoneMessage(15, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
  PhoneMessage(16, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
  WaitFor(1)
  WaitFor(1)
  WaitFor(9)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutsceneCam1, constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.IntroXShot02Target)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.IntroXShot02Spline)
    CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutsceneCam2, constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.IntroTTShot02Target)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.IntroTTShot02Spline)
    CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(30, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(31, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(10)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective_Marker.Bomber1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Bomber2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Bomber3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Bomber4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Powerstation2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Powerstation3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Powerstation4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.IntroXShot03Target)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.IntroXShot03Spline)
    CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.IntroTTShot03Target)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.IntroTTShot03Spline)
    CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(32, constant.ID_NONE, 1, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
  PhoneMessage(33, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
  WaitFor(9)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective_Marker.Powerstation1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.IntroXShot04Target)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.IntroXShot04Spline)
    CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.IntroTTShot04Target)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.IntroTTShot04Spline)
    CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(34, constant.ID_NONE, 1, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
  PhoneMessage(35, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
  WaitFor(11)
  cutscenefinished = 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.skip = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.skip = 1
  end
  EndFrame()
end
