function RAT_XAttackRadar(owner)
  local RandomTimer = 0
  while missionend == 0 do
    if IsInArea(owner, Map_Zone.AttackRadar) then
      if IsInRange(owner, Ground_Vehicle.T_Battlestation, 50) then
        AttackTarget(owner, Ground_Vehicle.T_Battlestation, constant.ORDER_NORMAL)
      else
        if not IsDead(Building.WFRadarStation03) then
          AttackTarget(owner, Building.WFRadarStation03, constant.ORDER_FORCED)
        end
        if not IsDead(Building.WFRadarStation02) then
          AttackTarget(owner, Building.WFRadarStation02, constant.ORDER_FORCED)
        end
        if not IsDead(Building.WFRadarStation01) then
          AttackTarget(owner, Building.WFRadarStation01, constant.ORDER_FORCED)
        end
      end
      WaitFor(1)
      EndFrame()
    end
    EndFrame()
  end
end
