function battle_3_southern_bridge(owner)
  local tundran = 0
  local loop = 0
  while battle < 3 do
    EndFrame()
  end
  WaitFor(3)
  Spawn(Troop.g3)
  Spawn(Troop.g4)
  Spawn(Troop.g5)
  Spawn(Troop.g6)
  Spawn(Troop.g7)
  Spawn(Troop.g8)
  Spawn(Troop.g9)
  AddToGroup(Unit_Group.xthird, Troop.g3)
  AddToGroup(Unit_Group.xthird, Troop.g4)
  AddToGroup(Unit_Group.xthird, Troop.g5)
  AddToGroup(Unit_Group.xthird, Troop.g6)
  AddToGroup(Unit_Group.xthird, Troop.g7)
  AddToGroup(Unit_Group.xthird, Troop.g8)
  AddToGroup(Unit_Group.xthird, Troop.g9)
  GoToArea(Unit_Group.xthird, -75, -375, 100, 0, constant.ORDER_FORCED)
  if IsReadyToRevive(Air_Vehicle.xgunship2) then
    Teleport(Air_Vehicle.xgunship2, 120, -65, 270, 10)
    DebugOut("Heli2 Respawn")
    ReviveDeadUnit(Air_Vehicle.xgunship2)
    EndFrame()
    while 0 < GetNumSeatsFree(Air_Vehicle.xgunship2) do
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship2)
      EndFrame()
    end
  end
  WaitFor(2)
  if IsReadyToRevive(Air_Vehicle.xgunship1) then
    Teleport(Air_Vehicle.xgunship1, 270, -285, 270, 10)
    DebugOut("Heli1 Respawn")
    ReviveDeadUnit(Air_Vehicle.xgunship1)
    EndFrame()
    while 0 < GetNumSeatsFree(Air_Vehicle.xgunship1) do
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship1)
      EndFrame()
    end
  end
  if GetGroupHealthPercent(Unit_Group.first) == 0 then
    GoToArea(Unit_Group.xthird, -485, -45, 25)
    EnterVehicle(Troop.g3, Capture_Point.tundran, constant.ORDER_FORCED)
    EnterVehicle(Troop.g5, Capture_Point.tundran, constant.ORDER_FORCED)
    EnterVehicle(Troop.g7, Capture_Point.tundran, constant.ORDER_FORCED)
    EnterVehicle(Troop.g9, Capture_Point.tundran, constant.ORDER_FORCED)
    WaitFor(5)
    FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gthirda, 0, 0, 20)
    WaitFor(5)
    FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gthirda, 0, 0, 20)
    tundran = 1
  else
    WaitFor(5)
    FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gfirst, 0, 0, 20)
    WaitFor(5)
    FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gfirst, 0, 0, 20)
    WaitFor(10)
    GoToArea(Unit_Group.xthird, -360, -190, 25, 0, constant.FORMATION_ALLOWED)
    AddToGroup(Unit_Group.xthird, Air_Vehicle.xgunship2)
    AddToGroup(Unit_Group.xthird, Air_Vehicle.xgunship1)
  end
  local timeout = 0
  while loop == 0 do
    if tundran == 0 and GetGroupHealthPercent(Unit_Group.first) == 0 then
      SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.south, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      PhoneMessage(71, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      GoToArea(Unit_Group.xthird, -500, -30, 25)
      EnterVehicle(Troop.g3, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.g5, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.g7, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.g9, Capture_Point.tundran, constant.ORDER_FORCED)
      FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gthirda, 0, 0, 20)
      WaitFor(3)
      FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gthirda, 0, 0, 20)
      PhoneMessage(24, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      tundran = 1
      south = 1
      SetObjectiveData(Objective_Marker.south, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.FSouth, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.FSouth, constant.OBJECTIVE_DATA_STATE, 1)
      if north == 1 then
        WaitFor(6)
        DebugOut("no 2ndary complete")
        PhoneMessage(31, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      else
        WaitFor(6)
        DebugOut("north 2ndary complete")
        PhoneMessage(29, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
        SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_STATE, 1)
      end
      loop = 1
    end
    if timeout > 180 then
      GoToArea(Unit_Group.xthird, -500, -30, 25)
      FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gthirda, 0, 0, 20)
      WaitFor(3)
      FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gthirda, 0, 0, 20)
      PhoneMessage(24, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      if north == 0 then
        SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if south == 1 then
        SetObjectiveData(Objective_Marker.south, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.FSouth, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.FSouth, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if south == 0 then
        SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if north + south == 0 then
        WaitFor(6)
        DebugOut("both 2ndary complete")
        PhoneMessage(25, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
        TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 2
      elseif north + south == 2 then
        WaitFor(6)
        DebugOut("no 2ndary complete")
        PhoneMessage(31, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
        TechniqueObjectivesCompleted = 0
      elseif north == 1 then
        WaitFor(6)
        DebugOut("south 2ndary complete")
        PhoneMessage(30, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
        TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      else
        if south == 1 then
          WaitFor(6)
          DebugOut("north 2ndary complete")
          PhoneMessage(29, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
          TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
        else
        end
      end
      loop = 1
    elseif GetGroupHealthPercent(Unit_Group.xthird) == 0 then
      DebugOut("xthird is DEAD")
      DebugOut(GetGroupHealthPercent(Unit_Group.xthird))
      WaitFor(5)
      PhoneMessage(23, constant.ID_NONE, 1, 5, SpriteID.CO_X_Vlad_Sad)
      WaitFor(6)
      PhoneMessage(24, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      if north == 0 then
        SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if south == 1 then
        SetObjectiveData(Objective_Marker.south, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.FSouth, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.FSouth, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if south == 0 then
        SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if north + south == 0 then
        WaitFor(6)
        DebugOut("both 2ndary complete")
        PhoneMessage(25, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
        TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 2
      elseif north + south == 2 then
        WaitFor(6)
        DebugOut("no 2ndary complete")
        PhoneMessage(31, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
        TechniqueObjectivesCompleted = 0
      elseif north == 1 then
        WaitFor(6)
        DebugOut("south 2ndary complete")
        PhoneMessage(30, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
        TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      else
        if south == 1 then
          WaitFor(6)
          DebugOut("north 2ndary complete")
          PhoneMessage(29, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
          TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
        else
        end
      end
      loop = 1
    else
      timeout = timeout + 1
      WaitFor(1)
    end
    EndFrame()
  end
  battle = 5
  SetTimer(300)
  ShowTimer(1)
  while timer1 < 305 do
    timer1 = timer1 + 1
    WaitFor(1)
  end
end
