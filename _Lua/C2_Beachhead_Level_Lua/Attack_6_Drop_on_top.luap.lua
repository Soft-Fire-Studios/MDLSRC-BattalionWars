function Attack_6_Drop_on_top(owner)
  WaitFor(10)
  while IsPassengerInUnit(owner, Air_Vehicle.XAirTrans7) do
    EndFrame()
  end
  WaitFor(5)
  DebugOut("Capturing?!...")
  EnterVehicle(owner, Capture_Point.CP_Base, constant.ORDER_FORCED)
end
