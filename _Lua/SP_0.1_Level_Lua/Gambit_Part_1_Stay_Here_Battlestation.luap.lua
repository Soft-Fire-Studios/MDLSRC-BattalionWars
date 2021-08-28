function Gambit_Part_1_Stay_Here_Battlestation(owner)
  local x = GetObjectXPosition(owner)
  local z = GetObjectZPosition(owner)
  repeat
    EndFrame()
  until cutsceneStart == 1
  repeat
    if owner == Ground_Vehicle.ILbattlestation01 and GetHealthPercent(Ground_Vehicle.ILbattlestation01) <= 5 then
      SetHealthPercent(Ground_Vehicle.ILbattlestation01, 5)
    end
    if IsInArea(owner, x, z, 5) and cutsceneMidGameTowerBegin < 2 then
      EndFrame()
    else
      GoToArea(owner, x, z, 2, 0, constant.ORDER_FORCED)
      WaitFor(0.1)
    end
  until IsDead(owner)
end
