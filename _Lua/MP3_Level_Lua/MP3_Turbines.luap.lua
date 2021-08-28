function MP3_Turbines(owner)
  local deadTurbine01 = 0
  local deadTurbine02 = 0
  local deadTurbine03 = 0
  Despawn(Building.deadTurbine01)
  Despawn(Building.deadTurbine02)
  Despawn(Building.deadTurbine03)
  while true do
    if IsDead(Building.Turbine01) and deadTurbine01 == 0 then
      deadTurbine01 = 1
      Spawn(Building.deadTurbine01)
    end
    if IsDead(Building.Turbine02) and deadTurbine02 == 0 then
      deadTurbine02 = 1
      Spawn(Building.deadTurbine02)
    end
    if IsDead(Building.Turbine03) and deadTurbine03 == 0 then
      deadTurbine03 = 1
      Spawn(Building.deadTurbine03)
    end
    EndFrame()
  end
end
