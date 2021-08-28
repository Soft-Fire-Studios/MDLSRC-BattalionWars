function ORDER_DREADNAUGHT_ATTACKS_STATUE(owner)
  repeat
    EndFrame()
    WaitFor(1)
  until DreadnoughtTime == true
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsInArea(Water_Vehicle.SEdreadnaught, Map_Zone.statue)
  AttackTarget(Water_Vehicle.SEdreadnaught, Building.Statue, constant.ORDER_FORCED)
  repeat
    WaitFor(15)
    AttackTarget(Water_Vehicle.SEdreadnaught, Building.Statue, constant.ORDER_FORCED)
    EndFrame()
  until IsDead(Water_Vehicle.SEdreadnaught) == true
end
