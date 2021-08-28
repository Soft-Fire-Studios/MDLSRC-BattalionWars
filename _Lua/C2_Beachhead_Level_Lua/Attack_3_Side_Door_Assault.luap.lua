function Attack_3_Side_Door_Assault(owner)
  WaitFor(10)
  while IsPassengerInUnit(owner, Air_Vehicle.XAirTrans1) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans2) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans3) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans4) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans5) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans6) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans7) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans8) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans9) do
    EndFrame()
  end
  if IsInRectangle(owner, -50, 200, 95, 500) then
    GoToArea(owner, 20, 130, 10)
    repeat
      EndFrame()
    until IsInArea(owner, 20, 130, 12)
    GoToArea(owner, 100, 130, 25)
    repeat
      EndFrame()
    until IsInArea(owner, 100, 130, 25)
    EnterVehicle(owner, Capture_Point.CP_Base, constant.ORDER_FORCED)
    return
  end
  if IsInRectangle(owner, 94, 200, 200, 500) then
    GoToArea(owner, 175, 130, 10)
    repeat
      EndFrame()
    until IsInArea(owner, 175, 130, 12)
    GoToArea(owner, 100, 130, 10)
    repeat
      EndFrame()
    until IsInArea(owner, 100, 130, 25)
    EnterVehicle(owner, Capture_Point.CP_Base, constant.ORDER_FORCED)
  end
end
