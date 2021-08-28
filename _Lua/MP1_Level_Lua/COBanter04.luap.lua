function COBanter04(owner)
  while solarforcefieldpow == 0 do
    if IsNetworkPlayer(constant.PLAYER_ONE) and missionend == 0 and pow01 == 0 and netvariable.player1.COBanter04 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.POWWarningZone01) then
      PhoneMessage(99, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      DebugOut("*COBanter04* - 1. PLAYER_ONE is near the POW Camp but hasnt destroyed the FORCEFIELD")
    else
      EndFrame()
      EndFrame()
      while missionend == 0 do
        if IsNetworkPlayer(constant.PLAYER_ONE) and solarforcefieldpow > 0 and pow01 == 0 and netvariable.player1.COBanter04 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.POWWarningZone01) then
          netvariable.player1.COBanter04 = 1
          DebugOut("*COBanter04* - 3. PLAYER_ONE is near the POW Camp")
        end
        EndFrame()
        if netvariable.player1.COBanter04 == 1 then
          PhoneMessage(82, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
          PhoneMessage(83, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
          DebugOut("*COBanter04* - 4. Both players have been told that PLAYER_ONE is near the POW Camp")
          break
        end
        EndFrame()
        EndFrame()
      end
    end
  end
end
