function EastEntranceApproach(owner)
  WaitFor(1)
  repeat
    WaitFor(1)
    EndFrame()
  until NumItemsInArea(Map_Zone.East, flag.TYPE_WFRONTIER) > 0
  Spawn(Air_Vehicle.LChopper1)
  Spawn(Air_Vehicle.LChopper2)
  FollowWaypoint(Air_Vehicle.LChopper1, Waypoint.LChopperWaypoint2, 0, 0)
  FollowWaypoint(Air_Vehicle.LChopper2, Waypoint.LChopperWaypoint2, 0, 0)
end
