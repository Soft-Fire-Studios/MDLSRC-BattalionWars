function Mid_Level_Cutscene(owner)
  script07 = owner
  repeat
    EndFrame()
  until mid == 1.1
  DebugOut("SE Attack on Docks Complete, start mid level cutscene")
  cutkiller = owner
  ClearMessageQueue()
  SetCamera(Camera.Mid_Camera_1)
  CameraSetFOV(Camera.Mid_Camera_1, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ClearMessageQueue()
  WaitFor(1)
  PhoneMessage(58, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Ground_Vehicle.HQ_Heavy_Tank_5)
  Spawn(Troop.KillMe1)
  Spawn(Troop.KillMe5)
  Spawn(Troop.KillMe6)
  SetCamera(Camera.Mid_Camera_2)
  CameraSetFOV(Camera.Mid_Camera_2, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(59, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
