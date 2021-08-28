function JW_Flag_Defense(owner)
  while true do
    if GetHealthPercent(Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase) < 100 and NumPassengersInUnit(Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase) == 0 then
      EnterVehicle(owner, Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase)
      DebugOut("Enemy unit", owner, "is defending flag!")
      WaitFor(5)
    end
    EndFrame()
  end
end
