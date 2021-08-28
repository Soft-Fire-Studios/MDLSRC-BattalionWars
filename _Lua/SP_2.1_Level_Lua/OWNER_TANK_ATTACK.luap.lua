function OWNER_TANK_ATTACK(owner)
  local AttackingTarget = false
  repeat
    EndFrame()
    WaitFor(1)
  until DefenceMissionFinished == true
  WaitFor(25)
  repeat
    WaitFor(10)
    if AttackingTarget == false and IsDead(owner) == false and IsInArea(GetPlayerUnit(), Map_Zone.Barracks) == false then
      AttackTarget(owner, GetPlayerUnit(), constant.ORDER_FORCED)
      AttackingTarget = true
    end
    EndFrame()
    if AttackingTarget == true and IsDead(owner) == true then
      AttackingTarget = false
    end
    EndFrame()
  until FactoryCaptured == true
end
