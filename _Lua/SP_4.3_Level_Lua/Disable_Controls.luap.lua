function Disable_Controls(owner)
  repeat
    EndFrame()
  until DisableControls == 1
  repeat
    EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PAUSE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_CALL, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_SEND, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_DISMISS, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_FIRE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_JUMP, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE_ALT, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PREV_UNIT_TYPE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_NEXT_UNIT, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PREV_UNIT, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_LOCAL_CALL, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_ROLL, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
    SetHudState(constant.PLAYER_ONE, constant.HUD_FUNCTIONINDICATOR, constant.HUD_ITEM_OFF)
    EndFrame()
  until OutroCutsceneEnd == 1
end
