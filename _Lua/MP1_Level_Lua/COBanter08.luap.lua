function COBanter08(owner)
  local warningtimerplayer1 = 0
  local warningtimerplayer2 = 0
  while missionend == 0 do
    while (not IsDead(Building.SolarForcefield01) or not IsDead(Building.SolarForcefield02)) and missionend ~= 1 do
      if IsNetworkPlayer(constant.PLAYER_ONE) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Objective01WarningZone) and GetTime() > warningtimerplayer1 + 10 then
        PhoneMessage(5, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
        warningtimerplayer1 = GetTime()
      end
      EndFrame()
      if IsNetworkPlayer(constant.PLAYER_TWO) and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.Objective01WarningZone) and GetTime() > warningtimerplayer2 + 10 then
        PhoneMessage(6, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
        warningtimerplayer2 = GetTime()
      end
      EndFrame()
    end
    repeat
      if IsNetworkPlayer(constant.PLAYER_ONE) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Objective02WarningZone) and GetTime() > warningtimerplayer1 + 10 then
        PhoneMessage(5, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
        warningtimerplayer1 = GetTime()
      end
      EndFrame()
      if IsNetworkPlayer(constant.PLAYER_TWO) and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.Objective02WarningZone) and GetTime() > warningtimerplayer2 + 10 then
        PhoneMessage(6, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
        warningtimerplayer2 = GetTime()
      end
      EndFrame()
    until IsDead(Building.BigFuelStation01) and IsDead(Building.BigFuelStation02) and IsDead(Building.BigFuelStation03) or missionend == 1
    repeat
      EndFrame()
    until missionend == 1
    EndFrame()
  end
end
