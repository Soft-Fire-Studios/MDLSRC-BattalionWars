function Their_Finest_Hour_AI_RespawnFighters(owner)
  KillAIRespawnFighters = owner
  local AIRespawnFightersTime = 0
  local GetReadyToReviveFighter = 0
  repeat
    EndFrame()
  until IntroComplete == 1
  repeat
    if IsDead(Air_Vehicle.AI_Fighter01) and IsReadyToRevive(Air_Vehicle.AI_Fighter01) and GetReadyToReviveFighter == 0 then
      AIRespawnFightersTime = GetTime()
      GetReadyToReviveFighter = 1
    end
    EndFrame()
    if GetReadyToReviveFighter == 1 and GetTime() > AIRespawnFightersTime + 10 and AirTransportCutsceneActive == 0 then
      ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter01, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15)
    end
    EndFrame()
  until GetInstallationOwner(Strategic_Installation.AI_Airbase01) == constant.ARMY_SOLAR or DefenceComplete == 1
end
