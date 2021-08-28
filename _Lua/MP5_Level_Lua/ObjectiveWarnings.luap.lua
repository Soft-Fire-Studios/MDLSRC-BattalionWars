function ObjectiveWarnings(owner)
  local warningtimerplayer1 = 0
  local warningtimerplayer2 = 0
  repeat
    EndFrame()
  until Cutscene01End == 2
  while missionend == 0 do
    while (not IsDead(Building.SeaFort01) or not IsDead(Building.SeaFort02)) and missionend ~= 1 do
      if IsNetworkPlayer(constant.PLAYER_ONE) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Objective01WarningZone) == false and GetTime() >= warningtimerplayer1 + 10 then
        PhoneMessage(49, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
        warningtimerplayer1 = GetTime()
      end
      EndFrame()
      if IsNetworkPlayer(constant.PLAYER_TWO) and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.Objective01WarningZone) == false and GetTime() >= warningtimerplayer2 + 10 then
        PhoneMessage(48, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
        warningtimerplayer2 = GetTime()
      end
      WaitFor(0.5)
    end
    repeat
      EndFrame()
    until SeaFortDead == 1
    repeat
      if IsNetworkPlayer(constant.PLAYER_ONE) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Objective02WarningZone) and GetTime() >= warningtimerplayer1 + 10 then
        PhoneMessage(49, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
        warningtimerplayer1 = GetTime()
      end
      EndFrame()
      if IsNetworkPlayer(constant.PLAYER_TWO) and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.Objective02WarningZone) and GetTime() >= warningtimerplayer2 + 10 then
        PhoneMessage(48, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
        warningtimerplayer2 = GetTime()
      end
      WaitFor(0.5)
    until IsDead(Building.Generator) or missionend == 1
    repeat
      EndFrame()
    until missionend == 1
    EndFrame()
  end
end
