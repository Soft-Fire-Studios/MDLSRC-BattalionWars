function Gambit_Part_1_Controls_Disabled(owner)
  while true do
    EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_MAP_TRANSFER, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE_ALT, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PREV_UNIT_TYPE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_NEXT_UNIT, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PREV_UNIT, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
    EndFrame()
  end
end
