function MP3_Force_Respawn(owner)
  local p1armyinvulnerable = flag.TYPE_WFRONTIER
  local p2armyinvulnerable = flag.TYPE_TUNDRAN
  local p1deadunit01 = Air_Vehicle.WFfighter1
  local p1deadunit02 = Air_Vehicle.WFfighter2
  local p2deadunit01 = Air_Vehicle.TTfighter1
  local p2deadunit02 = Air_Vehicle.TTfighter2
  while CutsceneMid == 0 do
    if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) then
      WaitFor(3)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) then
        SetInvulnerable(p1armyinvulnerable, 1)
        if IsReadyToRevive(p1deadunit01) then
          ReviveFullUnitCarrier(p1armyinvulnerable, flag.GTYPE_GRUNT, p1deadunit01, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 180, 10)
        elseif IsReadyToRevive(p1deadunit02) then
          ReviveFullUnitCarrier(p1armyinvulnerable, flag.GTYPE_GRUNT, p1deadunit02, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 180, 10)
        end
        DebugOut("*ForceRespawn* - P1 - Force Revived a Frontier Fighter")
        repeat
          EndFrame()
        until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
        SetInvulnerable(p1armyinvulnerable, 0)
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
      WaitFor(3)
      if AllPlayerUnitsDead(constant.PLAYER_TWO) then
        SetInvulnerable(p2armyinvulnerable, 1)
        if IsReadyToRevive(p2deadunit01) then
          ReviveFullUnitCarrier(p2armyinvulnerable, flag.GTYPE_GRUNT, p2deadunit01, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 0, 10)
        elseif IsReadyToRevive(p2deadunit02) then
          ReviveFullUnitCarrier(p2armyinvulnerable, flag.GTYPE_GRUNT, p2deadunit02, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 0, 10)
        end
        DebugOut("*ForceRespawn* - P2 - Force Revived an Tundran Fighter")
        repeat
          EndFrame()
        until AllPlayerUnitsDead(constant.PLAYER_TWO) == false
        SetInvulnerable(p2armyinvulnerable, 0)
      end
    end
    EndFrame()
  end
  DebugOut("*ForceRespawn* - Changed to grunts from ground assault")
  p1deadunit01 = Troop.WFgrunt5
  p1deadunit02 = Troop.WFgrunt6
  p2deadunit01 = Troop.TTgrunt1
  p2deadunit02 = Troop.TTgrunt2
  while missionend == 0 do
    if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) then
      WaitFor(3)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) then
        SetInvulnerable(p1armyinvulnerable, 1)
        if IsReadyToRevive(p1deadunit01) then
          ReviveDeadUnit(p1deadunit01, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 180, 10)
        elseif IsReadyToRevive(p1deadunit02) then
          ReviveDeadUnit(p1deadunit02, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 180, 10)
        end
        DebugOut("*ForceRespawn* - P1 - Force Revived a Frontier grunt")
        repeat
          EndFrame()
        until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
        SetInvulnerable(p1armyinvulnerable, 0)
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
      WaitFor(3)
      if AllPlayerUnitsDead(constant.PLAYER_TWO) then
        SetInvulnerable(p2armyinvulnerable, 1)
        if IsReadyToRevive(p2deadunit01) then
          ReviveDeadUnit(p2deadunit01, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 180, 10)
        elseif IsReadyToRevive(p2deadunit02) then
          ReviveDeadUnit(p2deadunit02, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 180, 10)
        end
        DebugOut("*ForceRespawn* - P2 - Force Revived a Tundran grunt")
        repeat
          EndFrame()
        until AllPlayerUnitsDead(constant.PLAYER_TWO) == false
        SetInvulnerable(p2armyinvulnerable, 0)
      end
    end
    EndFrame()
  end
end
