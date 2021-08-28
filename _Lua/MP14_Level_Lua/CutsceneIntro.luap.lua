function CutsceneIntro(owner)
  cutscene = owner
  scriptCutsceneIntro = owner
  StartIntro()
  PauseTimerActive = 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.Cam1, constant.PLAYER_ONE)
    CameraSetTarget(Camera.Cam1, Waypoint.Cam1TargetPlayer1)
    CameraSetWaypoint(Camera.Cam1, Waypoint.Cam1SplinePlayer1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Cam2, constant.PLAYER_TWO)
    CameraSetTarget(Camera.Cam2, Waypoint.Cam1TargetPlayer2)
    CameraSetWaypoint(Camera.Cam2, Waypoint.Cam1SplinePlayer2)
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessage(0, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
  PhoneMessage(0, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO)
  WaitFor(7)
  FollowWaypoint(Ground_Vehicle.XLightAttack3, Waypoint.ReconPath2, 0, 0)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetTarget(Camera.Cam1, Waypoint.Cam2Target)
    CameraSetWaypoint(Camera.Cam1, Waypoint.Cam2Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetTarget(Camera.Cam2, Waypoint.Cam2Target)
    CameraSetWaypoint(Camera.Cam2, Waypoint.Cam2Spline)
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetFOV(Camera.Cam1, 20, constant.SMOOTH, 2, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetFOV(Camera.Cam2, 20, constant.SMOOTH, 2, constant.NO_WAIT)
  end
  PhoneMessageWithObjective(37, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(37, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(4)
  FollowWaypoint(Troop.XBazookaPatrolFuelRefinery4, Waypoint.Entity0115, 0, 0)
  WaitFor(2)
  FollowWaypoint(Ground_Vehicle.XLightAttack4, Waypoint.ReconPath, 0, 0)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetFOV(Camera.Cam1, 45, constant.IMMEDIATE, 2, constant.NO_WAIT)
    CameraSetTarget(Camera.Cam1, Waypoint.FuelRefinery)
    CameraSetWaypoint(Camera.Cam1, Waypoint.Cam3Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetFOV(Camera.Cam2, 45, constant.IMMEDIATE, 2, constant.NO_WAIT)
    CameraSetTarget(Camera.Cam2, Waypoint.FuelRefinery)
    CameraSetWaypoint(Camera.Cam2, Waypoint.Cam3Spline)
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(36, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(36, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(6)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetTarget(Camera.Cam1, Waypoint.Cam4Target)
    CameraSetWaypoint(Camera.Cam1, Waypoint.Cam4Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetTarget(Camera.Cam2, Waypoint.Cam4Target)
    CameraSetWaypoint(Camera.Cam2, Waypoint.Cam4Spline)
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(38, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(38, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(6)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetTarget(Camera.Cam1, Waypoint.Cam6Target)
    CameraSetWaypoint(Camera.Cam1, Waypoint.Cam6Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetTarget(Camera.Cam2, Waypoint.Cam6Target)
    CameraSetWaypoint(Camera.Cam2, Waypoint.Cam6Spline)
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(1, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  PhoneMessageWithObjective(1, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_TWO, false, constant.NEW_SECONDARY_OBJECTIVE)
  WaitFor(6.5)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.skippedintro = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.skippedintro = 1
  end
  cutscenefinished = 1
end
