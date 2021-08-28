function owner_Naval_Cannon_Kill_All(owner)
  repeat
    EndFrame()
  until CutsceneBeachTankEnd == 1 or IsDead(Water_Vehicle.AItransport1)
  if IsDead(Water_Vehicle.AItransport1) == false then
    AttackTarget(owner, Water_Vehicle.AItransport1, constant.ORDER_FORCED)
  else
  end
  EndFrame()
  repeat
    EndFrame()
  until CutsceneBeachInfantryEnd == 1 or IsDead(Water_Vehicle.AItransport2)
  if IsDead(Water_Vehicle.AItransport2) == false then
    AttackTarget(owner, Water_Vehicle.AItransport2, constant.ORDER_FORCED)
  else
  end
  EndFrame()
  repeat
    EndFrame()
  until 1 > NumPassengersInUnit(Water_Vehicle.AItransport3) or IsDead(Water_Vehicle.AItransport3)
  WaitFor(1)
  if IsDead(Water_Vehicle.AItransport3) == false then
    AttackTarget(owner, Water_Vehicle.AItransport3, constant.ORDER_FORCED)
  else
  end
  EndFrame()
  repeat
    EndFrame()
  until 1 > NumPassengersInUnit(Water_Vehicle.AItransport4) or IsDead(Water_Vehicle.AItransport4)
  WaitFor(1)
  if IsDead(Water_Vehicle.AItransport4) == false then
    AttackTarget(owner, Water_Vehicle.AItransport4, constant.ORDER_FORCED)
  else
  end
  EndFrame()
  SetUnitAI(Building.NavalCannon1, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  SetUnitAI(Building.NavalCannon2, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  repeat
    EndFrame()
  until IsDead(Water_Vehicle.AItransport4target) and IsDead(Water_Vehicle.AItransport5target)
  repeat
    EndFrame()
  until 1 > NumPassengersInUnit(Water_Vehicle.AItransport6) or IsDead(Water_Vehicle.AItransport6)
  WaitFor(1)
  if IsDead(Water_Vehicle.AItransport6) == false then
    AttackTarget(owner, Water_Vehicle.AItransport6, constant.ORDER_FORCED)
  else
  end
  EndFrame()
  repeat
    EndFrame()
  until IsDead(Water_Vehicle.AItransport6)
  repeat
    EndFrame()
  until 1 > NumPassengersInUnit(Water_Vehicle.AItransport7) or IsDead(Water_Vehicle.AItransport7)
  WaitFor(1)
  if IsDead(Water_Vehicle.AItransport7) == false then
    AttackTarget(owner, Water_Vehicle.AItransport7, constant.ORDER_FORCED)
  else
  end
  EndFrame()
  repeat
    EndFrame()
  until IsDead(Water_Vehicle.AItransport7)
  repeat
    EndFrame()
  until 1 > NumPassengersInUnit(Water_Vehicle.AItransport5) or IsDead(Water_Vehicle.AItransport5)
  WaitFor(1)
  if IsDead(Water_Vehicle.AItransport5) == false then
    AttackTarget(owner, Water_Vehicle.AItransport5, constant.ORDER_FORCED)
  else
  end
  EndFrame()
  repeat
    EndFrame()
  until IsDead(Water_Vehicle.AItransport5)
  repeat
    EndFrame()
  until 1 > NumPassengersInUnit(Water_Vehicle.AItransport8) or IsDead(Water_Vehicle.AItransport8)
  WaitFor(1)
  if IsDead(Water_Vehicle.AItransport8) == false then
    AttackTarget(owner, Water_Vehicle.AItransport8, constant.ORDER_FORCED)
  else
  end
  EndFrame()
end
