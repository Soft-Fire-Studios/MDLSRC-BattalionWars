function WF_BazookaHelpers(owner)
  while not messages.HasBeenPlayed("WF_IncAtRiver1") do
    EndFrame()
  end
  Spawn(Troop.WF_CC_BAZ04)
  Spawn(Troop.WF_CC_BAZ05)
  Spawn(Troop.WF_CC_BAZ06)
  Spawn(Troop.WF_CC_BAZ07)
  WaitFor(1)
  SetActive(Troop.WF_CC_BAZ04, constant.ACTIVE)
  SetActive(Troop.WF_CC_BAZ05, constant.ACTIVE)
  SetActive(Troop.WF_CC_BAZ06, constant.ACTIVE)
  SetActive(Troop.WF_CC_BAZ07, constant.ACTIVE)
  group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_CC_BAZ04)
  group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_CC_BAZ05)
  group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_CC_BAZ06)
  group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_CC_BAZ07)
  FollowUnit(Troop.WF_CC_BAZ04, GetPlayerUnit(), 5, 15, constant.ORDER_FORCED)
  FollowUnit(Troop.WF_CC_BAZ05, GetPlayerUnit(), 5, 15, constant.ORDER_FORCED)
  FollowUnit(Troop.WF_CC_BAZ06, GetPlayerUnit(), 5, 15, constant.ORDER_FORCED)
  FollowUnit(Troop.WF_CC_BAZ07, GetPlayerUnit(), 5, 15, constant.ORDER_FORCED)
  group.Spawn(Unit_Group.TN_River, true)
  WaitFor(5)
  if GetPlayerUnit() > 0 then
    if IsInArea(GetPlayerUnit(), Map_Zone.SPAWNHACK2) then
      group.FollowWaypoint(Unit_Group.TN_River, Waypoint.NEW_START_WP)
      WaitFor(1)
      group.FollowWaypoint(Unit_Group.TN_River, Waypoint.NEW_START_WP)
    else
      Teleport(Ground_Vehicle.TN_RIVER_LTP01, -243, 7, 150, 10)
      Teleport(Ground_Vehicle.TN_RIVER_LTP02, -253, 22, 150, 10)
      group.FollowWaypoint(Unit_Group.TN_River, Waypoint.Entity0005)
      WaitFor(1)
      group.FollowWaypoint(Unit_Group.TN_River, Waypoint.Entity0005)
    end
  end
  SetObjectiveData(Objective.GetToTheRiver, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.RiverRecon00, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.RiverRecon01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.RiverRecon02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
end
