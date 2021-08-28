function Gambit_Part_1_Staff_Effect(owner)
  local PlayerHealth = 0
  local StaffProtectionDone = 0
  Kill(Building.StaffFX)
  while true do
    if GetPlayerUnit() == Troop.Sstaffbearer01 then
      PlayerHealth = GetHealthPercent(GetPlayerUnit())
    end
    WaitFor(1)
    if PlayerHealth > GetHealthPercent(GetPlayerUnit()) and StaffProtectionDone == 0 then
      StaffProtectionDone = 1
    end
    WaitFor(5)
    EndFrame()
  end
end
