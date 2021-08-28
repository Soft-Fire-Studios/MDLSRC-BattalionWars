function JW_Capture_AntiArmour(owner)
  repeat
    if GetPrimaryActionState(owner) ~= constant.ACTION_STATE_IN_UNIT_CARRIER and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_ATTACK and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_MOVING_TO_AREA then
      if IsDead(Ground_Vehicle.SE_AATank01) == false then
        AttackTarget(owner, Ground_Vehicle.SE_AATank01, constant.ORDER_NORMAL)
      elseif IsDead(Ground_Vehicle.SE_AATank01) then
        repeat
          EndFrame()
        until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
        AttackTarget(owner, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      end
    end
    EndFrame()
  until IsDead(owner)
end
