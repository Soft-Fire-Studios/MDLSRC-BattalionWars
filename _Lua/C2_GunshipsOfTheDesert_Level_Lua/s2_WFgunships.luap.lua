function s2_WFgunships(owner)
  while true do
    if GetPlayerUnit() == Air_Vehicle.WFgunship0001 or GetPlayerUnit() == Air_Vehicle.WFgunship0002 then
      ClearMessageQueue()
      PhoneMessage(78, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy)
      PhoneMessage(70, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy)
      PhoneMessage(51, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
