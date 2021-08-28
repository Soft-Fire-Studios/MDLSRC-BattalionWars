function Gambit_Part_1_Stay_Here_Trench(owner)
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
    if IsInRange(GetPlayerUnit(), owner, 100) then
      SetActive(owner, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetUnitInvulnerable(owner, false)
    else
      SetActive(owner, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetUnitInvulnerable(owner, true)
    end
  until ILbazooka01Done == 1
  SetActive(owner, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(owner, false)
end
