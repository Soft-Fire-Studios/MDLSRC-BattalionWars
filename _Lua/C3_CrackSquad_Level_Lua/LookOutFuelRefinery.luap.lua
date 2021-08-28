function LookOutFuelRefinery(owner)
  repeat
    WaitFor(0.2)
    if GetActionState(Troop.XGruntFuelRefinery1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntFuelRefinery4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntFuelRefinery5) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntFuelRefinery6) == constant.ACTION_STATE_ATTACK then
      lookoutfuelrefinery = 1
      DebugOut("Player is attacking the fuel refinery")
      break
    end
    WaitFor(0.2)
    if GetActionState(Troop.XBazookaPatrolFuelRefinery1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaPatrolFuelRefinery2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaPatrolFuelRefinery3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaPatrolFuelRefinery4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XFlamerPatrolFuelRefinery1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XFlamerPatrolFuelRefinery2) == constant.ACTION_STATE_ATTACK then
      lookoutfuelrefinery = 1
      DebugOut("Player is attacking the fuel refinery")
      break
    end
  until lookoutfuelrefinery == 1
end
