function battle_1_southern_bridge(owner)
  local loop = 0
  local timer = 0
  Despawn(Troop.g3)
  Despawn(Troop.g4)
  Despawn(Troop.g5)
  Despawn(Troop.g6)
  Despawn(Troop.g7)
  Despawn(Troop.g8)
  Despawn(Troop.g9)
  Despawn(Troop.xbaz1)
  Despawn(Troop.xbaz2)
  Despawn(Troop.xbaz3)
  Despawn(Troop.xbaz4)
  Despawn(Troop.xbaz5)
  Despawn(Troop.xbaz6)
  Despawn(Ground_Vehicle.xtank1)
  Despawn(Ground_Vehicle.xtank2)
  Despawn(Air_Vehicle.xgunship1)
  Despawn(Air_Vehicle.xgunship2)
  Despawn(Air_Vehicle.xtrans1)
  Despawn(Air_Vehicle.xtrans2)
  Despawn(Air_Vehicle.ttrans1)
  Despawn(Air_Vehicle.ttrans2)
  Despawn(Air_Vehicle.ttrans3)
  Despawn(Air_Vehicle.ttrans4)
  while cutscene == 0 do
    EndFrame()
  end
  GoToArea(Troop.g1, -75, -375, 25)
  GoToArea(Troop.g2, -75, -375, 25)
  while loop == 0 do
    if 0 < NumItemsInArea(Map_Zone.first, flag.TYPE_WFRONTIER) then
      DebugOut("player in ruins")
      GoToArea(Unit_Group.xfirst, -375, -205, 25)
      WaitFor(1)
      AddToGroup(Unit_Group.xfirst, Ground_Vehicle.art1)
      AddToGroup(Unit_Group.xfirst, Ground_Vehicle.art2)
      loop = 1
    elseif IsInArea(Troop.g1, Map_Zone.baz) and IsInArea(Troop.g2, Map_Zone.baz) then
      DebugOut("X have reached the ruins")
      WaitFor(10)
      GoToArea(Unit_Group.xfirst, -375, -205, 25)
      AddToGroup(Unit_Group.xfirst, Ground_Vehicle.art1)
      AddToGroup(Unit_Group.xfirst, Ground_Vehicle.art2)
      WaitFor(2)
      loop = 1
    else
      if timer == 180 then
        DebugOut("timer has run out")
        GoToArea(Unit_Group.xfirst, -375, -205, 25)
        AddToGroup(Unit_Group.xfirst, Ground_Vehicle.art1)
        AddToGroup(Unit_Group.xfirst, Ground_Vehicle.art2)
        WaitFor(2)
        loop = 1
      else
      end
    end
    timer = timer + 1
    WaitFor(1)
  end
  battle = 1
  WaitFor(5)
  SetInvulnerable(flag.TYPE_TUNDRAN, 0)
  loop = 0
  local gunship = 0
  local baz = 0
  timer = 0
  while loop == 0 do
    if GetGroupHealth(Unit_Group.first) == 0 then
      SetObjectiveData(Objective_Marker.south, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.FSouth, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.FSouth, constant.OBJECTIVE_DATA_STATE, 1)
      south = 1
      AddToGroup(Unit_Group.xfirst, Troop.baz2)
      AddToGroup(Unit_Group.xfirst, Troop.baz3)
      GoToArea(Unit_Group.xfirst, -530, -65, 25)
      GoToArea(Ground_Vehicle.art1, -375, -205, 35)
      GoToArea(Ground_Vehicle.art2, -375, -205, 35)
      GoToArea(Troop.Entity0191, -510, -45, 35)
      PhoneMessage(71, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(74, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      WaitFor(15)
      GoToArea(Unit_Group.xfirst, -510, -50, 25)
      if gunship == 0 then
        Teleport(Air_Vehicle.xgunship1, -490, 350, 180, 10)
        Teleport(Air_Vehicle.xgunship1, -530, -645, 0, 10)
        WaitFor(1)
        Spawn(Air_Vehicle.xgunship1)
        Spawn(Air_Vehicle.xgunship2)
        DebugOut(GetGroupHealthPercent(Unit_Group.xfirst))
        AddToGroup(Unit_Group.xfirst, Air_Vehicle.xgunship1)
        AddToGroup(Unit_Group.xfirst, Air_Vehicle.xgunship2)
        gunship = 1
      end
      GoToArea(Air_Vehicle.xgunship1, -520, -60, 25, 0, constant.ORDER_FORCED)
      GoToArea(Air_Vehicle.xgunship2, -520, -50, 25, 0, constant.ORDER_FORCED)
      EnterVehicle(Troop.cut1, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.cut2, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.baz2, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.baz3, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.Entity0200, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.Entity0204, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.g1, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.g2, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.Entity0205, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.Entity0199, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.Entity0203, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.Entity0267, Capture_Point.tundran, constant.ORDER_FORCED)
      hq = 1
      while hq == 1 do
        EndFrame()
      end
      gunship = 2
      loop = 1
    end
    EndFrame()
    if gunship == 0 then
      if 45 > GetGroupHealthPercent(Unit_Group.xfirst) then
        DebugOut("most of first group have been killed, bring in the gunships")
        WaitFor(9)
        AddToGroup(Unit_Group.xfirst, Troop.baz2)
        AddToGroup(Unit_Group.xfirst, Troop.baz3)
        GoToArea(Unit_Group.first, -375, -215, 50)
        PhoneMessage(8, constant.ID_NONE, 1, 5, SpriteID.CO_X_Vlad_Sad)
        PhoneMessage(76, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
        WaitFor(6)
        Spawn(Air_Vehicle.xgunship1)
        Spawn(Air_Vehicle.xgunship2)
        DebugOut(GetGroupHealthPercent(Unit_Group.xfirst))
        AddToGroup(Unit_Group.xfirst, Air_Vehicle.xgunship1)
        AddToGroup(Unit_Group.xfirst, Air_Vehicle.xgunship2)
        DebugOut(GetGroupHealthPercent(Unit_Group.xfirst))
        FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gfirst, 0, 0, 20)
        WaitFor(15)
        FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gfirst, 0, 0, 20)
        gunship = 1
        DebugOut("first gunships spawned")
      else
        if timer == 240 then
          DebugOut("timer has run its course, bring in the gunships")
          WaitFor(5)
          PhoneMessage(8, constant.ID_NONE, 1, 5, SpriteID.CO_X_Vlad_Sad)
          PhoneMessage(76, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
          GoToArea(Unit_Group.first, -375, -215, 50)
          WaitFor(2)
          if gunship == 0 then
            AddToGroup(Unit_Group.xfirst, Troop.baz2)
            AddToGroup(Unit_Group.xfirst, Troop.baz3)
            WaitFor(10)
            Spawn(Air_Vehicle.xgunship1)
            Spawn(Air_Vehicle.xgunship2)
            DebugOut(GetGroupHealthPercent(Unit_Group.xfirst))
            AddToGroup(Unit_Group.xfirst, Air_Vehicle.xgunship1)
            AddToGroup(Unit_Group.xfirst, Air_Vehicle.xgunship2)
            DebugOut(GetGroupHealthPercent(Unit_Group.xfirst))
            FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gfirst, 0, 0, 20)
            WaitFor(5)
            FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gfirst, 0, 0, 20)
            gunship = 1
          end
          DebugOut("first gunships spawned")
        else
        end
      end
    else
      if gunship == 1 then
        if 1 > GetGroupHealthPercent(Unit_Group.xfirst) then
          if IsDead(Air_Vehicle.xgunship1) and IsDead(Air_Vehicle.xgunship2) then
            DebugOut(GetGroupHealthPercent(Unit_Group.xfirst))
            WaitFor(2)
            PhoneMessage(10, constant.ID_NONE, 1, 5, SpriteID.CO_X_Vlad_Sad)
            WaitFor(7)
            SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_VISIBLE, 0)
            SetObjectiveData(Objective_Marker.south, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
            SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_VISIBLE, 1)
            SetObjectiveData(Objective_Marker.north, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
            PhoneMessage(11, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
            DebugOut(GetGroupHealthPercent(Unit_Group.xfirst))
            loop = 1
          end
        elseif baz == 0 and NumItemsInArea(Map_Zone.sehead, flag.TYPE_WFRONTIER) == 0 then
          GoToArea(Troop.baz2, -355, -205, 35)
          GoToArea(Troop.baz3, -375, -215, 35)
        end
      else
      end
    end
    timer = timer + 1
    WaitFor(1)
  end
  loop = 0
  WaitFor(7)
  battle = 2
end
