function C4M5_Pillboxes(owner)
  local RetreatDone = 0
  local SecondWallDone = 0
  while true do
    if RetreatDone == 0 and NumItemsInArea(Map_Zone.Retreat1, flag.TYPE_WFRONTIER) >= 1 then
      RetreatDone = 1
      FollowWaypoint(Troop.Xgrunt0015, Waypoint.Entity0297, 5, 5, constant.ORDER_FORCED)
      FollowWaypoint(Troop.Xgrunt0016, Waypoint.Entity0302, 5, 5, constant.ORDER_FORCED)
      FollowWaypoint(Troop.Xgrunt0017, Waypoint.Entity0308, 5, 5, constant.ORDER_FORCED)
      FollowWaypoint(Troop.Xgrunt0018, Waypoint.Entity0314, 5, 5, constant.ORDER_FORCED)
      WaitFor(10)
      EnterVehicle(Troop.Xgrunt0015, Building.XpillboxEmpty0002, constant.ORDER_FORCED)
      EnterVehicle(Troop.Xgrunt0016, Building.XpillboxEmpty0004, constant.ORDER_FORCED)
      EnterVehicle(Troop.Xgrunt0017, Building.XpillboxEmpty0005, constant.ORDER_FORCED)
      EnterVehicle(Troop.Xgrunt0018, Building.XpillboxEmpty0003, constant.ORDER_FORCED)
    end
    if SecondWallDone == 0 and 1 <= NumItemsInArea(0, 25, 80, flag.TYPE_WFRONTIER) then
      SecondWallDone = 1
      EnterVehicle(Troop.Xgrunt0021, Building.XpillboxEmpty0009, constant.ORDER_FORCED)
      EnterVehicle(Troop.Xgrunt0025, Building.XpillboxEmpty0010, constant.ORDER_FORCED)
    end
    EndFrame()
  end
  return
end
