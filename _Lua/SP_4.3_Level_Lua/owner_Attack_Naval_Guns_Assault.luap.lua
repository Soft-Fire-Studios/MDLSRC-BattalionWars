function owner_Attack_Naval_Guns_Assault(owner)
  repeat
    EndFrame()
  until GetPrimaryActionState(owner) ~= constant.ACTION_STATE_IN_UNIT_CARRIER
  WaitFor(1)
  SetUnitAI(owner, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  if owner == Troop.SEAssault03 or owner == Troop.SEAssault04 or owner == Troop.SEAssault05 then
    if IsDead(Building.NavalGun01) == false then
      GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun01PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun01PathEnd), 5, 0, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun01PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun01PathEnd), 5, 0, constant.ORDER_FORCED)
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
      GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun02PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun02PathEnd), 5, 0, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun02PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun02PathEnd), 5, 0, constant.ORDER_FORCED)
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
      GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun02PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun02PathEnd), 5, 0, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun02PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun02PathEnd), 5, 0, constant.ORDER_FORCED)
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
    EndFrame()
  else
    if IsDead(Building.NavalGun02) == false then
      GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun02PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun02PathEnd), 5, 0, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun02PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun02PathEnd), 5, 0, constant.ORDER_FORCED)
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
      GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun01PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun01PathEnd), 5, 0, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun01PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun01PathEnd), 5, 0, constant.ORDER_FORCED)
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
      GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun01PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun01PathEnd), 5, 0, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        GoToArea(owner, GetObjectXPosition(Waypoint.AttackNavalGun01PathEnd), GetObjectZPosition(Waypoint.AttackNavalGun01PathEnd), 5, 0, constant.ORDER_FORCED)
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
    end
    EndFrame()
  end
  EndFrame()
end
