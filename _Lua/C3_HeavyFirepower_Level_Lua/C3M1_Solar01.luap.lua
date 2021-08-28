function C3M1_Solar01(owner)
  local BeachAttackDone = 0
  local TowardsBattlestationDone = 0
  local Sgrunt0001Dead = 0
  local Sgrunt0002Dead = 0
  local Sgrunt0003Dead = 0
  local Sgrunt0008Dead = 0
  local Sgrunt0009Dead = 0
  local Sgrunt0010Dead = 0
  local Schain0001Dead = 0
  local Schain0002Dead = 0
  local Schain0003Dead = 0
  local Shose0001Dead = 0
  local Shose0002Dead = 0
  local Shose0003Dead = 0
  while true do
    if 0 < GetPlayerUnit() and BeachAttackDone > 0 and GetMovementState(GetPlayerUnit()) ~= constant.MOVEMENT_STATE_SWIMMING and GetMovementState(GetPlayerUnit()) ~= constant.MOVEMENT_STATE_AIRBORNE then
      DebugOut("Solar Hoses following Player")
      if GetActionState(Troop.Shose0001) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Shose0001, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if GetActionState(Troop.Shose0002) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Shose0002, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if GetActionState(Troop.Shose0003) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Shose0003, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      WaitFor(3)
    end
    if BeachAttackDone == 0 and 0 < GetPlayerUnit() and (IsInRectangle(GetPlayerUnit(), -1000, -360, 1000, -260) or IsInRectangle(Troop.WFgrunt0005, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFgrunt0006, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFgrunt0007, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFgrunt0008, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFgrunt0009, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFgrunt0010, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFchain0001, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFchain0002, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFchain0003, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFbazooka0001, -1000, -360, 1000, -260) or IsInRectangle(Troop.WFbazooka0002, -1000, -360, 1000, -260) or 0 < BattlestationMoved) then
      BeachAttackDone = 1
      DebugOut("Begin Beach Attack")
      PhoneMessage(7, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy)
      FollowWaypoint(Troop.Sgrunt0001, Waypoint.Entity0007, 5, 10)
      FollowWaypoint(Troop.Sgrunt0002, Waypoint.Entity0010, 5, 10)
      FollowWaypoint(Troop.Sgrunt0003, Waypoint.Entity0197, 5, 10)
      FollowWaypoint(Troop.Sgrunt0008, Waypoint.Entity0187, 5, 10)
      FollowWaypoint(Troop.Sgrunt0009, Waypoint.Entity0190, 5, 10)
      FollowWaypoint(Troop.Sgrunt0010, Waypoint.Entity0203, 5, 10)
      FollowWaypoint(Troop.Schain0001, Waypoint.Entity0013, 5, 10)
      FollowWaypoint(Troop.Schain0002, Waypoint.Entity0016, 5, 10)
      FollowWaypoint(Troop.Schain0003, Waypoint.Entity0200, 5, 10)
    end
    if TowardsBattlestationDone == 0 and 0 < GetPlayerUnit() and (IsInRectangle(GetPlayerUnit(), -1000, -200, 1000, -100) or IsInRectangle(Troop.WFgrunt0005, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFgrunt0006, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFgrunt0007, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFgrunt0008, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFgrunt0009, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFgrunt0010, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFchain0001, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFchain0002, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFchain0003, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFbazooka0001, -1000, -200, 1000, -100) or IsInRectangle(Troop.WFbazooka0002, -1000, -200, 1000, -100)) then
      TowardsBattlestationDone = 1
      DebugOut("Solar Troops head towards Battlestation")
      GoToArea(Troop.Sgrunt0001, -315, -170, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Sgrunt0002, -335, -155, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Sgrunt0003, -300, -140, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Sgrunt0008, -260, -165, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Sgrunt0009, -250, -160, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Sgrunt0010, -255, -157, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Schain0001, -295, -160, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Schain0002, -310, -170, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Schain0003, -290, -155, 10, 0, constant.ORDER_NORMAL)
    end
    if Sgrunt0001Dead == 0 and IsDead(Troop.Sgrunt0001) then
      Sgrunt0001Dead = 1
    end
    if Sgrunt0002Dead == 0 and IsDead(Troop.Sgrunt0002) then
      Sgrunt0002Dead = 1
    end
    if Sgrunt0003Dead == 0 and IsDead(Troop.Sgrunt0003) then
      Sgrunt0003Dead = 1
    end
    if Sgrunt0008Dead == 0 and IsDead(Troop.Sgrunt0008) then
      Sgrunt0008Dead = 1
    end
    if Sgrunt0009Dead == 0 and IsDead(Troop.Sgrunt0009) then
      Sgrunt0009Dead = 1
    end
    if Sgrunt0010Dead == 0 and IsDead(Troop.Sgrunt0010) then
      Sgrunt0010Dead = 1
    end
    if Shose0001Dead == 0 and IsDead(Troop.Shose0001) then
      Shose0001Dead = 1
    end
    if Shose0002Dead == 0 and IsDead(Troop.Shose0002) then
      Shose0002Dead = 1
    end
    if Shose0003Dead == 0 and IsDead(Troop.Shose0003) then
      Shose0003Dead = 1
    end
    if Schain0001Dead == 0 and IsDead(Troop.Schain0001) then
      Schain0001Dead = 1
    end
    if Schain0002Dead == 0 and IsDead(Troop.Schain0002) then
      Schain0002Dead = 1
    end
    if Schain0003Dead == 0 and IsDead(Troop.Schain0003) then
      Schain0003Dead = 1
    end
    if IsDead(Ground_Vehicle.Xbattlestation0002) and 0 < GetPlayerUnit() and GetMovementState(GetPlayerUnit()) ~= constant.MOVEMENT_STATE_SWIMMING and GetMovementState(GetPlayerUnit()) ~= constant.MOVEMENT_STATE_AIRBORNE then
      DebugOut("Solar Troops 01 following Player")
      if Sgrunt0001Dead == 0 and GetActionState(Troop.Sgrunt0001) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0001, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Sgrunt0002Dead == 0 and GetActionState(Troop.Sgrunt0002) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0002, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Sgrunt0003Dead == 0 and GetActionState(Troop.Sgrunt0003) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0003, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Sgrunt0008Dead == 0 and GetActionState(Troop.Sgrunt0008) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0008, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Sgrunt0009Dead == 0 and GetActionState(Troop.Sgrunt0009) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0009, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Sgrunt0010Dead == 0 and GetActionState(Troop.Sgrunt0010) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Sgrunt0010, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Shose0001Dead == 0 and GetActionState(Troop.Shose0001) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Shose0001, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Shose0002Dead == 0 and GetActionState(Troop.Shose0002) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Shose0002, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Shose0003Dead == 0 and GetActionState(Troop.Shose0003) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Shose0003, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Schain0001Dead == 0 and GetActionState(Troop.Schain0001) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Schain0001, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Schain0002Dead == 0 and GetActionState(Troop.Schain0002) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Schain0002, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if Schain0003Dead == 0 and GetActionState(Troop.Schain0003) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.Schain0003, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      WaitFor(3)
    end
    EndFrame()
  end
  EndFrame()
  return
end
