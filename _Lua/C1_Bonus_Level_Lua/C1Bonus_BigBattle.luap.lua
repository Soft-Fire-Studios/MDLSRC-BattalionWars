function C1Bonus_BigBattle(owner)
  Despawn(Ground_Vehicle.TlightTank0005)
  Despawn(Ground_Vehicle.TlightTank0002)
  while true do
    if NumItemsInArea(Map_Zone.Battle01, flag.TYPE_TUNDRAN) >= 1 or 1 <= NumItemsInArea(Map_Zone.Battle02, flag.TYPE_TUNDRAN) or 1 <= NumItemsInArea(Map_Zone.Battle03, flag.TYPE_TUNDRAN) or 1 <= NumItemsInArea(Map_Zone.Battle04, flag.TYPE_TUNDRAN) then
      SetObjectiveData(Objective_Marker.HeavyTank_Objective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      PhoneMessage(10, constant.ID_NONE, 2, 8, SpriteID.CO_Nova_Happy)
      if not IsDead(Ground_Vehicle.WFheavyTank0001) then
        SetObjectiveData(Objective_Marker.TankObjective0001, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if not IsDead(Ground_Vehicle.WFheavyTank0002) then
        SetObjectiveData(Objective_Marker.TankObjective0002, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if not IsDead(Ground_Vehicle.WFheavyTank0003) then
        SetObjectiveData(Objective_Marker.TankObjective0003, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if not IsDead(Ground_Vehicle.WFheavyTank0004) then
        SetObjectiveData(Objective_Marker.TankObjective0004, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if not IsDead(Ground_Vehicle.WFheavyTank0005) then
        SetObjectiveData(Objective_Marker.TankObjective0005, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if not IsDead(Ground_Vehicle.WFheavyTank0006) then
        SetObjectiveData(Objective_Marker.TankObjective0006, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if not IsDead(Ground_Vehicle.WFheavyTank0007) then
        SetObjectiveData(Objective_Marker.TankObjective0007, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if not IsDead(Ground_Vehicle.WFheavyTank0008) then
        SetObjectiveData(Objective_Marker.TankObjective0008, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      SetActive(Ground_Vehicle.TlightTank0001, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.TlightTank0003, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.TlightTank0004, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.TlightTank0006, constant.ACTIVE, constant.ADJUST_WEAPON)
      DebugOut("Kick off big tank battle in middle of the level")
      FollowWaypoint(Ground_Vehicle.WFheavyTank0001, Waypoint.Entity0249, 5, 10, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.WFheavyTank0003, Waypoint.Entity0242, 5, 10, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.WFheavyTank0002, Waypoint.Entity0139, 5, 10, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.WFheavyTank0004, Waypoint.Entity0180, 5, 10, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.WFheavyTank0007, Waypoint.Entity0121, 5, 10, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.WFheavyTank0008, Waypoint.Entity0117, 5, 10, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.TlightTank0001, Waypoint.Entity0024, 5, 10, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
      FollowWaypoint(Ground_Vehicle.TlightTank0003, Waypoint.Entity0144, 5, 10, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
      FollowWaypoint(Ground_Vehicle.TlightTank0004, Waypoint.Entity0020, 5, 10, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
      FollowWaypoint(Ground_Vehicle.TlightTank0006, Waypoint.Entity0137, 5, 10, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
