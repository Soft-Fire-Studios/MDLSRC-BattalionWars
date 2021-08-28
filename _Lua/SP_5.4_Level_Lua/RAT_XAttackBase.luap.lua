function RAT_XAttackBase(owner)
  local RandomNumber = 0
  local HasTarget = 0
  while missionend == 0 do
    WaitFor(5)
    RandomNumber = GetRandom(1, 100)
    HasTarget = 0
    if IsInArea(owner, Map_Zone.TT_HQ_Spawn) then
      if GetHealthPercent(owner) < 60 then
        if RandomNumber <= 30 and not IsDead(Building.TundranRadarStation) then
          DebugOut("Attack Tundran Radar Station")
          AttackTarget(owner, Building.TundranRadarStation, constant.ORDER_NORMAL)
          HasTarget = 1
        end
        if RandomNumber > 70 and not IsDead(Ground_Vehicle.T_Battlestation) then
          DebugOut("Attack Battlestation")
          GoToArea(owner, GetObjectXPosition(Ground_Vehicle.T_Battlestation), GetObjectZPosition(Ground_Vehicle.T_Battlestation), 30, 0, constant.ORDER_NORMAL)
          HasTarget = 1
        end
        if HasTarget == 0 then
          DebugOut("Attack Player")
          AttackTarget(owner, GetPlayerUnit(), constant.ORDER_NORMAL)
          HasTarget = 1
        end
      end
      EndFrame()
    end
    EndFrame()
  end
end
