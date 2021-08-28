function CAPTURE_THE_AIRBASE_TUNDRAN_DEFENCE(owner)
  repeat
    if GetHealthPercent(Capture_Point.THQCP) < 100 and NumPassengersInUnit(Capture_Point.THQCP) == 0 then
      EnterVehicle(Troop.Tgrunt32, Capture_Point.THQCP)
      EnterVehicle(Troop.Tgrunt33, Capture_Point.THQCP)
      EnterVehicle(Troop.Tgrunt34, Capture_Point.THQCP)
      EnterVehicle(Troop.Tgrunt35, Capture_Point.THQCP)
      EnterVehicle(Troop.Tflame01, Capture_Point.THQCP)
      EnterVehicle(Troop.Tflame02, Capture_Point.THQCP)
      DebugOut("Enemy unit is defending airbase flag!")
      WaitFor(7)
    end
    EndFrame()
    WaitFor(1)
  until WFwin == true or IsDead(Troop.Tgrunt32) and IsDead(Troop.Tgrunt33) and IsDead(Troop.Tgrunt34) and IsDead(Troop.Tgrunt35) and IsDead(Troop.Tflame01) and IsDead(Troop.Tflame02)
end
