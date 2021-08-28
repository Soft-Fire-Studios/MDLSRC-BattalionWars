function owner_Recapture_Airbase(owner)
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  WaitFor(5)
  while true do
    if GetHealthPercent(Capture_Point.ILairbase) < 100 or GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_UNDERWORLD and NumPassengersInUnit(Capture_Point.ILairbase) == 0 then
      EnterVehicle(owner, Capture_Point.ILairbase)
      DebugOut("Enemy unit is defending flag!")
      WaitFor(5)
    end
    WaitFor(1)
    EndFrame()
  end
end
