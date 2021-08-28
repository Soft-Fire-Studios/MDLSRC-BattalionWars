function Ice_Station_X_Respawner(owner)
  local AntiAirTower01Despawner = 0
  local AntiAirTower02Despawner = 0
  local AntiAirTower03Despawner = 0
  local AntiAirTower04Despawner = 0
  local WestRoute01Despawner = 0
  repeat
    EndFrame()
  until DespawnComplete == 1
  while true do
    if 0 < NumItemsInArea(Map_Zone.XN_AntiAirTower01, flag.TYPE_TUNDRAN) and AntiAirTower01Despawner == 0 then
      Spawn(Troop.XN_Grunt03)
      Spawn(Troop.XN_AntiArmour02)
      Spawn(Troop.XN_AntiArmour03)
      Spawn(Troop.XN_Chain01)
      Spawn(Troop.XN_Chain02)
      Spawn(Building.XN_AntiAirTower01)
      Spawn(Ground_Vehicle.XN_LightTank02)
      Spawn(Troop.XN_Chain03)
      Spawn(Troop.XN_Chain04)
      AntiAirTower01Despawner = 1
    end
    EndFrame()
    if NumItemsInArea(Map_Zone.EastBeach, flag.TYPE_TUNDRAN) > 6 and AntiAirTower02Despawner == 0 then
      Spawn(Troop.XN_Chain13)
      Spawn(Troop.XN_Chain14)
      Spawn(Troop.XN_Grunt14)
      Spawn(Troop.XN_Grunt15)
      Spawn(Troop.XN_Grunt16)
      Spawn(Ground_Vehicle.XN_HeavyTank04)
      AntiAirTower02Despawner = 1
    end
    EndFrame()
    if 0 < NumItemsInArea(Map_Zone.XN_AntiAirTower03, flag.TYPE_TUNDRAN) and AntiAirTower03Despawner == 0 then
      Spawn(Troop.XN_Grunt05)
      Spawn(Troop.XN_Grunt06)
      Spawn(Troop.XN_AntiArmour05)
      Spawn(Building.XN_AntiAirTower03)
      Spawn(Ground_Vehicle.XN_LightTank01)
      Spawn(Troop.XN_Grunt12)
      Spawn(Troop.XN_Grunt13)
      Spawn(Troop.XN_Grunt07)
      Spawn(Troop.XN_Grunt08)
      AntiAirTower03Despawner = 1
    end
    EndFrame()
    if 6 < NumItemsInArea(Map_Zone.XN_AntiAirTower04, flag.TYPE_TUNDRAN) and AntiAirTower04Despawner == 0 then
      Spawn(Troop.XN_AntiArmour07)
      Spawn(Troop.XN_AntiArmour08)
      Spawn(Troop.XN_AntiArmour09)
      Spawn(Building.XN_AntiAirTower04)
      Spawn(Ground_Vehicle.XN_HeavyTank01)
      AntiAirTower04Despawner = 1
    end
    EndFrame()
    if 0 < NumItemsInArea(Map_Zone.WestRoute01, flag.TYPE_TUNDRAN) and WestRoute01Despawner == 0 then
      Spawn(Building.XN_AntiAirTower02)
      Spawn(Troop.XN_AntiArmour10)
      Spawn(Troop.XN_AntiArmour11)
      Spawn(Troop.XN_AntiArmour12)
      Spawn(Ground_Vehicle.XN_HeavyTank06)
      Spawn(Troop.XN_AntiArmour17)
      Spawn(Troop.XN_AntiArmour18)
      Spawn(Troop.XN_Grunt09)
      Spawn(Troop.XN_Grunt11)
      WestRoute01Despawner = 1
    end
    EndFrame()
  end
end
