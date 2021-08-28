function s2_XantiAir(owner)
  while true do
    if IsDead(Ground_Vehicle.XantiAirVehicle0001) and IsDead(Ground_Vehicle.XantiAirVehicle0005) then
      AntiAirDone = 1
      break
    end
    if AntiAirDone <= 0 and (IsInArea(Air_Vehicle.WFgunship0001, Map_Zone.AntiAir) or IsInArea(Air_Vehicle.WFgunship0002, Map_Zone.AntiAir)) then
      AntiAirDone = 1
      ClearMessageQueue()
      PhoneMessage(44, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
      PhoneMessage(49, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy)
      PhoneMessage(50, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy)
    end
    EndFrame()
  end
  EndFrame()
  return
end
