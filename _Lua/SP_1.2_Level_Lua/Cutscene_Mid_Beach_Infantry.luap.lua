function Cutscene_Mid_Beach_Infantry(owner)
  CutsceneBeachInfantry = owner
  repeat
    EndFrame()
  until CutsceneBeachInfantryStart == 1
  ClearMessageQueue()
  FreezePlayer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  PauseTimerActive = 1
  SetCamera(Camera.cutscenecam)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.CutsceneBeachInfantry)
  CameraSetTarget(Camera.cutscenecam, Waypoint.CutsceneBeachInfantryTarget)
  CameraSetFOV(Camera.cutscenecam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraSetFOV(Camera.cutscenecam, 0, constant.SMOOTH, 2, constant.NO_WAIT)
  ClearMessageQueue()
  PhoneMessage(67, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(2.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CutsceneBeachInfantryEnd = 1
end
