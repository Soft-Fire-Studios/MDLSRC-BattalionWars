function JW_Cutscene04(owner)
  KillCutscene04 = owner
  repeat
    EndFrame()
  until ReadyForCutscene04 == 1
  DebugOut("Cutscene 4 beginning")
  Spawn(Air_Vehicle.AI_AirTransport02)
  Spawn(Air_Vehicle.AI_AirTransport03)
  SetCamera(Camera.CutsceneCamera04)
  CameraSetFOV(Camera.CutsceneCamera04, 70, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Cutscene04Begins = 1
  WaitFor(1)
  PhoneMessage(48, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  Cutscene04Finished = 1
end
