function Village_Warning(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
    until NumItemsInArea(Map_Zone.Village, flag.TYPE_ANGLO) > 1 and NumItemsInArea(Map_Zone.Village, flag.TYPE_SOLAR) > 3
    DebugOut("PLAYER 1 IN VILLAGE")
    PhoneMessage(88, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  else
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      repeat
        EndFrame()
      until NumItemsInArea(Map_Zone.Village, flag.TYPE_ANGLO) > 1 and 3 < NumItemsInArea(Map_Zone.Village, flag.TYPE_TUNDRAN)
      DebugOut("PLAYER 2 IN VILLAGE")
      PhoneMessage(89, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
    else
    end
  end
end
