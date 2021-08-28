function COBanter06(owner)
  while missionend == 0 do
    if solarforcefieldpow == 1 and 0 < NumItemsInArea(Map_Zone.FuelStationWarningZone01, flag.TYPE_UNDERWORLD) then
      DebugOut("*COBanter06* - 1. PLAYER_ONE is near the Solar FUEL STATIONS")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(74, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
        DebugOut("*COBanter06* - 2. PLAYER_ONE has been told that they are near the Solar FUEL STATIONS")
      end
      EndFrame()
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(75, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
        DebugOut("*COBanter06* - 3. PLAYER_TWO has been told that PLAYER_ONE is near the Solar FUEL STATIONS")
      end
      EndFrame()
      break
    end
    EndFrame()
  end
end
