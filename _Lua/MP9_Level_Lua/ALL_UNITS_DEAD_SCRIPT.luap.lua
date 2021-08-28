function ALL_UNITS_DEAD_SCRIPT(owner)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
        WaitFor(2)
        ReviveDeadUnit(Troop.WFgrunt1, GetObjectXPosition(Waypoint.WFDeadSpawn), GetObjectZPosition(Waypoint.WFDeadSpawn), 25, 5)
      end
      EndFrame()
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if AllPlayerUnitsDead(constant.PLAYER_TWO) == true then
        WaitFor(2)
        ReviveDeadUnit(Troop.Tgrunt1, GetObjectXPosition(Waypoint.TDeadSpawn), GetObjectZPosition(Waypoint.TDeadSpawn), 165, 5)
      end
      EndFrame()
    end
    EndFrame()
  until GetMissionEnded()
end
