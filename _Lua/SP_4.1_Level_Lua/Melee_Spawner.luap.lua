function Melee_Spawner(owner)
  while true do
    if (NumItemsInArea(Map_Zone.WestCamp01, flag.TYPE_UNDERWORLD) ~= 12 or WestCampPOWsFree == 1) and WestCamp01 == 0 then
      Spawn(Air_Vehicle.SE_Gunship01)
      Spawn(Air_Vehicle.SE_Gunship02)
      Spawn(Air_Vehicle.SE_Gunship03)
      Spawn(Air_Vehicle.SE_Gunship04)
      Spawn(Air_Vehicle.SE_Gunship05)
      Spawn(Air_Vehicle.SE_Gunship06)
      Spawn(Air_Vehicle.SE_Gunship07)
      Spawn(Air_Vehicle.SE_Gunship08)
      Spawn(Air_Vehicle.SE_Gunship09)
      Spawn(Air_Vehicle.SE_Gunship10)
      Spawn(Building.SE_WestCamp_AATower01)
      Spawn(Building.SE_WestCamp_AATower02)
      Spawn(Troop.SE_WestCamp_AntiArmour01)
      Spawn(Troop.SE_WestCamp_AntiArmour02)
      Spawn(Troop.SE_WestCamp_AntiArmour03)
      Spawn(Troop.SE_WestCamp_AntiArmour04)
      Spawn(Troop.SE_WestCamp_AntiArmour05)
      Spawn(Troop.SE_WestCamp_AntiArmour06)
      Spawn(Troop.SE_WestCamp_AntiArmour07)
      Spawn(Troop.SE_WestCamp_AntiArmour08)
      Spawn(Troop.SE_WestCamp_Mortar01)
      Spawn(Troop.SE_WestCamp_Mortar02)
      Spawn(Troop.SE_WestCamp_Mortar03)
      Spawn(Troop.SE_WestCamp_Mortar04)
      WestCamp01 = 1
    end
    EndFrame()
    if (NumItemsInArea(Map_Zone.EastCamp01, flag.TYPE_UNDERWORLD) ~= 4 or EastCampPOWsFree == 1) and EastCamp01 == 0 then
      Spawn(Troop.SE_EastCamp_AntiArmour01)
      Spawn(Troop.SE_EastCamp_AntiArmour02)
      Spawn(Troop.SE_EastCamp_AntiArmour03)
      Spawn(Troop.SE_EastCamp_AntiArmour04)
      Spawn(Troop.SE_EastCamp_AntiArmour05)
      Spawn(Troop.SE_EastCamp_Assault01)
      Spawn(Troop.SE_EastCamp_Assault02)
      Spawn(Troop.SE_EastCamp_Assault03)
      Spawn(Troop.SE_EastCamp_Assault04)
      Spawn(Ground_Vehicle.SE_EastCamp_HeavyTank01)
      Spawn(Building.SE_EastCamp_MGTower01)
      Spawn(Building.SE_EastCamp_MGTower02)
      EastCamp01 = 1
    end
    EndFrame()
    if NumItemsInArea(Map_Zone.Despawner01, flag.TYPE_UNDERWORLD) ~= 0 and Despawner01 == 0 then
      Spawn(Building.SE_EastRoute_MGTower01)
      Spawn(Air_Vehicle.SE_EastRoute_Gunship02)
      Despawner01 = 1
    end
    EndFrame()
    if NumItemsInArea(Map_Zone.Despawner02, flag.TYPE_UNDERWORLD) ~= 0 and Despawner02 == 0 then
      Spawn(Air_Vehicle.SE_EastRoute_Gunship01)
      Spawn(Air_Vehicle.SE_EastRoute_Gunship03)
      Spawn(Building.SE_EastRoute_AATower01)
      Spawn(Building.SE_EastRoute_AATower02)
      Spawn(Building.SE_WestRoute_AATower01)
      Spawn(Building.SE_WestRoute_AATower02)
      Despawner02 = 1
    end
    EndFrame()
    if NumItemsInArea(Map_Zone.Despawner03, flag.TYPE_UNDERWORLD) ~= 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WestCamp01_ArtilleryDespawner) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SE_Gunship_Respawner01) == false or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WestCamp01_ArtilleryDespawner) and (GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.POW_IL_Gunship01 or GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.POW_IL_Gunship02 or GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.POW_IL_Gunship03 or GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.IL_Gunship01) and Despawner03 == 0 then
      Spawn(Air_Vehicle.SE_EastRoute_Gunship06)
      Spawn(Building.SE_EastRoute_MGNest01)
      Spawn(Building.SE_EastRoute_MGNest02)
      Spawn(Building.SE_EastRoute_MGNest03)
      EnableWeapon(Ground_Vehicle.SE_WestRoute_Artillery01, 1)
      EnableWeapon(Ground_Vehicle.SE_WestRoute_Artillery02, 1)
      EnableWeapon(Ground_Vehicle.SE_WestRoute_Artillery03, 1)
      Despawner03 = 1
    end
    EndFrame()
    if NumItemsInArea(Map_Zone.Despawner04, flag.TYPE_UNDERWORLD) ~= 0 and Despawner04 == 0 then
      Spawn(Air_Vehicle.SE_EastRoute_Gunship04)
      Spawn(Air_Vehicle.SE_EastRoute_Gunship05)
      Spawn(Air_Vehicle.SE_EastRoute_Gunship06)
      Despawner04 = 1
    end
    EndFrame()
    if NumItemsInArea(Map_Zone.Despawner05, flag.TYPE_UNDERWORLD) ~= 0 and Despawner05b == 0 then
      Spawn(Building.SE_EastRoute_MGTower02)
      Spawn(Building.SE_EastRoute_MGTower03)
      Spawn(Building.SE_EastRoute_MGTower04)
      Despawner05b = 1
    end
    EndFrame()
    if NumItemsInArea(Map_Zone.Despawner06, flag.TYPE_UNDERWORLD) ~= 0 and Despawner06 == 0 then
      Spawn(Air_Vehicle.SE_EastRoute_Gunship07)
      Spawn(Air_Vehicle.SE_EastRoute_Gunship08)
      Spawn(Air_Vehicle.SE_EastRoute_Gunship09)
      Despawner06 = 1
    end
    EndFrame()
    if NumItemsInArea(Map_Zone.Despawner07, flag.TYPE_UNDERWORLD) ~= 0 and Despawner07 == 0 then
      Spawn(Building.AmmoDump_Recon_Grounded01)
      Spawn(Building.AmmoDump_Gunship_Grounded01)
      Spawn(Building.AmmoDump_HeavyTank_Grounded01)
      Spawn(Building.AmmoDump_HeavyTank_Grounded02)
      Spawn(Building.AmmoDump_HeavyTank_Grounded03)
      Spawn(Building.AmmoDump_HeavyTank_Grounded04)
      Spawn(Building.SE_Recon_Grounded01)
      Spawn(Building.SE_Recon_Grounded02)
      Spawn(Building.SE_Recon_Grounded03)
      Spawn(Building.SE_Recon_Grounded04)
      Spawn(Building.SE_Recon_Grounded05)
      Spawn(Building.SE_Recon_Grounded06)
      Spawn(Building.SE_Gunship_Grounded01)
      Spawn(Building.SE_Gunship_Grounded02)
      Spawn(Building.SE_Gunship_Grounded03)
      Spawn(Building.SE_Gunship_Grounded04)
      Spawn(Building.SE_Gunship_Grounded05)
      Spawn(Building.SE_Gunship_Grounded06)
      Spawn(Building.SE_HeavyTank_Grounded01)
      Spawn(Building.SE_HeavyTank_Grounded04)
      Spawn(Building.SE_HeavyTank_Grounded05)
      Spawn(Building.SE_HeavyTank_Grounded06)
      Spawn(Building.SE_HeavyTank_Grounded08)
      Spawn(Building.SE_HeavyTank_Grounded10)
      Spawn(Building.SE_HeavyTank_Grounded11)
      Spawn(Building.SE_HeavyTank_Grounded12)
      Spawn(Building.SE_HeavyTank_Grounded04_HeavyTank01)
      Spawn(Building.SE_HeavyTank_Grounded04_HeavyTank02)
      Spawn(Building.SE_HeavyTank_Grounded04_HeavyTank03)
      Spawn(Building.SE_HeavyTank_Grounded04_HeavyTank04)
      Spawn(Ground_Vehicle.SE_Grounded_HeavyTank01)
      Spawn(Ground_Vehicle.SE_Grounded_HeavyTank02)
      Spawn(Ground_Vehicle.SE_Grounded_HeavyTank03)
      Spawn(Ground_Vehicle.SE_Grounded_HeavyTank04)
      Spawn(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank01)
      Spawn(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank02)
      Despawner07 = 1
    end
    EndFrame()
  end
end
