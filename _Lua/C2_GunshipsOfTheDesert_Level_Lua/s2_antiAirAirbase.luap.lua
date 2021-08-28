function s2_antiAirAirbase(owner)
  local sentAntiAirToAirbase = 0
  while true do
    if MiningBaseCaptured == 1 then
      GoToArea(Ground_Vehicle.XantiAirVehicle0003, 10, 220, 20)
      break
    end
    if (IsInArea(Air_Vehicle.WFgunship0001, -300, -180, 200) or IsInArea(Air_Vehicle.WFgunship0002, -300, -180, 200)) and sentAntiAirToAirbase == 0 then
      sentAntiAirToAirbase = 1
      DebugOut("Sending Anti Air Vehicle to airbase now!")
      GoToArea(Ground_Vehicle.XantiAirVehicle0003, -300, -180, 20)
      if 0 >= AntiAirDone then
        AntiAirDone = 1
        ClearMessageQueue()
        PhoneMessage(44, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
        PhoneMessage(49, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy)
        PhoneMessage(50, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy)
      end
    end
    EndFrame()
  end
  EndFrame()
  return
end
