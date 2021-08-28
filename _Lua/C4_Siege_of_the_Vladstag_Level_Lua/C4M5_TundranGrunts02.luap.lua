function C4M5_TundranGrunts02(owner)
  Despawn(Troop.Tgrunt0009)
  Despawn(Troop.Tgrunt0010)
  Despawn(Troop.Tgrunt0011)
  Despawn(Troop.Tgrunt0012)
  while true do
    if CapturePoint2Captured == 1 then
      Spawn(Troop.Tgrunt0009)
      Spawn(Troop.Tgrunt0010)
      Spawn(Troop.Tgrunt0011)
      Spawn(Troop.Tgrunt0012)
      if IsDead(Troop.Tgrunt0001) then
        Teleport(Troop.Tgrunt0001, -80, -700, 0, 10)
        WaitFor(1)
        ReviveDeadUnit(Troop.Tgrunt0001)
      end
      if IsDead(Troop.Tgrunt0002) then
        Teleport(Troop.Tgrunt0002, -85, -700, 0, 10)
        WaitFor(1)
        ReviveDeadUnit(Troop.Tgrunt0002)
      end
      if IsDead(Troop.Tgrunt0003) then
        Teleport(Troop.Tgrunt0003, -90, -700, 0, 10)
        WaitFor(1)
        ReviveDeadUnit(Troop.Tgrunt0003)
      end
      if IsDead(Troop.Tgrunt0004) then
        Teleport(Troop.Tgrunt0004, -95, -700, 0, 10)
        WaitFor(1)
        ReviveDeadUnit(Troop.Tgrunt0004)
      end
      if IsDead(Troop.Tgrunt0005) then
        Teleport(Troop.Tgrunt0005, -80, -705, 0, 10)
        WaitFor(1)
        ReviveDeadUnit(Troop.Tgrunt0005)
      end
      if IsDead(Troop.Tgrunt0006) then
        Teleport(Troop.Tgrunt0006, -85, -705, 0, 10)
        WaitFor(1)
        ReviveDeadUnit(Troop.Tgrunt0006)
      end
      if IsDead(Troop.Tgrunt0007) then
        Teleport(Troop.Tgrunt0007, -90, -705, 0, 10)
        WaitFor(1)
        ReviveDeadUnit(Troop.Tgrunt0007)
      end
    else
      EndFrame()
      while true do
        if 0 < GetPlayerUnit() then
          if GetMovementState(GetPlayerUnit()) == constant.MOVEMENT_STATE_SWIMMING then
            if GetActionState(Troop.Tgrunt0001) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0001)
            end
            if GetActionState(Troop.Tgrunt0002) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0002)
            end
            if GetActionState(Troop.Tgrunt0003) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0003)
            end
            if GetActionState(Troop.Tgrunt0004) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0004)
            end
            if GetActionState(Troop.Tgrunt0005) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0005)
            end
            if GetActionState(Troop.Tgrunt0006) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0006)
            end
            if GetActionState(Troop.Tgrunt0007) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0007)
            end
            if GetActionState(Troop.Tgrunt0009) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0009)
            end
            if GetActionState(Troop.Tgrunt0010) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0010)
            end
            if GetActionState(Troop.Tgrunt0011) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0011)
            end
            if GetActionState(Troop.Tgrunt0012) ~= constant.ACTION_STATE_ATTACK then
              StopAndGuard(Troop.Tgrunt0012)
            end
          end
          if GetMovementState(GetPlayerUnit()) ~= constant.MOVEMENT_STATE_SWIMMING then
            if GetActionState(Troop.Tgrunt0001) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0001, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0002) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0002, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0003) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0003, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0004) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0004, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0005) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0005, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0006) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0006, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0007) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0007, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0009) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0009, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0010) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0010, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0011) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0011, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
            if GetActionState(Troop.Tgrunt0012) ~= constant.ACTION_STATE_ATTACK then
              FollowUnit(Troop.Tgrunt0012, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
            end
          end
          if GetActionState(Air_Vehicle.TGunship1) ~= constant.ACTION_STATE_ATTACK then
            FollowUnit(Air_Vehicle.TGunship1, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
          end
          if GetActionState(Air_Vehicle.TGunship2) ~= constant.ACTION_STATE_ATTACK then
            FollowUnit(Air_Vehicle.TGunship2, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
          end
          if GetActionState(Air_Vehicle.TGunship3) ~= constant.ACTION_STATE_ATTACK then
            FollowUnit(Air_Vehicle.TGunship3, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
          end
          if GetActionState(Air_Vehicle.TGunship4) ~= constant.ACTION_STATE_ATTACK then
            FollowUnit(Air_Vehicle.TGunship4, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
          end
          WaitFor(3)
        end
        EndFrame()
      end
    end
  end
  EndFrame()
  return
end
