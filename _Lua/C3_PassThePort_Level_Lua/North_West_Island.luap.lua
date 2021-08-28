function North_West_Island(owner)
  local loop = 0
  while loop == 0 do
    if GetGroupHealth(Unit_Group.art) < 35 then
      FollowWaypoint(Air_Vehicle.gship1, Waypoint.gship1, 0, 0)
      if 0 < NumItemsInArea(Map_Zone.nw, flag.GTYPE_BOMBER) then
        AttackTarget(Air_Vehicle.gship2, Air_Vehicle.bomber)
      else
        GoToArea(Air_Vehicle.gship2, -255, -45, 30)
      end
      loop = 1
    elseif GetHealthPercent(Ground_Vehicle.xtank4) < 65 then
      FollowWaypoint(Air_Vehicle.gship2, Waypoint.gship1, 0, 0)
      GoToArea(Air_Vehicle.gship2, -105, -35, 30)
      if 0 < NumItemsInArea(Map_Zone.nw, flag.GTYPE_BOMBER) then
        AttackTarget(Air_Vehicle.gship1, Air_Vehicle.bomber)
      else
        GoToArea(Air_Vehicle.gship1, -95, 45, 30)
      end
      loop = 1
    else
      if 0 < GetGroupHealth(Unit_Group.west1) and 0 < NumPassengersInUnit(Capture_Point.west) then
        PhoneMessage(14, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
        GoToArea(Unit_Group.west1, -105, 40, 30)
        loop = 2
      else
      end
    end
    EndFrame()
  end
  if loop == 1 then
    if IsInArea(Air_Vehicle.bomber, Map_Zone.nwtext) then
      PhoneMessage(9, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
    end
    WaitFor(30)
    loop = 0
    while loop == 0 do
      if NumItemsInArea(Map_Zone.nw, flag.TYPE_WFRONTIER) == 0 then
        FollowWaypoint(Air_Vehicle.gship2, Waypoint.gship1, 0, 0)
        if 0 < NumItemsInArea(Map_Zone.nw, flag.GTYPE_BOMBER) then
          AttackTarget(Air_Vehicle.gship1, Air_Vehicle.bomber)
        else
          GoToArea(Air_Vehicle.gship1, -95, 45, 30)
        end
        loop = 1
      else
        if 0 < GetGroupHealth(Unit_Group.west1) and 0 < NumPassengersInUnit(Capture_Point.west) then
          PhoneMessage(14, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
          GoToArea(Unit_Group.west1, -105, 40, 30)
          loop = 2
        else
        end
      end
      EndFrame()
    end
  end
  if loop == 1 then
    loop = 0
  end
end
