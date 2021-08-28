function owner_Attack_Naval_Guns_Mortars(owner)
  repeat
    EndFrame()
  until GetPrimaryActionState(owner) ~= constant.ACTION_STATE_IN_UNIT_CARRIER
  WaitFor(1)
  SetUnitAI(owner, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  if owner == Troop.SEMortar01 or owner == Troop.SEMortar02 or owner == Troop.SEMortar03 then
    if IsDead(Building.MGNest01) == false and GetNumSeatsFree(Building.MGNest01) == 0 then
      AttackTarget(owner, Building.MGNest01)
      repeat
        EndFrame()
      until IsDead(Building.MGNest01) or GetNumSeatsFree(Building.MGNest01) ~= 0
    else
    end
    EndFrame()
    if IsDead(Building.MGNest02) == false and GetNumSeatsFree(Building.MGNest02) == 0 then
      AttackTarget(owner, Building.MGNest02)
      repeat
        EndFrame()
      until IsDead(Building.MGNest02) or GetNumSeatsFree(Building.MGNest02) ~= 0
    else
    end
    EndFrame()
  else
    if IsDead(Building.MGNest03) == false and GetNumSeatsFree(Building.MGNest03) == 0 then
      AttackTarget(owner, Building.MGNest03)
      repeat
        EndFrame()
      until IsDead(Building.MGNest03) or GetNumSeatsFree(Building.MGNest03) ~= 0
    else
    end
    EndFrame()
    if IsDead(Building.MGNest04) == false and GetNumSeatsFree(Building.MGNest04) == 0 then
      AttackTarget(owner, Building.MGNest04)
      repeat
        EndFrame()
      until IsDead(Building.MGNest04) or GetNumSeatsFree(Building.MGNest04) ~= 0
    else
    end
    EndFrame()
  end
  EndFrame()
  if owner == Troop.SEMortar01 or owner == Troop.SEMortar02 or owner == Troop.SEMortar03 then
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
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
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
        AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
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
        AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
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
        AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
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
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
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
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
        EndFrame()
      until IsDead(Building.NavalGun01)
    end
    EndFrame()
  end
  EndFrame()
end
