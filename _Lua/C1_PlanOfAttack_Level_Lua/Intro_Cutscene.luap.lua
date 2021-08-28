function Intro_Cutscene(owner)
  cutkiller = owner
  CameraSetFOV(Camera.first, 70, constant.IMMEDIATE, 25, constant.NO_WAIT)
  WaitFor(0.5)
  StartIntro()
  WaitFor(0.5)
  PhoneMessage(0, constant.ID_NONE, 0, 0, SpriteID.CO_WF_Austin_Happy)
  WaitFor(7)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.second)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(28, constant.ID_NONE, 0, 0, SpriteID.CO_WF_Austin_Happy)
  PhoneMessage(30, constant.ID_NONE, 0, 0, SpriteID.CO_WF_Austin_Happy)
  WaitFor(7)
  CameraSetFOV(Camera.second, 30, constant.SMOOTH, 3, constant.NO_WAIT)
  WaitFor(10)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.third)
  CameraSetFOV(Camera.third, 15, constant.IMMEDIATE, 6, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(1, constant.ID_NONE, 0, 0, SpriteID.CO_WF_Austin_Happy)
  WaitFor(10)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.flame1)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(2, constant.ID_NONE, 0, 10, SpriteID.CO_WF_Austin_Happy)
  WaitFor(10)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
