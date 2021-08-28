function AnnounceObjectiveFuelRefinery(owner)
  local loop = 0
  repeat
    WaitFor(0.2)
    if AllPlayerUnitsDead(0) then
      return
    end
    if fuelrefinery == 1 then
      return
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.FuelRefinery) then
      PhoneMessage(26, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(27, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(29, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
      loop = 1
    end
    EndFrame()
  until loop == 1
end
