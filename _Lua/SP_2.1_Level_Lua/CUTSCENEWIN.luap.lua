function CUTSCENEWIN(owner)
  cutscenewin = owner
  repeat
    EndFrame()
  until FactoryCutsceneOn == false and BarracksCutsceneOn == false and WFwin == true
  StartOutro()
  ClearMessageQueue()
  SetCamera(Camera.cutscenecam)
  CameraSetFOV(Camera.cutscenecam, 85, constant.IMMEDIATE, constant.WAIT)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.WinCutscene)
  CameraSetTarget(Camera.cutscenecam, Waypoint.WinCutscenetarget)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(64, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  PhoneMessage(66, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
  WaitFor(3)
  ReviveDeadUnit(Air_Vehicle.WFcutscenegunship1, GetObjectXPosition(Waypoint.WFcutscenegunship1), GetObjectZPosition(Waypoint.WFcutscenegunship1), 180, 5)
  WaitFor(3)
  ReviveDeadUnit(Air_Vehicle.WFcutscenegunship2, GetObjectXPosition(Waypoint.WFcutscenegunship2), GetObjectZPosition(Waypoint.WFcutscenegunship2), 180, 5)
  WaitFor(8)
  ReviveDeadUnit(Air_Vehicle.WFcutscenegunship3, GetObjectXPosition(Waypoint.WFcutscenegunship3), GetObjectZPosition(Waypoint.WFcutscenegunship3), 180, 5)
  WaitFor(8)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  WinCutsceneEnded = true
end
