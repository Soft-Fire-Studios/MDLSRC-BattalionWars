function South_West_Island(owner)
  local loop = 0
  while loop == 0 do
    if 0 < NumItemsInArea(Map_Zone.first, flag.TYPE_WFRONTIER) - NumItemsInArea(Map_Zone.first, flag.GTYPE_BOMBER) then
      WaitFor(5)
      if IsInArea(GetPlayerUnit(), Map_Zone.first) then
        PhoneMessage(5, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
        PhoneMessage(39, constant.ID_NONE, 1, 7, SpriteID.CO_X_Ingrid_Happy)
      end
      GoToArea(Troop.xbaz1, -403.2, -488.9, 5, 0, constant.ORDER_FORCED)
      GoToArea(Troop.xbaz2, -401.3, -433.7, 5, 0, constant.ORDER_FORCED)
      GoToArea(Troop.xbaz3, -387.6, -434.2, 5, 0, constant.ORDER_FORCED)
      loop = 1
    end
    if GetGroupHealthPercent(Unit_Group.first) == 0 then
      loop = 1
    end
    if IsInArea(Air_Vehicle.bomber, Map_Zone.bomber) then
      if IsInArea(GetPlayerUnit(), Map_Zone.swtext) then
        PhoneMessage(7, constant.ID_NONE, 1, 5, SpriteID.CO_X_Vlad_Sad)
        PhoneMessage(40, constant.ID_NONE, 1, 5, SpriteID.CO_X_Ingrid_Sad)
      end
      AttackTarget(Air_Vehicle.gship3, Air_Vehicle.bomber)
      loop = 2
    end
    EndFrame()
  end
  if loop == 1 then
    loop = 0
    while loop == 0 do
      if 0 < NumItemsInArea(Map_Zone.second, flag.TYPE_WFRONTIER) - NumItemsInArea(Map_Zone.second, flag.GTYPE_BOMBER) then
        DebugOut("ground unit in mapzone second")
        FollowWaypoint(Air_Vehicle.gship3, Waypoint.gship3, 0, 0)
        GoToArea(Ground_Vehicle.xtank1, -145, -460, 15)
        loop = 1
      elseif IsInArea(Air_Vehicle.bomber, Map_Zone.second) then
        DebugOut("bomber mapzone second")
        AttackTarget(Air_Vehicle.gship3, Air_Vehicle.bomber)
        if IsInArea(GetPlayerUnit(), Map_Zone.swtext) then
          PhoneMessage(6, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
          PhoneMessage(40, constant.ID_NONE, 1, 5, SpriteID.CO_X_Ingrid_Sad)
        end
        loop = 2
      elseif GetHealthPercent(Ground_Vehicle.xtank1) < 85 then
        DebugOut("tank1 down")
        FollowWaypoint(Air_Vehicle.gship3, Waypoint.gship3, 0, 0)
        loop = 1
      else
        if 85 > GetHealthPercent(Ground_Vehicle.xtank2) then
          DebugOut("tank2 down")
          FollowWaypoint(Air_Vehicle.gship3, Waypoint.gship3, 0, 0)
          GoToArea(Ground_Vehicle.xtank1, -145, -460, 15)
          loop = 1
        else
        end
      end
      EndFrame()
    end
  end
  if loop == 1 then
    if IsInArea(GetPlayerUnit(), Map_Zone.swtext) then
      PhoneMessage(7, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
      PhoneMessage(41, constant.ID_NONE, 1, 7, SpriteID.CO_X_Ingrid_Sad)
      loop = 2
    end
    EndFrame()
  end
end
