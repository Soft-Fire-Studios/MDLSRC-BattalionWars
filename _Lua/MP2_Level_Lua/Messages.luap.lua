function Messages(owner)
  scriptMessages = owner
  repeat
    EndFrame()
  until CutsceneHasEnded == 1
  WaitFor(5)
  repeat
    EndFrame()
  until GetTimeLeft() < 301
  PhoneMessage(57, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
  PhoneMessage(51, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
  repeat
    EndFrame()
  until GetTimeLeft() < 181
  PhoneMessage(58, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
  PhoneMessage(52, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
  repeat
    EndFrame()
  until GetTimeLeft() < 121
  PhoneMessage(59, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
  PhoneMessage(53, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
  repeat
    EndFrame()
  until GetTimeLeft() < 61
  PhoneMessage(60, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
  PhoneMessage(54, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
  repeat
    EndFrame()
  until GetTimeLeft() < 31
  PhoneMessage(61, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
  PhoneMessage(55, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
end
