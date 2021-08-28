function ALL_UNITS_DEAD_SCRIPT(owner)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
        WaitFor(2)
        ReviveDeadUnit(Troop.SEGrunt1, GetObjectXPosition(Waypoint.SEDeadSpawn), GetObjectZPosition(Waypoint.SEDeadSpawn), 270, 5)
      end
      EndFrame()
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if AllPlayerUnitsDead(constant.PLAYER_TWO) == true then
        WaitFor(2)
        ReviveDeadUnit(Troop.ILGrunt1, GetObjectXPosition(Waypoint.ILDeadSpawn), GetObjectZPosition(Waypoint.ILDeadSpawn), 90, 5)
      end
      EndFrame()
    end
    EndFrame()
  until GetMissionEnded()
end
