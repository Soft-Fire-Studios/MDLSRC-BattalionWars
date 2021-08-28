function LookOutMuntionsDump(owner)
  repeat
    WaitFor(0.2)
    if GetActionState(Troop.XGruntDriver1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntDriver2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntDriver3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntDriver4) == constant.ACTION_STATE_ATTACK or GetActionState(Ground_Vehicle.XTank6) == constant.ACTION_STATE_ATTACK or GetActionState(Ground_Vehicle.XTank7) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntRocketPatrol1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntRocketPatrol2) == constant.ACTION_STATE_ATTACK then
      lookoutmuntionsdump = 1
      DebugOut("Player is attacking the munitions dump")
      break
    end
    if GetActionState(Troop.XGruntWatchtower1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntWatchtower2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntWatchtower3) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MunitionsWatchTower1) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MunitionsWatchTower2) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MunitionsWatchTower3) == constant.ACTION_STATE_ATTACK then
      lookoutmuntionsdump = 1
      DebugOut("Player is attacking the munitions dump")
      break
    end
    EndFrame()
  until lookoutmuntionsdump == 1
end
