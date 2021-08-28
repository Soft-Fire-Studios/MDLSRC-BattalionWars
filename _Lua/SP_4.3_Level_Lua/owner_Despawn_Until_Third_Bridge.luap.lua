function owner_Despawn_Until_Third_Bridge(owner)
  SetTickScriptWhenDespawned(owner, true)
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  if owner == Troop.SEGrunt16 or owner == Troop.SEGrunt17 or owner == Troop.SEGrunt18 or owner == Troop.SEGrunt19 then
    WaitFor(10)
  else
  end
  EndFrame()
  Despawn(owner, true)
  WaitFor(5)
  repeat
    EndFrame()
  until SpawnAirbaseTroops == 1
  Spawn(owner)
  if owner == Troop.SEGrunt16 or owner == Troop.SEGrunt17 or owner == Troop.SEGrunt18 or owner == Troop.SEGrunt19 then
    repeat
      if GetHealthPercent(Capture_Point.ILairbase) < 100 or GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_UNDERWORLD and NumPassengersInUnit(Capture_Point.ILairbase) == 0 then
        EnterVehicle(owner, Capture_Point.ILairbase)
        DebugOut("Enemy unit is defending flag!")
        WaitFor(5)
      end
      WaitFor(1)
      EndFrame()
    until IsDead(owner)
  end
end
