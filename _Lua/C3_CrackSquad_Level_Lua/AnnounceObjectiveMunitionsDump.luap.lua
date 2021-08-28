function AnnounceObjectiveMunitionsDump(owner)
  local loop = 0
  repeat
    WaitFor(0.2)
    if AllPlayerUnitsDead(0) then
      return
    end
    if munitionsdump == 1 then
      return
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.MunitionsDump) then
      PhoneMessage(24, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(25, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
      loop = 1
    end
    EndFrame()
  until loop == 1
end
