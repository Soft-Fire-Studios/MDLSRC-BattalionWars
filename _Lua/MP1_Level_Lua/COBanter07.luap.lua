function COBanter07(owner)
  while missionend == 0 do
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.battlestationCO == 1 and IsNetworkPlayer(constant.PLAYER_ONE) then
      netvariable.player1.battlestationCO = 2
    end
    WaitFor(0.5)
    if netvariable.player1.battlestationCO == 2 then
      PhoneMessage(54, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      PhoneMessage(55, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.battlestationCO = 0
      end
    end
    EndFrame()
  end
end
