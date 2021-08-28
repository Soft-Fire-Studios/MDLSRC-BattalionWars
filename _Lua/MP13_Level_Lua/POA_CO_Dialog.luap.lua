function POA_CO_Dialog(owner)
  local GunshipWarning_done = 0
  local Bridge_SW_done = 0
  local AntiAir_POW_camp_done = 0
  local Base_done = 0
  while true do
    if (0 < NumItemsInArea(Map_Zone.GunshipWarning, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.GunshipWarning, flag.TYPE_TUNDRAN)) and GunshipWarning_done == 0 and AntiAirFreed == 0 then
      GunshipWarning_done = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.p1dead == 0 then
        PhoneMessage(33, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE)
        PhoneMessage(34, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player2.p2dead == 0 then
        PhoneMessage(35, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO)
        PhoneMessage(36, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO)
      end
    end
    if (0 < NumItemsInArea(Map_Zone.BridgeSW, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.BridgeSW, flag.TYPE_TUNDRAN)) and Bridge_SW_done == 0 and AntiAirFreed == 0 then
      Bridge_SW_done = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.p1dead == 0 then
        PhoneMessage(37, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player2.p2dead == 0 then
        PhoneMessage(40, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO)
      end
    end
    if (0 < NumItemsInArea(Map_Zone.POWCampWHelp, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.POWCampWHelp, flag.TYPE_TUNDRAN)) and AntiAir_POW_camp_done == 0 and AntiAirFreed == 0 then
      AntiAir_POW_camp_done = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.p1dead == 0 then
        PhoneMessage(38, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy, 0)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player2.p2dead == 0 then
        PhoneMessage(41, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Happy, 1)
      end
    end
    if (0 < NumItemsInArea(Map_Zone.Base, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.Base, flag.TYPE_TUNDRAN)) and Base_done == 0 then
      Base_done = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.p1dead == 0 then
        PhoneMessage(39, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy, 0)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player2.p2dead == 0 then
        PhoneMessage(42, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Happy, 1)
      end
    end
    EndFrame()
  end
end
