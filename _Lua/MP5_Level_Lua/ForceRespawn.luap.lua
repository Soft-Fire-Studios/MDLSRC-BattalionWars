function ForceRespawn(owner)
  local p1armyinvulnerable = flag.TYPE_SOLAR
  local p2armyinvulnerable = flag.TYPE_ANGLO
  local p1deadunit01 = Air_Vehicle.SolarGunship01
  local p1deadunit02 = Air_Vehicle.SolarGunship02
  local p2deadunit01 = Water_Vehicle.AngloSubmarine01
  local p2deadunit02 = Water_Vehicle.AngloSubmarine02
  local p2deadunit03 = Water_Vehicle.AngloSubmarine03
  while missionend == 0 do
    if SeaFortDead == 1 then
      break
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) then
      WaitFor(3)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) then
        SetInvulnerable(p1armyinvulnerable, 1)
        repeat
          if IsReadyToRevive(p1deadunit01) then
            ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, p1deadunit01, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 300, 10)
            DebugOut("*ForceRespawn* - P1 - Force Revived Solar Gunship 01")
          elseif IsReadyToRevive(p1deadunit02) then
            ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, p1deadunit02, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 300, 10)
            DebugOut("*ForceRespawn* - P1 - Force Revived Solar Gunship 02")
          end
          EndFrame()
        until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
        SetInvulnerable(p1armyinvulnerable, 0)
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
      WaitFor(3)
      if AllPlayerUnitsDead(constant.PLAYER_TWO) then
        SetInvulnerable(p2armyinvulnerable, 1)
        repeat
          if IsReadyToRevive(p2deadunit01) then
            ReviveDeadUnit(p2deadunit01, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 120, 10)
            DebugOut("*ForceRespawn* - P2 - Force Revived Anglo Submarine 01")
          elseif IsReadyToRevive(p2deadunit02) then
            ReviveDeadUnit(p2deadunit02, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 120, 10)
            DebugOut("*ForceRespawn* - P2 - Force Revived Anglo Submarine 02")
          elseif IsReadyToRevive(p2deadunit03) then
            ReviveDeadUnit(p2deadunit03, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 120, 10)
            DebugOut("*ForceRespawn* - P2 - Force Revived Anglo Submarine 03")
          end
          EndFrame()
        until AllPlayerUnitsDead(constant.PLAYER_TWO) == false
        SetInvulnerable(p2armyinvulnerable, 0)
      end
    end
    EndFrame()
  end
end
