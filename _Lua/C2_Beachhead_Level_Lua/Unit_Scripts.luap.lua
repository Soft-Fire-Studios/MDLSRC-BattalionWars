function Unit_Scripts(owner)
  function Attack1(owner)
    WaitFor(10)
    while IsPassengerInUnit(owner, Air_Vehicle.XAirTrans0) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans1) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans2) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans3) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans4) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans5) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans6) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans7) do
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
  function Attack3(owner)
    WaitFor(10)
    while IsPassengerInUnit(owner, Air_Vehicle.XAirTrans1) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans2) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans3) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans4) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans5) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans6) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans7) do
      EndFrame()
    end
    if IsInRectangle(owner, -20, 400, 95, 500) then
      GoToArea(owner, 20, 130, 10)
      repeat
        EndFrame()
      until IsInArea(owner, 20, 130, 12)
      GoToArea(owner, 100, 130, 25)
      repeat
        EndFrame()
      until IsInArea(owner, 20, 130, 12)
      DebugOut("Capturing?!...")
      EnterVehicle(owner, Capture_Point.CP_Base, constant.ORDER_FORCED)
      return
    end
    if IsInRectangle(owner, 96, 400, 200, 500) then
      GoToArea(owner, 175, 130, 10)
      repeat
        EndFrame()
      until IsInArea(owner, 175, 130, 12)
      GoToArea(owner, 100, 130, 10)
      repeat
        EndFrame()
      until IsInArea(owner, 100, 130, 25)
      DebugOut("Capturing?!...")
      EnterVehicle(owner, Capture_Point.CP_Base, constant.ORDER_FORCED)
    end
  end
  function KillAA(owner)
    WaitFor(10)
    while IsPassengerInUnit(owner, Air_Vehicle.XAirTrans3) do
      EndFrame()
    end
    AttackTarget(owner, Ground_Vehicle.AntiAirVehicle, constant.ORDER_FORCED)
  end
end
