function C1Bonus_Encounter_WFtanks(owner)
  while true do
    if NumItemsInArea(Map_Zone.WFtanks, flag.TYPE_TUNDRAN) >= 1 and WFtanksEncounterDone == 0 then
      WFtanksEncounterDone = 1
      DebugOut("WF tanks attacks!")
      FollowWaypoint(Ground_Vehicle.WFheavyTank0005, Waypoint.Entity0261, 5, 10, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.WFheavyTank0006, Waypoint.Entity0275, 5, 10, constant.ORDER_NORMAL)
      break
    end
    if (1 <= NumItemsInArea(Map_Zone.Battle01, flag.TYPE_TUNDRAN) or 1 <= NumItemsInArea(Map_Zone.Battle02, flag.TYPE_TUNDRAN) or 1 <= NumItemsInArea(Map_Zone.Battle03, flag.TYPE_TUNDRAN) or 1 <= NumItemsInArea(Map_Zone.Battle04, flag.TYPE_TUNDRAN)) and WFtanksEncounterDone == 0 then
      WFtanksEncounterDone = 1
      DebugOut("WF tanks attacks!")
      FollowWaypoint(Ground_Vehicle.WFheavyTank0005, Waypoint.Entity0041, 5, 10, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.WFheavyTank0006, Waypoint.Entity0041, 5, 10, constant.ORDER_NORMAL)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
