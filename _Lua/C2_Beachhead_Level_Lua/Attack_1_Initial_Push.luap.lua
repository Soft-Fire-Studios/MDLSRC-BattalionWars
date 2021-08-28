function Attack_1_Initial_Push(owner)
  WaitFor(10)
  while IsPassengerInUnit(owner, Air_Vehicle.XAirTrans0) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans1) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans2) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans3) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans4) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans5) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans6) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans7) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans8) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans9) do
    EndFrame()
  end
  GoToArea(owner, 100, 200, 10)
  repeat
    EndFrame()
  until IsInArea(owner, 100, 200, 12)
  GoToArea(owner, 100, 130, 10)
  repeat
    EndFrame()
  until IsInArea(owner, 100, 130, 25)
  DebugOut("Capturing?!...")
  EnterVehicle(owner, Capture_Point.CP_Base, constant.ORDER_FORCED)
end
