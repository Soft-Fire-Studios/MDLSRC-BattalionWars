function Their_Finest_Hour_AI_RespawnBombers(owner)
  KillAIRespawnBombers = owner
  local AIRespawnBombersTime = 0
  local GetReadyToReviveBomber = 0
  repeat
    EndFrame()
  until IntroComplete == 1
  repeat
    if IsDead(Air_Vehicle.AI_Bomber01) and IsReadyToRevive(Air_Vehicle.AI_Bomber01) and GetReadyToReviveBomber == 0 then
      AIRespawnBombersTime = GetTime()
      GetReadyToReviveBomber = 1
    end
    EndFrame()
    if GetReadyToReviveBomber == 1 and GetTime() > AIRespawnBombersTime + 10 and AirTransportCutsceneActive == 0 then
      ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Bomber01, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15)
    end
    EndFrame()
  until GetInstallationOwner(Strategic_Installation.AI_Airbase01) == constant.ARMY_SOLAR or DefenceComplete == 1
end
