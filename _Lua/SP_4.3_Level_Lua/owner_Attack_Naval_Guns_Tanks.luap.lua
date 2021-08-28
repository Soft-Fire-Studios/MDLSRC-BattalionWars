function owner_Attack_Naval_Guns_Tanks(owner)
  repeat
    EndFrame()
  until GetPrimaryActionState(owner) ~= constant.ACTION_STATE_IN_UNIT_CARRIER
  WaitFor(1)
  SetUnitAI(owner, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  if owner == Ground_Vehicle.SELightTank03 then
    if IsDead(Building.NavalGun01) == false then
      FollowWaypoint(owner, Waypoint.AttackNavalGun01Path, 0, 0, constant.ORDER_FORCED)
      repeat
        EndFrame()
      until IsInArea(owner, Map_Zone.AttackNavalGun01)
      AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        if not IsInArea(owner, Map_Zone.AttackNavalGun01) then
          GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun01PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun01PathEnd), 5, 0, constant.ORDER_FORCED)
        else
          AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
        end
        EndFrame()
      until IsDead(Building.NavalGun01)
      FollowWaypoint(owner, Waypoint.AttackNavalGun02PathAlt, 0, 0, constant.ORDER_FORCED)
      repeat
        EndFrame()
      until IsInArea(owner, Map_Zone.AttackNavalGun02)
      AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        if not IsInArea(owner, Map_Zone.AttackNavalGun02) then
          GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun02PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun02PathEnd), 5, 0, constant.ORDER_FORCED)
        else
          AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
        end
        EndFrame()
      until IsDead(Building.NavalGun02)
    else
      FollowWaypoint(owner, Waypoint.AttackNavalGun02Path, 0, 0, constant.ORDER_FORCED)
      repeat
        EndFrame()
      until IsInArea(owner, Map_Zone.AttackNavalGun02)
      AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        if not IsInArea(owner, Map_Zone.AttackNavalGun02) then
          GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun02PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun02PathEnd), 5, 0, constant.ORDER_FORCED)
        else
          AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
        end
        EndFrame()
      until IsDead(Building.NavalGun02)
    end
  elseif IsDead(Building.NavalGun02) == false then
    FollowWaypoint(owner, Waypoint.AttackNavalGun02Path, 0, 0, constant.ORDER_FORCED)
    repeat
      EndFrame()
    until IsInArea(owner, Map_Zone.AttackNavalGun02)
    AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
    repeat
      WaitFor(1)
      if not IsInArea(owner, Map_Zone.AttackNavalGun02) then
        GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun02PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun02PathEnd), 5, 0, constant.ORDER_FORCED)
      else
        AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
      end
      EndFrame()
    until IsDead(Building.NavalGun02)
    repeat
      EndFrame()
    until IsDead(Building.NavalGun02)
    FollowWaypoint(owner, Waypoint.AttackNavalGun01PathAlt, 0, 0, constant.ORDER_FORCED)
    repeat
      EndFrame()
    until IsInArea(owner, Map_Zone.AttackNavalGun01)
    AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
    repeat
      WaitFor(1)
      if not IsInArea(owner, Map_Zone.AttackNavalGun01) then
        GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun01PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun01PathEnd), 5, 0, constant.ORDER_FORCED)
      else
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
      end
      EndFrame()
    until IsDead(Building.NavalGun01)
  else
    FollowWaypoint(owner, Waypoint.AttackNavalGun01Path, 0, 0, constant.ORDER_FORCED)
    repeat
      EndFrame()
    until IsInArea(owner, Map_Zone.AttackNavalGun01)
    repeat
      WaitFor(1)
      if not IsInArea(owner, Map_Zone.AttackNavalGun01) then
        GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun01PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun01PathEnd), 5, 0, constant.ORDER_FORCED)
      else
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
      end
      EndFrame()
    until IsDead(Building.NavalGun01)
    AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
  end
end
