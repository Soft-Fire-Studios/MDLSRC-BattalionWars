function GuardCapturePoint(owner)
  while true do
    if GetHealthPercent(Capture_Point.HQ) < 100 and NumPassengersInUnit(Capture_Point.HQ) == 0 then
      EnterVehicle(owner, Capture_Point.HQ)
      DebugOut("Enemy unit is defending flag!")
      WaitFor(5)
    end
    WaitFor(1)
    EndFrame()
  end
end
