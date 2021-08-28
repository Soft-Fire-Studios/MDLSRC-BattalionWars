function ALL_UNITS_DEAD_FORCED_RESPAWN(owner)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
        WaitFor(2)
        ReviveDeadUnit(Troop.Xgrunt1, GetObjectXPosition(Waypoint.XDeadSpawn), GetObjectZPosition(Waypoint.XDeadSpawn), 225, 5)
      end
      EndFrame()
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if AllPlayerUnitsDead(constant.PLAYER_TWO) == true then
        WaitFor(2)
        ReviveDeadUnit(Troop.Tgrunt1, GetObjectXPosition(Waypoint.TDeadSpawn), GetObjectZPosition(Waypoint.TDeadSpawn), 45, 5)
      end
      EndFrame()
    end
    EndFrame()
  until GetMissionEnded()
end
