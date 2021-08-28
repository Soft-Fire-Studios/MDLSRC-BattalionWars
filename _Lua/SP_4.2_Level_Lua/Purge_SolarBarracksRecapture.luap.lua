function Purge_SolarBarracksRecapture(owner)
  local Sgrunt24Timer = 0
  local Sgrunt25Timer = 0
  local Sgrunt26Timer = 0
  local Sgrunt27Timer = 0
  while true do
    if barracks == 1 and NumPassengersInUnit(Capture_Point.SolarBarracksCapturePoint01) < 5 then
      if not IsDead(Troop.Sgrunt24) and Sgrunt24Timer < GetTime() then
        EnterVehicle(Troop.Sgrunt24, Capture_Point.SolarBarracksCapturePoint01)
        DebugOut("Enemy unit is defending flag!")
        Sgrunt24Timer = GetTime() + 5
      end
      if not IsDead(Troop.Sgrunt25) and Sgrunt25Timer < GetTime() then
        EnterVehicle(Troop.Sgrunt25, Capture_Point.SolarBarracksCapturePoint01)
        DebugOut("Enemy unit is defending flag!")
        Sgrunt25Timer = GetTime() + 5
      end
      WaitFor(1)
    end
    EndFrame()
  end
end
