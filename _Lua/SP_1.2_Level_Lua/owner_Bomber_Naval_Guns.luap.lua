function owner_Bomber_Naval_Guns(owner)
  GoToArea(owner, GetObjectXPosition(Waypoint.BeachBomber), GetObjectZPosition(Waypoint.BeachBomber), 1, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(owner, Map_Zone.BeachBomberAttack)
  if IsDead(Building.NavalCannon1) == false then
    AttackTarget(owner, Building.NavalCannon1, constant.ORDER_FORCED)
    repeat
      EndFrame()
    until IsDead(Building.NavalCannon1)
    AttackTarget(owner, Building.NavalCannon2, constant.ORDER_FORCED)
    EndFrame()
  else
    AttackTarget(owner, Building.NavalCannon2, constant.ORDER_FORCED)
  end
end
