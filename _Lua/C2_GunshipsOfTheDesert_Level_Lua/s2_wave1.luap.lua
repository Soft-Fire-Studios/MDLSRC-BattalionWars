function s2_wave1(owner)
  while true do
    if CheckCapturePoint(Capture_Point.Mining_Base, constant.ARMY_WF, 5, 0, constant.CAPTUREPOINTFLAG_LOWERING) or CheckCapturePoint(Capture_Point.Mining_Base_B, constant.ARMY_WF, 5, 0, constant.CAPTUREPOINTFLAG_LOWERING) or CheckCapturePoint(Capture_Point.Mining_Base_C, constant.ARMY_WF, 5, 0, constant.CAPTUREPOINTFLAG_LOWERING) then
      MiningBaseCaptured = 1
      HeavyTransportSpawned = 1
      DebugOut("Level can now be won. HeavyTransportSpawned = 1")
      SetObjectiveData(Objective_Marker.ObjectiveBridgeLeft, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.ObjectiveBridgeRight, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.ObjectiveAirfield, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      ClearMessageQueue()
      PhoneMessage(20, constant.ID_NONE, 1, 4, SpriteID.CO_X_Vlad_Sad)
      PhoneMessage(21, constant.ID_NONE, 1, 4, SpriteID.CO_X_Ingrid_Happy)
      FollowWaypoint(Air_Vehicle.Xgunship0002, Waypoint.Entity0053, 5, 5, constant.ORDER_NORMAL)
      FollowWaypoint(Air_Vehicle.Xgunship0001, Waypoint.Entity0010, 5, 5, constant.ORDER_NORMAL)
      FollowWaypoint(Air_Vehicle.Xgunship0003, Waypoint.Entity0026, 5, 5, constant.ORDER_NORMAL)
      FollowWaypoint(Air_Vehicle.Xgunship0004, Waypoint.Entity0244, 5, 5, constant.ORDER_NORMAL)
      FollowWaypoint(Air_Vehicle.Xgunship0005, Waypoint.Entity0059, 5, 5, constant.ORDER_NORMAL)
      FollowWaypoint(Air_Vehicle.Xgunship0006, Waypoint.Entity0239, 5, 5, constant.ORDER_NORMAL)
      DebugOut("Xylvanian Attack Group on way to Mining Facility")
      GoToArea(Unit_Group.GroupXAttack01, -86, 228, 20)
      GoToArea(Unit_Group.GroupXAttack02, -100, 285, 20)
      FollowWaypoint(Ground_Vehicle.XheavyTank0001, Waypoint.Entity0030, 5, 10)
      FollowWaypoint(Ground_Vehicle.Xheavytrans0002, Waypoint.Entity0014, 5, 10)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
