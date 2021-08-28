function CUTSCENE_OUTRO_LOSE(owner)
  outrocutscenelose = owner
  repeat
    EndFrame()
  until StatueDead == true
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  StartOutro()
  SetCamera(Camera.cutscenecam)
  CameraSetTarget(Camera.cutscenecam, Waypoint.losecutscenetarget)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.losecutscene)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SetUnitInvulnerable(Building.Statue, false)
  PhoneMessage(107, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  WaitFor(11)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  OutroCutsceneEndedLose = true
end
