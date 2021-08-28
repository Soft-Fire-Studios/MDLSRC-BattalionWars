function owner_Stop_and_Guard(owner)
  if owner == Troop.SEGrunt09 or owner == Troop.SEGrunt10 then
    WaitFor(15)
    StopAndGuard(owner)
    repeat
      if IsInArea(owner, Map_Zone.MakeGruntsInactive) == false then
        SetActive(owner, constant.ACTIVE)
      end
      EndFrame()
    until IsActive(owner)
  else
    WaitFor(10)
    StopAndGuard(owner)
    EndFrame()
    while true do
      if IsInArea(owner, Map_Zone.KillSolarInfantry1) or IsInArea(owner, Map_Zone.KillSolarInfantry2) then
        Kill(owner)
        break
      end
      EndFrame()
    end
  end
end
