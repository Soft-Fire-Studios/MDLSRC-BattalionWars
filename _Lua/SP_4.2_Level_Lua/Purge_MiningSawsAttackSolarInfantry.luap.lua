function Purge_MiningSawsAttackSolarInfantry(owner)
  local HaveTarget = 0
  while true do
    if cutsceneEndBegin == 1 then
      break
    end
    if 1 <= ForcefieldDown then
      if owner == Troop.Entity330002130 and not IsDead(Building.Saw03) then
        HaveTarget = 1
        AttackTarget(owner, Building.Saw03, constant.ORDER_NORMAL)
        WaitFor(1)
      end
      if owner == Troop.Entity330002131 and not IsDead(Building.Saw01) then
        HaveTarget = 1
        AttackTarget(owner, Building.Saw01, constant.ORDER_NORMAL)
        WaitFor(1)
      end
      if owner == Troop.Entity330002129 and not IsDead(Building.Saw01) then
        HaveTarget = 1
        AttackTarget(owner, Building.Saw01, constant.ORDER_NORMAL)
        WaitFor(1)
      end
      if owner == Troop.Entity330002128 and not IsDead(Building.Saw01) then
        HaveTarget = 1
        AttackTarget(owner, Building.Saw01, constant.ORDER_NORMAL)
        WaitFor(1)
      end
      if NumItemsInArea(GetObjectXPosition(owner), GetObjectZPosition(owner), 60, 1 > flag.TYPE_UNDERWORLD) then
        if not IsDead(Building.Saw01) and HaveTarget == 0 then
          HaveTarget = 1
          AttackTarget(owner, Building.Saw01, constant.ORDER_NORMAL)
        end
        if not IsDead(Building.Saw02) and HaveTarget == 0 then
          HaveTarget = 1
          AttackTarget(owner, Building.Saw02, constant.ORDER_NORMAL)
        end
        if not IsDead(Building.Saw03) and HaveTarget == 0 then
          HaveTarget = 1
          AttackTarget(owner, Building.Saw03, constant.ORDER_NORMAL)
        end
      else
        StopAndGuard(owner)
      end
      WaitFor(1)
      HaveTarget = 0
    end
    EndFrame()
  end
  StopAndGuard(owner)
end
