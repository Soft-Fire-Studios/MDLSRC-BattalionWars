function Gambit_Part_1_Stay_Here_Strike_Team(owner)
  local x = GetObjectXPosition(owner)
  local z = GetObjectZPosition(owner)
  repeat
    EndFrame()
  until cutsceneStart == 1
  repeat
    if IsInArea(owner, x, z, 2) then
      EndFrame()
    else
      GoToArea(owner, x, z, 2, 0, constant.ORDER_FORCED)
      WaitFor(1)
    end
    if 1 > ILgates01Done and GetHealthPercent(owner) < 100 then
      SetHealthPercent(owner, 100)
    end
  until 1 <= StrikeForce01Done
end
