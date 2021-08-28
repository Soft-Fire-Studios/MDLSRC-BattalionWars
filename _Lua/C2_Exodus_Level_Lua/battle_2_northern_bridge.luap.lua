function battle_2_northern_bridge(owner)
  local loop = 0
  while battle < 2 do
    EndFrame()
  end
  while battle > 2 do
    EndFrame()
  end
  GoToArea(Unit_Group.xfirst, -490, -50, 25)
  EnterVehicle(Troop.cut1, Capture_Point.tundran)
  EnterVehicle(Troop.cut2, Capture_Point.tundran)
  EnterVehicle(Troop.Entity0200, Capture_Point.tundran)
  EnterVehicle(Troop.Entity0204, Capture_Point.tundran)
  FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gsecond, 0, 0, 20)
  FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gsecond, 0, 0, 20)
  GoToArea(Ground_Vehicle.art1, -360, -210, 25)
  AddToGroup(Unit_Group.xsecond, Air_Vehicle.xgunship1)
  AddToGroup(Unit_Group.xsecond, Air_Vehicle.xgunship2)
  FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gsecondb, 0, 0, 20)
  FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gsecondb, 0, 0, 20)
  if IsInArea(GetPlayerUnit(), Map_Zone.bullet) then
    Spawn(Ground_Vehicle.xtank1)
    Teleport(Ground_Vehicle.xtank1, 485, 95, 270)
    DebugOut("teleporting tank 1")
    EndFrame()
  else
    Spawn(Ground_Vehicle.xtank1)
  end
  if IsInArea(GetPlayerUnit(), Map_Zone.bullet) then
    Spawn(Ground_Vehicle.xtank2)
    Teleport(Ground_Vehicle.xtank2, 460, -150, 270)
    DebugOut("teleporting tank 2")
    EndFrame()
  else
    Spawn(Ground_Vehicle.xtank2)
  end
  WaitFor(3)
  GoToArea(Ground_Vehicle.xtank1, -330, -5, 25, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.xtank2, -325, -35, 25, constant.ORDER_FORCED)
  WaitFor(3)
  WaitFor(10)
  local gunship = 0
  local timeout = 0
  while loop == 0 do
    if GetGroupHealth(Unit_Group.second) == 0 then
      WaitFor(2)
      if wavetwo == 0 then
        DebugOut("spawning fight 2 northern bazookas")
        Spawn(Troop.xbaz1)
        Spawn(Troop.xbaz2)
        Spawn(Troop.xbaz3)
        GoToArea(Troop.xbaz1, -340, 5, 25)
        GoToArea(Troop.xbaz2, -340, 5, 25)
        GoToArea(Troop.xbaz3, -340, 5, 25)
        WaitFor(5)
        Spawn(Troop.xbaz4)
        Spawn(Troop.xbaz5)
        Spawn(Troop.xbaz6)
      end
      SetObjectiveData(Objective_Marker.north, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.FNorth, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.FNorth, constant.OBJECTIVE_DATA_STATE, 1)
      north = 1
      PhoneMessage(72, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(74, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      WaitFor(6)
      FollowWaypoint(Unit_Group.xsecond, Waypoint.palace, 0, 0, constant.ORDER_FORCED)
      EnterVehicle(Troop.xbaz1, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.xbaz2, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.xbaz3, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.xbaz4, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.xbaz5, Capture_Point.tundran, constant.ORDER_FORCED)
      EnterVehicle(Troop.xbaz6, Capture_Point.tundran, constant.ORDER_FORCED)
      hq = 1
      while hq == 1 do
        EndFrame()
      end
      gunship = 2
      loop = 1
    end
    EndFrame()
    if gunship == 0 and IsDead(Ground_Vehicle.xtank1) and IsDead(Ground_Vehicle.xtank2) then
      wavetwo = 1
      DebugOut("spawning fight 2 northern bazookas")
      WaitFor(2)
      PhoneMessage(13, constant.ID_NONE, 1, 5, SpriteID.CO_X_Vlad_Sad)
      Spawn(Troop.xbaz1)
      Spawn(Troop.xbaz2)
      Spawn(Troop.xbaz3)
      GoToArea(Troop.xbaz1, -340, 5, 25)
      GoToArea(Troop.xbaz2, -340, 5, 25)
      GoToArea(Troop.xbaz3, -340, 5, 25)
      WaitFor(4)
      Spawn(Troop.xbaz4)
      Spawn(Troop.xbaz5)
      Spawn(Troop.xbaz6)
      GoToArea(Troop.xbaz4, -325, -35, 25)
      GoToArea(Troop.xbaz5, -325, -35, 25)
      GoToArea(Troop.xbaz6, -325, -35, 25)
      GoToArea(Ground_Vehicle.xtank1, -395, 15, 10)
      GoToArea(Ground_Vehicle.xtank2, -375, -40, 10)
      WaitFor(8)
      if IsReadyToRevive(Air_Vehicle.xgunship1) then
        Teleport(Air_Vehicle.xgunship1, 115, -5, 270, 10)
        DebugOut("Heli1 Respawn")
        ReviveDeadUnit(Air_Vehicle.xgunship1)
        EndFrame()
        while 0 < GetNumSeatsFree(Air_Vehicle.xgunship1) do
          SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship1)
          EndFrame()
        end
        FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gsecond, 0, 0, 20)
        AddToGroup(Unit_Group.xsecond, Air_Vehicle.xgunship1)
      end
      if IsReadyToRevive(Air_Vehicle.xgunship2) then
        Teleport(Air_Vehicle.xgunship2, 380, -280, 270, 10)
        DebugOut("Heli2 Respawn")
        ReviveDeadUnit(Air_Vehicle.xgunship2)
        EndFrame()
        while 0 < GetNumSeatsFree(Air_Vehicle.xgunship2) do
          SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship2)
          EndFrame()
        end
        FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gsecond, 0, 0, 20)
        AddToGroup(Unit_Group.xsecond, Air_Vehicle.xgunship2)
      end
      gunship = 1
    end
    if gunship == 0 then
      if timeout < 120 then
        timeout = timeout + 1
        DebugOut(timeout)
      elseif timeout > 119 then
        if wavetwo == 0 then
          DebugOut("spawning fight 2 northern bazookas")
          Spawn(Troop.xbaz1)
          Spawn(Troop.xbaz2)
          Spawn(Troop.xbaz3)
          GoToArea(Troop.xbaz1, -340, 5, 25)
          GoToArea(Troop.xbaz2, -340, 5, 25)
          GoToArea(Troop.xbaz3, -340, 5, 25)
          WaitFor(5)
          Spawn(Troop.xbaz4)
          Spawn(Troop.xbaz5)
          Spawn(Troop.xbaz6)
        end
        GoToArea(Troop.xbaz4, -325, -35, 25)
        GoToArea(Troop.xbaz5, -325, -35, 25)
        GoToArea(Troop.xbaz6, -325, -35, 25)
        GoToArea(Ground_Vehicle.xtank1, -395, 15, 10)
        GoToArea(Ground_Vehicle.xtank2, -375, -40, 10)
        WaitFor(1)
        PhoneMessage(13, constant.ID_NONE, 1, 5, SpriteID.CO_X_Vlad_Sad)
        if IsReadyToRevive(Air_Vehicle.xgunship1) then
          Teleport(Air_Vehicle.xgunship1, 115, -5, 270, 10)
          DebugOut("Heli1 Respawn")
          ReviveDeadUnit(Air_Vehicle.xgunship1)
          EndFrame()
          while 0 < GetNumSeatsFree(Air_Vehicle.xgunship1) do
            SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship1)
            EndFrame()
          end
          FollowWaypoint(Air_Vehicle.xgunship1, Waypoint.gsecond, 0, 0, 20)
          AddToGroup(Unit_Group.xsecond, Air_Vehicle.xgunship1)
        end
        if IsReadyToRevive(Air_Vehicle.xgunship2) then
          Teleport(Air_Vehicle.xgunship2, 380, -280, 270, 10)
          DebugOut("Heli2 Respawn")
          ReviveDeadUnit(Air_Vehicle.xgunship2)
          EndFrame()
          while 0 < GetNumSeatsFree(Air_Vehicle.xgunship2) do
            SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xgunship2)
            EndFrame()
          end
          FollowWaypoint(Air_Vehicle.xgunship2, Waypoint.gsecond, 0, 0, 20)
          AddToGroup(Unit_Group.xsecond, Air_Vehicle.xgunship2)
        end
        EnterVehicle(Troop.xbaz1, Capture_Point.tundran, constant.ORDER_FORCED)
        EnterVehicle(Troop.xbaz2, Capture_Point.tundran, constant.ORDER_FORCED)
        EnterVehicle(Troop.xbaz3, Capture_Point.tundran, constant.ORDER_FORCED)
        EnterVehicle(Troop.xbaz4, Capture_Point.tundran, constant.ORDER_FORCED)
        EnterVehicle(Troop.xbaz5, Capture_Point.tundran, constant.ORDER_FORCED)
        EnterVehicle(Troop.xbaz6, Capture_Point.tundran, constant.ORDER_FORCED)
        gunship = 1
      end
    elseif gunship == 1 then
      timeout = timeout + 1
      if GetGroupHealthPercent(Unit_Group.xsecond) == 0 then
        WaitFor(5)
        PhoneMessage(15, constant.ID_NONE, 1, 5, SpriteID.CO_X_Vlad_Sad)
        WaitFor(6)
        SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.north, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if 0 < GetGroupHealthPercent(Unit_Group.first) then
          SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.south, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          PhoneMessage(16, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
        else
          PhoneMessage(27, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
        end
        loop = 1
      end
    end
    if gunship == 1 and timeout > 120 then
      FollowWaypoint(Unit_Group.xsecond, Waypoint.palace, 0, 0, constant.ORDER_FORCED)
      PhoneMessage(16, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      WaitFor(6)
      loop = 1
    end
    EndFrame()
    WaitFor(1)
  end
  loop = 0
  WaitFor(3)
  battle = 3
end
