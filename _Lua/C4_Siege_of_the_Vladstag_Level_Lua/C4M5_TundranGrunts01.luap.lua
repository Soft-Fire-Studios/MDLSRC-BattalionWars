function C4M5_TundranGrunts01(owner)
  while true do
    if NumItemsInArea(Map_Zone.TundranAdvance, flag.TYPE_WFRONTIER) >= 1 then
      GoToArea(Troop.Tgrunt0001, -35, -220, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt0002, -5, -222, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt0003, 35, -230, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt0004, 65, -223, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt0005, -32, -232, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt0006, -3, -240, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt0007, 30, -237, 5, 0, constant.ORDER_NORMAL)
      PhoneMessage(45, 0, 2, 10, SpriteID.CO_T_Nova_Happy)
      PhoneMessage(19, 0, 2, 5, SpriteID.CO_T_Nova_Happy)
      WaitFor(8)
      PhoneMessage(50, 0, 1, 10, SpriteID.CO_X_Ubel_Happy)
      PhoneMessage(51, 0, 1, 10, SpriteID.CO_X_Vlad_Sad)
    else
      EndFrame()
      while true do
        if CapturePoint2Captured == 1 then
          break
        end
        if CapturePoint1Captured == 1 and 0 < GetPlayerUnit() then
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
            WaitFor(3)
          end
        end
        EndFrame()
      end
    end
  end
  EndFrame()
  return
end
