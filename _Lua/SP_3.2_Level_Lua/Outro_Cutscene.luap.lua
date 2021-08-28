function Outro_Cutscene(owner)
  repeat
    EndFrame()
  until hqcap == 1
  DebugOut("hqcap == 1, begin cutscene")
  cutkiller = owner
  SetCamera(Camera.End_Camera)
  Teleport(Ground_Vehicle.AI_Light_Tank_1, -455, 1325, 180, 2)
  Teleport(Ground_Vehicle.AI_Light_Tank_2, -485, 1320, 270, 2)
  EndFrame()
  DeclareVictory(constant.ARMY_ANGLO)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  cutscene = 0
  PhoneMessage(88, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  cutscene = 1
end
