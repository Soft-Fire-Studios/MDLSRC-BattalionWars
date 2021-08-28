function JW_Disable_Control_Transfer(owner)
  script03 = owner
  local text = 0
  local debugout = 0
  repeat
    EndFrame()
  until Cutscene01Finished == 1
  WaitFor(2)
  repeat
    if transferready == 0 then
      EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_ONE)
      EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
      EnableControllerItem(constant.CONTROL_MAP_TRANSFER, 0, constant.PLAYER_ONE)
      EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
    elseif transferready == 1 then
      EnableControllerItem(constant.CONTROL_TRANSFER, 1, constant.PLAYER_ONE)
      EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
      EnableControllerItem(constant.CONTROL_MAP_TRANSFER, 0, constant.PLAYER_ONE)
      EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
      if debugout == 0 then
        DebugOut("Player now free to transfer")
        debugout = 1
      end
    end
    if text == 0 and (GetPlayerTransferred(constant.TRANSFER_BYDEATH, constant.PLAYER_ONE) or IsDead(GetPlayerUnit(constant.PLAYER_ONE))) and 0 < CountRemainingPlayerTroops(constant.PLAYER_ONE) then
      PhoneMessage(151, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      DebugOut("Player has died and transfered, explain it")
      text = 1
    end
    EndFrame()
  until missionend == 1
end
