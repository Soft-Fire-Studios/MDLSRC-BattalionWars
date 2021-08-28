function s2_Xgunships(owner)
  local Gunship0001done = 0
  local Gunship0003done = 0
  local Gunship0004done = 0
  local Gunship0005done = 0
  local Gunship0006done = 0
  while true do
    if owner == Air_Vehicle.Xgunship0001 and NumPassengersInUnit(Air_Vehicle.Xgunship0001) >= 1 and Gunship0001done == 0 then
      Gunship0001done = 1
      GoToArea(Air_Vehicle.Xgunship0001, -360, -180, 10)
      WaitFor(10)
      FollowWaypoint(Air_Vehicle.Xgunship0001, Waypoint.Entity0010, 5, 5, constant.ORDER_NORMAL)
    end
    if owner == Air_Vehicle.Xgunship0003 and 1 <= NumPassengersInUnit(Air_Vehicle.Xgunship0003) and Gunship0003done == 0 then
      Gunship0003done = 1
      GoToArea(Air_Vehicle.Xgunship0003, -425, -250, 10)
      WaitFor(10)
      FollowWaypoint(Air_Vehicle.Xgunship0003, Waypoint.Entity0026, 5, 5, constant.ORDER_NORMAL)
    end
    if owner == Air_Vehicle.Xgunship0004 and 1 <= NumPassengersInUnit(Air_Vehicle.Xgunship0004) and Gunship0004done == 0 then
      Gunship0004done = 1
      GoToArea(Air_Vehicle.Xgunship0004, -250, -285, 10)
      WaitFor(10)
      FollowWaypoint(Air_Vehicle.Xgunship0004, Waypoint.Entity0244, 5, 5, constant.ORDER_NORMAL)
    end
    if owner == Air_Vehicle.Xgunship0005 and 1 <= NumPassengersInUnit(Air_Vehicle.Xgunship0005) and Gunship0005done == 0 then
      Gunship0005done = 1
      GoToArea(Air_Vehicle.Xgunship0005, -260, -85, 10)
      WaitFor(10)
      FollowWaypoint(Air_Vehicle.Xgunship0005, Waypoint.Entity0059, 5, 5, constant.ORDER_NORMAL)
    end
    if owner == Air_Vehicle.Xgunship0006 and 1 <= NumPassengersInUnit(Air_Vehicle.Xgunship0006) and Gunship0006done == 0 then
      Gunship0006done = 1
      GoToArea(Air_Vehicle.Xgunship0006, -200, -125, 10)
      WaitFor(10)
      FollowWaypoint(Air_Vehicle.Xgunship0006, Waypoint.Entity0239, 5, 5, constant.ORDER_NORMAL)
    end
    EndFrame()
  end
  EndFrame()
  return
end
