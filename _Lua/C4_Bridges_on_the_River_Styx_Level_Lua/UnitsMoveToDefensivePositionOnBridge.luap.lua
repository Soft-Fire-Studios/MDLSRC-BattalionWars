function UnitsMoveToDefensivePositionOnBridge(owner)
  repeat
    EndFrame()
  until NumItemsInArea(-70, 82, 50, flag.TYPE_WFRONTIER)
  GoToArea(Ground_Vehicle.XHeavyTank7, -77, 193, 5, constant.ORDER_NORMAL)
  GoToArea(Ground_Vehicle.XHeavyTank8, -49, 193, 5, constant.ORDER_NORMAL)
  FollowWaypoint(Troop.XBazookaVet10, Waypoint.Artillery5, 0, 0)
  FollowWaypoint(Troop.XBazookaVet15, Waypoint.Artillery6, 0, 0)
  GoToArea(Troop.XBazookaVet16, -78, 164, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XBazookaVet17, -68, 193, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XBazookaVet18, -58, 193, 5, constant.ORDER_NORMAL)
end
