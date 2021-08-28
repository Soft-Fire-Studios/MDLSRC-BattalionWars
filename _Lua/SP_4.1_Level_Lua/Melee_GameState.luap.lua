function Melee_GameState(owner)
  local HealthWarning50 = 0
  local HealthWarning10 = 0
  local CampAntiAirWarningWest = 0
  local CampAntiAirWarningEast = 0
  local BattlestationDefenceWarning = 0
  repeat
    if GetHealthPercent(Building.IL_Battlestation01) < 50 and HealthWarning50 == 0 then
      ClearMessageQueue()
      PhoneMessage(46, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      HealthWarning50 = 1
    end
    EndFrame()
    if GetHealthPercent(Building.IL_Battlestation01) < 25 and HealthWarning10 == 0 then
      ClearMessageQueue()
      PhoneMessage(47, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      HealthWarning10 = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WestCamp01Warning) and CampAntiAirWarningWest == 0 and (IsDead(Building.SE_WestCamp_AATower01) == false or IsDead(Building.SE_WestCamp_AATower02) == false) then
      PhoneMessage(30, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      CampAntiAirWarningWest = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.EastCamp01Warning) and CampAntiAirWarningEast == 0 and (IsDead(Building.SE_EastCamp_AATower01) == false or IsDead(Building.SE_EastCamp_AATower02) == false) then
      PhoneMessage(29, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      CampAntiAirWarningEast = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.IL_Battlestation_Perimeter) == false and BattlestationDefenceComplete == 0 and BattlestationDefenceWarning == 0 then
      PhoneMessage(69, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      BattlestationDefenceWarning = 1
    end
    EndFrame()
    if IsDead(Ground_Vehicle.IL_Battlestation01) then
      FreezePlayer(constant.PLAYER_ONE)
      DebugOut("Mission Failed, no Battlestations")
      MissionFailed = 1
      Kill(cutkiller)
      Kill(Cutscene02Dead)
      Kill(Cutscene03Dead)
      Kill(Cutscene04Dead)
      SetInvulnerable(flag.TYPE_SOLAR, 1)
      SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
      ClearMessageQueue()
      PhoneMessage(91, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_SOLAR)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      DeclareVictory(constant.ARMY_SOLAR)
      FreezePlayer(constant.PLAYER_ONE)
      LoseMission(171)
    end
    EndFrame()
    if AllPlayerUnitsDead(constant.PLAYER_ONE) then
      FreezePlayer(constant.PLAYER_ONE)
      DebugOut("Mission Failed, player has lost all of their units")
      MissionFailed = 1
      Kill(cutkiller)
      Kill(Cutscene02Dead)
      Kill(Cutscene03Dead)
      Kill(Cutscene04Dead)
      SetInvulnerable(flag.TYPE_SOLAR, 1)
      SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
      ClearMessageQueue()
      PhoneMessage(68, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_SOLAR)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(131)
    end
    EndFrame()
  until MissionComplete == 1 or MissionFailed == 1
end
