function C1M1_Cutscene(owner)
  cutsceneStart = owner
  DebugOut("Cutscene Start ID", cutsceneStart)
  FreezePlayer()
  StartIntro()
  PhoneMessage(110, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(0, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(1, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
  SetCamera(Camera.Cutscene0001)
  CameraSetWaypoint(Camera.Cutscene0001, Waypoint.Entity0218)
  CameraSetTarget(Camera.Cutscene0001, Troop.WFgruntStart)
  FollowWaypoint(Troop.Entity0045, Waypoint.Entity0010, 5, 5, constant.ORDER_FORCED)
  FollowWaypoint(Troop.Entity0054, Waypoint.Entity0010, 5, 5, constant.ORDER_FORCED)
  FollowWaypoint(Troop.Entity0044, Waypoint.Entity0009, 5, 5, constant.ORDER_FORCED)
  FollowWaypoint(Troop.Entity0053, Waypoint.Entity0009, 5, 5, constant.ORDER_FORCED)
  FollowWaypoint(Ground_Vehicle.Entity0001, Waypoint.Entity0134, 5, 5, constant.ORDER_FORCED)
  FollowWaypoint(Air_Vehicle.Entity0008, Waypoint.Entity0329, 5, 5, constant.ORDER_FORCED)
  CameraSetFOV(Camera.Cutscene0001, 25, constant.SMOOTH, 3, constant.NO_WAIT)
  WaitFor(20)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Player0001)
  cutsceneStart = 1
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer()
  StartScoringTimer()
  C1M1_Global_Variable = 1
  DebugOut("C1M1 Global Variable = ", C1M1_Global_Variable)
  EndFrame()
  return
end
