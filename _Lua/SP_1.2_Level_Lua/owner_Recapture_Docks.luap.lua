function owner_Recapture_Docks(owner)
  while true do
    if GetHealthPercent(Capture_Point.dockCP) < 100 and NumPassengersInUnit(Capture_Point.dockCP) == 0 then
      EnterVehicle(owner, Capture_Point.dockCP, constant.ORDER_FORCED)
      DebugOut("Enemy unit is defending flag!")
      WaitFor(5)
    end
    WaitFor(1)
    EndFrame()
  end
end
