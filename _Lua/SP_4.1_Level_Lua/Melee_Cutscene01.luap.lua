function Melee_Cutscene01(owner)
  cutkiller = owner
  PlayEffect(Scripted_Effect.Sepia, 3, 0, 0, 0)
  SetViewDistanceAdjustment(350, 10)
  SetWaterRenderEnable(false)
  SetCamera(Camera.Cutscene01_Shot01)
  PhoneMessage(5, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Cutscene01_Shot05)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(6, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Cutscene01_Shot02)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(7, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Cutscene01_Shot03)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(8, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
  Spawn(Troop.Cutscene01_SE_Mortar01)
  Spawn(Troop.Cutscene01_SE_Mortar02)
  Spawn(Troop.Cutscene01_SE_Mortar03)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Troop.Cutscene01_SE_Mortar01)
  Despawn(Troop.Cutscene01_SE_Mortar02)
  Despawn(Troop.Cutscene01_SE_Mortar03)
  SetCamera(Camera.Cutscene01_Shot04)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(9, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  cutscene = 1
  DebugOut("Cutscene ended naturally")
end
