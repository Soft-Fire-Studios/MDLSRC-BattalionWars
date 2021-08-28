function Cutscene_Mid_Beach_Tank(owner)
  CutsceneBeachTank = owner
  repeat
    EndFrame()
  until CutsceneBeachTankStart == 1
  ClearMessageQueue()
  FreezePlayer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  PauseTimerActive = 1
  SetCamera(Camera.cutscenecam)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.CutsceneBeachTank)
  CameraSetTarget(Camera.cutscenecam, Ground_Vehicle.AItank1)
  CameraSetFOV(Camera.cutscenecam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraSetFOV(Camera.cutscenecam, 0, constant.SMOOTH, 2, constant.NO_WAIT)
  ClearMessageQueue()
  PhoneMessage(95, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(2.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CutsceneBeachTankEnd = 1
end
