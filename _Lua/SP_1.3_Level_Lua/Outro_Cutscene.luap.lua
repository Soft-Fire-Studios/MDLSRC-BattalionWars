function Outro_Cutscene(owner)
  repeat
    EndFrame()
  until outro == 1
  cutkiller = owner
  SetCamera(Camera.Outro_Camera)
  CameraSetFOV(Camera.Outro_Camera, 60, constant.IMMEDIATE, 25, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  ClearMessageQueue()
  PhoneMessage(40, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  PhoneMessage(39, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  cutscene = 0
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
