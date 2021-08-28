function owner_Kill_Solar_Infantry(owner)
  while true do
    if IsInArea(owner, Map_Zone.KillSolarInfantry1) or IsInArea(owner, Map_Zone.KillSolarInfantry2) then
      Kill(owner)
    end
    if owner == Troop.SEGrunt04 or owner == Troop.SEGrunt07 or owner == Troop.SEGrunt08 or owner == Troop.SEGrunt50 or owner == Troop.SEGrunt51 or owner == Troop.SEGrunt52 or owner == Troop.SEGrunt53 or owner == Troop.SEGrunt54 or owner == Troop.SEGrunt55 then
      if GetHealthPercent(Capture_Point.ILairbase) < 100 or GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_UNDERWORLD and NumPassengersInUnit(Capture_Point.ILairbase) == 0 then
        EnterVehicle(owner, Capture_Point.ILairbase)
        DebugOut("Enemy unit is defending flag!")
        WaitFor(5)
      end
      WaitFor(1)
    end
    EndFrame()
  end
end
