function Cutscene_01_Intro(owner)
  cutkiller = owner
  CameraSetFOV(Camera.Intro_Camera_1, 60, constant.IMMEDIATE, 25, constant.NO_WAIT)
  WaitFor(1)
  PhoneMessage(1, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Intro_Camera_2)
  CameraSetFOV(Camera.Intro_Camera_2, 70, constant.IMMEDIATE, 25, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessageWithObjective(2, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  shot = 1
  SetCamera(Camera.Intro_Camera_3)
  CameraSetFOV(Camera.Intro_Camera_3, 60, constant.IMMEDIATE, 25, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1.5)
  PhoneMessageWithObjective(3, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
  WaitFor(1)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
