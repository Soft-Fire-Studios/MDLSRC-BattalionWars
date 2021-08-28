function C1M1_WFtransportCopter(owner)
  local location = 0
  EnterVehicle(Troop.Entity0046, Air_Vehicle.Entity0006)
  while true do
    if owner == Air_Vehicle.Entity0006 then
      WaitFor(5)
      if location == 0 and IsInArea(owner, 845, -90, 50) then
        location = 1
        GoToArea(owner, 400, -400, 50, constant.ORDER_FORCED)
      end
      if location == 1 and IsInArea(owner, 400, -400, 50) then
        location = 2
        GoToArea(owner, 845, -90, 10, constant.ORDER_FORCED)
      end
      if location == 2 and IsInArea(owner, 845, -90, 50) then
        location = 3
        LandAirUnit(owner, 845, -81, constant.ORDER_FORCED)
        WaitFor(20)
        location = 0
      end
      WaitFor(5)
    end
    EndFrame()
  end
  EndFrame()
  return
end
