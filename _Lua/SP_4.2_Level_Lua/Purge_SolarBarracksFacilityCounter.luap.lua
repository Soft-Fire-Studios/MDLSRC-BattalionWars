function Purge_SolarBarracksFacilityCounter(owner)
  while true do
    if barracks == 1 and TestFlags(owner, flag.TYPE_INFANTRY, constant.TYPE) == true and NumPassengersInUnit(Capture_Point.SolarBarracksCapturePoint01) < 5 and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_IN_CAPTUREPOINT and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_GOING_TO_CAPTUREPOINT and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_MOVING_TO_AREA then
      GoToArea(owner, -1185, 50, 5, 0, constant.ORDER_NORMAL)
      DebugOut("*SolarBarracksFacilityCounter* - The Solar Grunts are going to re-capture their Barracks")
      WaitFor(4)
      EnterVehicle(owner, Capture_Point.SolarBarracksCapturePoint01, constant.ORDER_FORCED)
    end
    EndFrame()
  end
end
