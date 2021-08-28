function CUTSCENEMID1(owner)
  cutscenemid1 = owner
  repeat
    EndFrame()
  until DefenceMissionFinished == true
  PauseTimerActive = 1
  StartIntro()
  FreezePlayer(constant.PLAYER_ONE)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.cutscenecam)
  CameraSetFOV(Camera.cutscenecam, 65, constant.IMMEDIATE, constant.WAIT)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.midcutscene1)
  CameraSetTarget(Camera.cutscenecam, Waypoint.midcutscene1target)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(30, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  WaitFor(8)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  MidCutscene1Ended = true
end
