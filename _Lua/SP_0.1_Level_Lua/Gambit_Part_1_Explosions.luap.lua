function Gambit_Part_1_Explosions(owner)
  local Explosions01 = 0
  Despawn(Building.AmmoDump03)
  Despawn(Building.Barrel04)
  Despawn(Building.AmmoDump04)
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.Explosions01) then
      if Explosions01 == 0 then
        Explosions01 = 1
        Spawn(Building.AmmoDump03)
        Kill(Building.AmmoDump03)
        WaitFor(1)
        Spawn(Building.Barrel04)
        Kill(Building.Barrel04)
        WaitFor(1)
        Spawn(Building.AmmoDump04)
        Kill(Building.AmmoDump04)
        break
      end
      EndFrame()
    end
    EndFrame()
  end
end
