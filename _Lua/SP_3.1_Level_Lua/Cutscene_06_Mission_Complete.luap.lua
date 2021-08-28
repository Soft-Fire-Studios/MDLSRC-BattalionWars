function Cutscene_06_Mission_Complete(owner)
  repeat
    EndFrame()
  until wincutscene == 1
  cutkiller = owner
  SetInvulnerable(flag.TYPE_ANGLO, true)
  SetCamera(Camera.End_Camera)
  CameraSetFOV(Camera.End_Camera, 75, constant.IMMEDIATE, 25, constant.NO_WAIT)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  DebugOut("Outro has begun")
  WaitFor(1)
  cutscene = 0
  PhoneMessage(98, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
  WaitFor(1)
  SetHealthPercent(Building.Outro_Sea_Fort, 0)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
