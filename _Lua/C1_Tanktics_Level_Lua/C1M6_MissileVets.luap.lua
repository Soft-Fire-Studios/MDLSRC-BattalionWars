function C1M6_MissileVets(owner)
  while true do
    if GetPlayerUnit() == Troop.WFmissile0001 or GetPlayerUnit() == Troop.WFmissile0002 or GetPlayerUnit() == Troop.WFmissile0003 or GetPlayerUnit() == Troop.WFhose0004 or GetPlayerUnit() == Troop.WFhose0005 then
      ClearMessageQueue()
      PhoneMessage(48, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(60, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
