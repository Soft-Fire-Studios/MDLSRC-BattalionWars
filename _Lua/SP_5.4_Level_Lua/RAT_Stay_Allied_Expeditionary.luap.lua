function RAT_Stay_Allied_Expeditionary(owner)
  local x = GetObjectXPosition(owner)
  local z = GetObjectZPosition(owner)
  while true do
    if not IsDead(owner) then
      if IsInArea(owner, x, z, 15) then
        EndFrame()
      else
        GoToArea(owner, x, z, 5, 0, constant.ORDER_FORCED)
        WaitFor(1)
      end
    end
    if IsInRange(GetPlayerUnit(), owner, 150) then
      SetUnitInvulnerable(owner, false)
    else
      SetUnitInvulnerable(owner, true)
    end
    EndFrame()
  end
end
