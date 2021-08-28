function CutsceneOuttro(owner)
  cutsceneouttro = owner
  repeat
    EndFrame()
  until roadtox == 1
  StartOutro()
  DeclareVictory(constant.ARMY_WF)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Cam1)
  CameraSetFOV(Camera.Cam1, 20, constant.IMMEDIATE, constant.NO_WAIT)
  CameraSetTarget(Camera.Cam1, Waypoint.CamOuttroTarget1)
  CameraSetWaypoint(Camera.Cam1, Waypoint.CamOuttroSpline1)
  CameraFade(constant.FADE_IN, constant.WAIT, 0.2)
  PhoneMessage(52, 0, 1, 10, SpriteID.CO_X_Vlad_Happy)
  PhoneMessage(53, 0, 1, 7, SpriteID.CO_X_Vlad_Sad)
  WaitFor(21)
  CameraFade(constant.FADE_OUT, constant.WAIT, 0.2)
  CameraSetTarget(Camera.Cam1, Waypoint.CamOuttroTarget2)
  CameraSetWaypoint(Camera.Cam1, Waypoint.CamOuttroSpline2)
  CameraFade(constant.FADE_IN, constant.WAIT, 0.2)
  PhoneMessage(54, 0, 1, 8, SpriteID.CO_X_Vlad_Sad)
  WaitFor(7)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  endlevel = 1
  EndFrame()
end
