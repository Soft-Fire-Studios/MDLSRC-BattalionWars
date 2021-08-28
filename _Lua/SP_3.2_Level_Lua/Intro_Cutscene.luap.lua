function Intro_Cutscene(owner)
  cutkiller = owner
  shot = 1
  CameraSetWaypoint(Camera.Intro_Camera_1, Waypoint.IntroShot1Spline)
  CameraSetTarget(Camera.Intro_Camera_1, Waypoint.IntroShot1Target)
  CameraSetFOV(Camera.Intro_Camera_1, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  WaitFor(1)
  PhoneMessage(1, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  WaitFor(4)
  WaitFor(5)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Troop.MrShooty)
  shot = 2
  SetUnitInvulnerable(Air_Vehicle.CS_Gunship_3, true)
  SetCamera(Camera.Intro_Camera_2)
  CameraSetFOV(Camera.Intro_Camera_2, 25, constant.IMMEDIATE, 35, constant.NO_WAIT)
  CameraSetWaypoint(Camera.Intro_Camera_2, Waypoint.IntroShot2Spline)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  CameraSetFOV(Camera.Intro_Camera_2, 70, constant.SMOOTH, 25, constant.NO_WAIT)
  WaitFor(1)
  PhoneMessage(2, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  shot = 3
  SetCamera(Camera.Intro_Camera_3)
  CameraSetFOV(Camera.Intro_Camera_3, 70, constant.IMMEDIATE, 25, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessageWithObjective(3, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(1)
  WaitFor(9)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
