function Gambit_Part_1_Stay_Here(owner)
  local x = GetObjectXPosition(owner)
  local z = GetObjectZPosition(owner)
  repeat
    EndFrame()
  until cutsceneStart == 1
  repeat
    if IsInArea(owner, x, z, 10) then
      EndFrame()
    else
      GoToArea(owner, x, z, 5, 0, constant.ORDER_FORCED)
      WaitFor(1)
    end
  until IsDead(owner)
end
