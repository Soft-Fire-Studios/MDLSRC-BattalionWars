function AnnounceObjectiveCommunicationsTower(owner)
  local loop = 0
  repeat
    WaitFor(0.2)
    if AllPlayerUnitsDead(0) then
      return
    end
    if communicationstower == 1 then
      return
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.CommunicationsTower) then
      PhoneMessage(31, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(17, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(32, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(33, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
      loop = 1
    end
    EndFrame()
  until loop == 1
  repeat
    if IsInArea(GetPlayerUnit(), Map_Zone.CommsTower) then
      WaitFor(15)
      chopperstatus = 1
      return
    end
    EndFrame()
  until chopperstatus == 1
end
