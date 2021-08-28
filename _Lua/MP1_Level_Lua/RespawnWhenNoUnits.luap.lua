function RespawnWhenNoUnits(owner)
  while missionend == 0 do
    if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) then
      SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
      repeat
        if IsReadyToRevive(Troop.LegionGrunt01) then
          ReviveDeadUnit(Troop.LegionGrunt01, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, CurrentPlayer1Dir, 10)
        elseif IsReadyToRevive(Troop.LegionGrunt02) then
          ReviveDeadUnit(Troop.LegionGrunt02, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, CurrentPlayer1Dir, 10)
        elseif IsReadyToRevive(Troop.LegionGrunt03) then
          ReviveDeadUnit(Troop.LegionGrunt03, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, CurrentPlayer1Dir, 10)
        elseif IsReadyToRevive(Troop.LegionGrunt04) then
          ReviveDeadUnit(Troop.LegionGrunt04, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, CurrentPlayer1Dir, 10)
        elseif IsReadyToRevive(Troop.LegionGrunt05) then
          ReviveDeadUnit(Troop.LegionGrunt05, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, CurrentPlayer1Dir, 10)
        end
        DebugOut("*RespawnWhenNoUnits* - P1 - Force Revived a Legion Grunt ")
        EndFrame()
      until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
      SetInvulnerable(flag.TYPE_UNDERWORLD, 0)
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
      SetInvulnerable(flag.TYPE_SOLAR, 1)
      repeat
        if IsReadyToRevive(Troop.SolarGrunt01) then
          ReviveDeadUnit(Troop.SolarGrunt01, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Dir, 10)
        elseif IsReadyToRevive(Troop.SolarGrunt02) then
          ReviveDeadUnit(Troop.SolarGrunt02, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Dir, 10)
        elseif IsReadyToRevive(Troop.SolarGrunt03) then
          ReviveDeadUnit(Troop.SolarGrunt03, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Dir, 10)
        elseif IsReadyToRevive(Troop.SolarGrunt04) then
          ReviveDeadUnit(Troop.SolarGrunt04, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Dir, 10)
        elseif IsReadyToRevive(Troop.SolarGrunt05) then
          ReviveDeadUnit(Troop.SolarGrunt05, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Dir, 10)
        end
        DebugOut("*RespawnWhenNoUnits* - P2 - Force Revived a Solar Grunt ")
        EndFrame()
      until AllPlayerUnitsDead(constant.PLAYER_TWO) == false
      SetInvulnerable(flag.TYPE_SOLAR, 0)
    end
    EndFrame()
  end
end
