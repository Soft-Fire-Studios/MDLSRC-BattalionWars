function ALL_UNITS_DEAD(owner)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
        WaitFor(2)
        ReviveDeadUnit(Troop.WF_Grunt1, GetObjectXPosition(Waypoint.WFDeadSpawn), GetObjectZPosition(Waypoint.WFDeadSpawn), 285, 5)
      end
      EndFrame()
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if AllPlayerUnitsDead(constant.PLAYER_TWO) == true then
        WaitFor(2)
        ReviveDeadUnit(Troop.AI_Grunt1, GetObjectXPosition(Waypoint.AIDeadSpawn), GetObjectZPosition(Waypoint.AIDeadSpawn), 70, 5)
      end
      EndFrame()
    end
    EndFrame()
  until GetMissionEnded()
end
