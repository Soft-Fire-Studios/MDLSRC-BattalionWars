function C3M1_Solar02(owner)
  Despawn(Troop.Sgrunt0017)
  Despawn(Troop.Sgrunt0018)
  Despawn(Troop.Sgrunt0019)
  Despawn(Troop.Sgrunt0020)
  local assaultDone = 0
  local XgruntsDead = 0
  local SolarSpawned = 0
  local Sgrunt0017Dead = 0
  local Sgrunt0018Dead = 0
  local Sgrunt0019Dead = 0
  local Sgrunt0020Dead = 0
  while true do
    if 0 < GetPlayerUnit() and IsInArea(GetPlayerUnit(), Map_Zone.SendingReinforcements) and SolarSpawned == 0 then
      SolarSpawned = 1
      Spawn(Troop.Sgrunt0017)
      Spawn(Troop.Sgrunt0018)
      Spawn(Troop.Sgrunt0019)
      Spawn(Troop.Sgrunt0020)
    end
    if 0 < GetPlayerUnit() and IsInArea(GetPlayerUnit(), Map_Zone.Solar_Lower_Beach) and assaultDone == 0 then
      assaultDone = 1
      DebugOut("Begin Lower Beach Attack")
      FollowWaypoint(Troop.Sgrunt0017, Waypoint.Entity0118, 5, 10, constant.ORDER_FORCED)
      FollowWaypoint(Troop.Sgrunt0018, Waypoint.Entity0118, 5, 10, constant.ORDER_FORCED)
      FollowWaypoint(Troop.Sgrunt0019, Waypoint.Entity0193, 5, 10, constant.ORDER_FORCED)
      FollowWaypoint(Troop.Sgrunt0020, Waypoint.Entity0193, 5, 10, constant.ORDER_FORCED)
    end
    if Sgrunt0017Dead == 0 and IsDead(Troop.Sgrunt0017) then
      Sgrunt0017Dead = 1
    end
    if Sgrunt0018Dead == 0 and IsDead(Troop.Sgrunt0018) then
      Sgrunt0018Dead = 1
    end
    if Sgrunt0019Dead == 0 and IsDead(Troop.Sgrunt0019) then
      Sgrunt0019Dead = 1
    end
    if Sgrunt0020Dead == 0 and IsDead(Troop.Sgrunt0020) then
      Sgrunt0020Dead = 1
    end
    if IsDead(Troop.Xgrunt0011) and IsDead(Troop.Xgrunt0013) and IsDead(Troop.Xgrunt0014) and IsDead(Troop.Xgrunt0015) and IsDead(Troop.Xgrunt0016) and XgruntsDead == 0 then
      assaultDone = 1
      XgruntsDead = 1
    end
    if XgruntsDead == 1 and 0 < GetPlayerUnit() and GetMovementState(GetPlayerUnit()) ~= constant.MOVEMENT_STATE_SWIMMING and GetMovementState(GetPlayerUnit()) ~= constant.MOVEMENT_STATE_AIRBORNE then
      DebugOut("Solar Troops 02 following Player")
      if Sgrunt0017Dead == 0 and GetActionState(Troop.Sgrunt0017) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0017, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Sgrunt0018Dead == 0 and GetActionState(Troop.Sgrunt0018) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0018, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Sgrunt0019Dead == 0 and GetActionState(Troop.Sgrunt0019) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0019, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Sgrunt0020Dead == 0 and GetActionState(Troop.Sgrunt0020) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0020, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      WaitFor(3)
    end
    EndFrame()
  end
  EndFrame()
  return
end
