function CutScene(owner)
  cutscene = owner
  StartIntro()
  SetCamera(Camera.Cam1)
  CameraSetTarget(Camera.Cam1, Waypoint.Cam1Target1)
  CameraSetWaypoint(Camera.Cam1, Waypoint.Cam1Spline)
  PhoneMessage(0, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  WaitFor(7)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetTarget(Camera.Cam1, Waypoint.Cam2Target)
  CameraSetWaypoint(Camera.Cam1, Waypoint.Cam2Spline)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  CameraSetFOV(Camera.Cam1, 20, constant.SMOOTH, 2, constant.NO_WAIT)
  PhoneMessage(37, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  WaitFor(4)
  FollowWaypoint(Troop.XBazookaPatrolFuelRefinery4, Waypoint.Entity0115, 0, 0)
  WaitFor(2)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetFOV(Camera.Cam1, 45, constant.IMMEDIATE, 2, constant.NO_WAIT)
  CameraSetTarget(Camera.Cam1, Capture_Point.FuelRefinery)
  CameraSetWaypoint(Camera.Cam1, Waypoint.Cam3Spline)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(36, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  WaitFor(6)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetTarget(Camera.Cam1, Waypoint.Cam4Target)
  CameraSetWaypoint(Camera.Cam1, Waypoint.Cam4Spline)
  FollowWaypoint(Troop.XFlamer4, Waypoint.Entity0109, 0, 0)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(38, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  WaitFor(6)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetWaypoint(Camera.Cam1, Waypoint.Cam5Spline)
  CameraSetTarget(Camera.Cam1, Waypoint.Cam5Target)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(1, 0, 0, 9, SpriteID.CO_WF_Herman_Happy)
  WaitFor(4.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 0.3)
  CameraSetTarget(Camera.Cam1, Waypoint.Cam2Target)
  CameraSetWaypoint(Camera.Cam1, Waypoint.Cam6Spline)
  CameraFade(constant.FADE_IN, constant.WAIT, 0.3)
  WaitFor(4.5)
  cutscene = 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndFrame()
end
