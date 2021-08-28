function ALL_UNITS_DEAD_SCRIPT(owner)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
        WaitFor(2)
        ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Water_Vehicle.WFsub1, GetObjectXPosition(Waypoint.WFDeadSpawn), GetObjectZPosition(Waypoint.WFDeadSpawn), 0, 5)
      end
      EndFrame()
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if AllPlayerUnitsDead(constant.PLAYER_TWO) == true then
        WaitFor(2)
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Water_Vehicle.XYsub1, GetObjectXPosition(Waypoint.XYDeadSpawn), GetObjectZPosition(Waypoint.XYDeadSpawn), 180, 5)
      end
      EndFrame()
    end
    EndFrame()
  until GetMissionEnded()
end
