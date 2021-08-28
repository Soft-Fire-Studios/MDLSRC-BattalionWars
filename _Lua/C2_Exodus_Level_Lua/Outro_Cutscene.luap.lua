function Outro_Cutscene(owner)
  while outro == 0 do
    EndFrame()
  end
  cutkiller = owner
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  FollowWaypoint(Ground_Vehicle.xtank2, Waypoint.palace, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Ground_Vehicle.xtank1, Waypoint.palace, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.palace, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.palace, 0, 0, constant.ORDER_FORCED)
  SetCamera(Camera.outro)
  StartOutro()
  CameraSetFOV(Camera.outro, 65, constant.IMMEDIATE, 1, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(68, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  WaitFor(7)
  PhoneMessage(84, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad)
  WaitFor(10)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 2
end
