function COBanter03(owner)
  repeat
    EndFrame()
  until cutscenefinished01 == 2
  while missionend == 0 do
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.COBanter03 == 0 and 0 < NumItemsInArea(Map_Zone.HQWarningZone01, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_UNDERWORLD), 1) then
      netvariable.player1.COBanter03 = 1
      DebugOut("*COBanter03* - 1. PLAYER_ONE is near the Solar HQ")
    end
    EndFrame()
    if netvariable.player1.COBanter03 == 1 then
      PhoneMessage(72, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      PhoneMessage(73, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.COBanter03 = 2
      end
      DebugOut("*COBanter03* - 2. Both players have been told that PLAYER_ONE is near the Solar HQ")
    else
      EndFrame()
      while missionend == 0 do
        if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.COBanter03 == 2 and NumItemsInArea(Map_Zone.HQWarningZone01, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_UNDERWORLD), 1) < 1 then
          netvariable.player1.COBanter03 = 0
          DebugOut("*COBanter03* - 3. As there are no Legion near the HQ, the variable has been reset")
        end
        EndFrame()
        if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.COBanter03 == 0 and 0 < NumItemsInArea(Map_Zone.HQWarningZone01, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_UNDERWORLD), 1) then
          netvariable.player1.COBanter03 = 1
          DebugOut("*COBanter03* - 4. There are still Legion infantry near the HQ")
        end
        EndFrame()
        if netvariable.player1.COBanter03 == 1 then
          PhoneMessage(94, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
          PhoneMessage(95, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
          DebugOut("*COBanter03* - 5. The players have been told that the Legion are still near the Solar HQ")
          break
        end
        EndFrame()
      end
    end
  end
end
