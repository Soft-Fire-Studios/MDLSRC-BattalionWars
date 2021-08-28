function ForceRespawnWeakestUnit(owner)
  local revive01 = 0
  local revive02 = 0
  local revive03 = 0
  while missionend == 0 do
    if AllPlayerUnitsDead(constant.PLAYER_ONE) and factory < 2 and airbase == 2 then
      SetInvulnerable(flag.TYPE_TUNDRAN, 1)
      repeat
        if revive01 == 0 and IsReadyToRevive(Air_Vehicle.TundranGunship01) then
          ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TundranGunship01, 11, -135, 40, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Air_Vehicle.TundranGunship02) then
          ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TundranGunship02, 11, -135, 40, 10)
          revive01 = 1
        end
        DebugOut("1. *ForceRespawnWeakestUnit* - Force Revived a Tundran Gunship")
        EndFrame()
      until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
      SetInvulnerable(flag.TYPE_TUNDRAN, 0)
      revive01 = 0
    end
    EndFrame()
    if AllPlayerUnitsDead(constant.PLAYER_ONE) and factory == 2 and 2 > airbase then
      SetInvulnerable(flag.TYPE_TUNDRAN, 1)
      repeat
        if revive02 == 0 and IsReadyToRevive(Ground_Vehicle.TundranArtillery01) then
          ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Ground_Vehicle.TundranArtillery01, 424, -32, 10, 10)
          revive02 = 1
        elseif revive02 == 0 and IsReadyToRevive(Ground_Vehicle.TundranArtillery02) then
          ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Ground_Vehicle.TundranArtillery02, 424, -32, 10, 10)
          revive02 = 1
        end
        DebugOut("2. *ForceRespawnWeakestUnit* - Force Revived a Tundran Artillery vehicle")
        EndFrame()
      until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
      SetInvulnerable(flag.TYPE_TUNDRAN, 0)
      revive02 = 0
    end
    EndFrame()
    if AllPlayerUnitsDead(constant.PLAYER_ONE) and factory == 2 and airbase == 2 then
      SetInvulnerable(flag.TYPE_TUNDRAN, 1)
      repeat
        if revive03 == 0 and IsReadyToRevive(Ground_Vehicle.TundranArtillery01) then
          ReviveDeadUnit(Ground_Vehicle.TundranArtillery01, 424, -32, 10, 10)
          revive03 = 1
        elseif revive03 == 0 and IsReadyToRevive(Ground_Vehicle.TundranArtillery02) then
          ReviveDeadUnit(Ground_Vehicle.TundranArtillery02, 424, -32, 10, 10)
          revive03 = 1
        end
        DebugOut("3. *ForceRespawnWeakestUnit* - Force Revived a Tundran Artillery vehicle")
        EndFrame()
      until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
      SetInvulnerable(flag.TYPE_TUNDRAN, 0)
      revive03 = 0
    end
    EndFrame()
  end
end
