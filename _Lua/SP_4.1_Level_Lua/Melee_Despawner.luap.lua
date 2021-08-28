function Melee_Despawner(owner)
  while true do
    repeat
      if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WestCamp01_ArtilleryDespawner) and GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.POW_IL_Gunship01 and GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.POW_IL_Gunship02 and GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.POW_IL_Gunship03 and GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.IL_Gunship01 and GetPlayerUnit(constant.PLAYER_ONE) ~= nil and Despawner03 == 1 then
        if IsDead(Ground_Vehicle.SE_WestRoute_Artillery01) == false then
          EnableWeapon(Ground_Vehicle.SE_WestRoute_Artillery01, 0)
        end
        if IsDead(Ground_Vehicle.SE_WestRoute_Artillery02) == false then
          EnableWeapon(Ground_Vehicle.SE_WestRoute_Artillery02, 0)
        end
        if IsDead(Ground_Vehicle.SE_WestRoute_Artillery03) == false then
          EnableWeapon(Ground_Vehicle.SE_WestRoute_Artillery03, 0)
        end
        Despawner03 = 0
      end
      EndFrame()
    until DespawnTheLot == 1
    if IsDead(Air_Vehicle.SE_Gunship01) == false then
      Despawn(Air_Vehicle.SE_Gunship01, true)
    end
    if IsDead(Air_Vehicle.SE_Gunship02) == false then
      Despawn(Air_Vehicle.SE_Gunship02, true)
    end
    if IsDead(Air_Vehicle.SE_Gunship03) == false then
      Despawn(Air_Vehicle.SE_Gunship03, true)
    end
    if IsDead(Air_Vehicle.SE_Gunship04) == false then
      Despawn(Air_Vehicle.SE_Gunship04, true)
    end
    if IsDead(Air_Vehicle.SE_Gunship05) == false then
      Despawn(Air_Vehicle.SE_Gunship05, true)
    end
    if IsDead(Air_Vehicle.SE_Gunship06) == false then
      Despawn(Air_Vehicle.SE_Gunship06, true)
    end
    if IsDead(Air_Vehicle.SE_Gunship07) == false then
      Despawn(Air_Vehicle.SE_Gunship07, true)
    end
    if IsDead(Air_Vehicle.SE_Gunship08) == false then
      Despawn(Air_Vehicle.SE_Gunship08, true)
    end
    if IsDead(Air_Vehicle.SE_Gunship09) == false then
      Despawn(Air_Vehicle.SE_Gunship09, true)
    end
    if IsDead(Air_Vehicle.SE_Gunship10) == false then
      Despawn(Air_Vehicle.SE_Gunship10, true)
    end
    if IsDead(Building.SE_WestCamp_AATower01) == false then
      Despawn(Building.SE_WestCamp_AATower01, true)
    end
    if IsDead(Building.SE_WestCamp_AATower02) == false then
      Despawn(Building.SE_WestCamp_AATower02, true)
    end
    if IsDead(Troop.SE_WestCamp_AntiArmour01) == false then
      Despawn(Troop.SE_WestCamp_AntiArmour01, true)
    end
    if IsDead(Troop.SE_WestCamp_AntiArmour02) == false then
      Despawn(Troop.SE_WestCamp_AntiArmour02, true)
    end
    if IsDead(Troop.SE_WestCamp_AntiArmour03) == false then
      Despawn(Troop.SE_WestCamp_AntiArmour03, true)
    end
    if IsDead(Troop.SE_WestCamp_AntiArmour04) == false then
      Despawn(Troop.SE_WestCamp_AntiArmour04, true)
    end
    if IsDead(Troop.SE_WestCamp_AntiArmour05) == false then
      Despawn(Troop.SE_WestCamp_AntiArmour05, true)
    end
    if IsDead(Troop.SE_WestCamp_AntiArmour06) == false then
      Despawn(Troop.SE_WestCamp_AntiArmour06, true)
    end
    if IsDead(Troop.SE_WestCamp_AntiArmour07) == false then
      Despawn(Troop.SE_WestCamp_AntiArmour07, true)
    end
    if IsDead(Troop.SE_WestCamp_AntiArmour08) == false then
      Despawn(Troop.SE_WestCamp_AntiArmour08, true)
    end
    if IsDead(Troop.SE_WestCamp_Mortar01) == false then
      Despawn(Troop.SE_WestCamp_Mortar01, true)
    end
    if IsDead(Troop.SE_WestCamp_Mortar02) == false then
      Despawn(Troop.SE_WestCamp_Mortar02, true)
    end
    if IsDead(Troop.SE_WestCamp_Mortar03) == false then
      Despawn(Troop.SE_WestCamp_Mortar03, true)
    end
    if IsDead(Troop.SE_WestCamp_Mortar04) == false then
      Despawn(Troop.SE_WestCamp_Mortar04, true)
    end
    if IsDead(Troop.SE_EastCamp_AntiArmour01) == false then
      Despawn(Troop.SE_EastCamp_AntiArmour01, true)
    end
    if IsDead(Troop.SE_EastCamp_AntiArmour02) == false then
      Despawn(Troop.SE_EastCamp_AntiArmour02, true)
    end
    if IsDead(Troop.SE_EastCamp_AntiArmour03) == false then
      Despawn(Troop.SE_EastCamp_AntiArmour03, true)
    end
    if IsDead(Troop.SE_EastCamp_AntiArmour04) == false then
      Despawn(Troop.SE_EastCamp_AntiArmour04, true)
    end
    if IsDead(Troop.SE_EastCamp_AntiArmour05) == false then
      Despawn(Troop.SE_EastCamp_AntiArmour05, true)
    end
    if IsDead(Troop.SE_EastCamp_Assault01) == false then
      Despawn(Troop.SE_EastCamp_Assault01, true)
    end
    if IsDead(Troop.SE_EastCamp_Assault02) == false then
      Despawn(Troop.SE_EastCamp_Assault02, true)
    end
    if IsDead(Troop.SE_EastCamp_Assault03) == false then
      Despawn(Troop.SE_EastCamp_Assault03, true)
    end
    if IsDead(Troop.SE_EastCamp_Assault04) == false then
      Despawn(Troop.SE_EastCamp_Assault04, true)
    end
    if IsDead(Ground_Vehicle.SE_EastCamp_HeavyTank01) == false then
      Despawn(Ground_Vehicle.SE_EastCamp_HeavyTank01, true)
    end
    if IsDead(Building.SE_EastCamp_MGTower01) == false then
      Despawn(Building.SE_EastCamp_MGTower01, true)
    end
    if IsDead(Building.SE_EastCamp_MGTower02) == false then
      Despawn(Building.SE_EastCamp_MGTower02, true)
    end
    if IsDead(Building.SE_WestRoute_AATower01) == false then
      Despawn(Building.SE_WestRoute_AATower01, true)
    end
    if IsDead(Building.SE_WestRoute_AATower02) == false then
      Despawn(Building.SE_WestRoute_AATower02, true)
    end
    if IsDead(Air_Vehicle.SE_EastRoute_Gunship01) == false then
      Despawn(Air_Vehicle.SE_EastRoute_Gunship01, true)
    end
    if IsDead(Air_Vehicle.SE_EastRoute_Gunship02) == false then
      Despawn(Air_Vehicle.SE_EastRoute_Gunship02, true)
    end
    if IsDead(Air_Vehicle.SE_EastRoute_Gunship03) == false then
      Despawn(Air_Vehicle.SE_EastRoute_Gunship03, true)
    end
    if IsDead(Air_Vehicle.SE_EastRoute_Gunship04) == false then
      Despawn(Air_Vehicle.SE_EastRoute_Gunship04, true)
    end
    if IsDead(Air_Vehicle.SE_EastRoute_Gunship05) == false then
      Despawn(Air_Vehicle.SE_EastRoute_Gunship05, true)
    end
    if IsDead(Air_Vehicle.SE_EastRoute_Gunship06) == false then
      Despawn(Air_Vehicle.SE_EastRoute_Gunship06, true)
    end
    if IsDead(Air_Vehicle.SE_EastRoute_Gunship07) == false then
      Despawn(Air_Vehicle.SE_EastRoute_Gunship07, true)
    end
    if IsDead(Air_Vehicle.SE_EastRoute_Gunship08) == false then
      Despawn(Air_Vehicle.SE_EastRoute_Gunship08, true)
    end
    if IsDead(Air_Vehicle.SE_EastRoute_Gunship09) == false then
      Despawn(Air_Vehicle.SE_EastRoute_Gunship09, true)
    end
    if IsDead(Building.SE_EastRoute_AATower01) == false then
      Despawn(Building.SE_EastRoute_AATower01, true)
    end
    if IsDead(Building.SE_EastRoute_AATower02) == false then
      Despawn(Building.SE_EastRoute_AATower02, true)
    end
    if IsDead(Building.SE_EastRoute_MGTower01) == false then
      Despawn(Building.SE_EastRoute_MGTower01, true)
    end
    if IsDead(Building.SE_EastRoute_MGTower02) == false then
      Despawn(Building.SE_EastRoute_MGTower02, true)
    end
    if IsDead(Building.SE_EastRoute_MGTower03) == false then
      Despawn(Building.SE_EastRoute_MGTower03, true)
    end
    if IsDead(Building.SE_EastRoute_MGTower04) == false then
      Despawn(Building.SE_EastRoute_MGTower04, true)
    end
    if IsDead(Building.SE_EastRoute_MGNest01) == false then
      Despawn(Building.SE_EastRoute_MGNest01, true)
    end
    if IsDead(Building.SE_EastRoute_MGNest02) == false then
      Despawn(Building.SE_EastRoute_MGNest02, true)
    end
    if IsDead(Building.SE_EastRoute_MGNest03) == false then
      Despawn(Building.SE_EastRoute_MGNest03, true)
    end
    if IsDead(Building.AmmoDump_Recon_Grounded01) == false then
      Despawn(Building.AmmoDump_Recon_Grounded01, true)
    end
    if IsDead(Building.AmmoDump_Gunship_Grounded01) == false then
      Despawn(Building.AmmoDump_Gunship_Grounded01, true)
    end
    if IsDead(Building.AmmoDump_HeavyTank_Grounded01) == false then
      Despawn(Building.AmmoDump_HeavyTank_Grounded01, true)
    end
    if IsDead(Building.AmmoDump_HeavyTank_Grounded02) == false then
      Despawn(Building.AmmoDump_HeavyTank_Grounded02, true)
    end
    if IsDead(Building.AmmoDump_HeavyTank_Grounded03) == false then
      Despawn(Building.AmmoDump_HeavyTank_Grounded03, true)
    end
    if IsDead(Building.AmmoDump_HeavyTank_Grounded04) == false then
      Despawn(Building.AmmoDump_HeavyTank_Grounded04, true)
    end
    if IsDead(Building.SE_Recon_Grounded01) == false then
      Despawn(Building.SE_Recon_Grounded01, true)
    end
    if IsDead(Building.SE_Recon_Grounded02) == false then
      Despawn(Building.SE_Recon_Grounded02, true)
    end
    if IsDead(Building.SE_Recon_Grounded03) == false then
      Despawn(Building.SE_Recon_Grounded03, true)
    end
    if IsDead(Building.SE_Recon_Grounded04) == false then
      Despawn(Building.SE_Recon_Grounded04, true)
    end
    if IsDead(Building.SE_Recon_Grounded05) == false then
      Despawn(Building.SE_Recon_Grounded05, true)
    end
    if IsDead(Building.SE_Recon_Grounded06) == false then
      Despawn(Building.SE_Recon_Grounded06, true)
    end
    if IsDead(Building.SE_Gunship_Grounded01) == false then
      Despawn(Building.SE_Gunship_Grounded01, true)
    end
    if IsDead(Building.SE_Gunship_Grounded02) == false then
      Despawn(Building.SE_Gunship_Grounded02, true)
    end
    if IsDead(Building.SE_Gunship_Grounded03) == false then
      Despawn(Building.SE_Gunship_Grounded03, true)
    end
    if IsDead(Building.SE_Gunship_Grounded04) == false then
      Despawn(Building.SE_Gunship_Grounded04, true)
    end
    if IsDead(Building.SE_Gunship_Grounded05) == false then
      Despawn(Building.SE_Gunship_Grounded05, true)
    end
    if IsDead(Building.SE_Gunship_Grounded06) == false then
      Despawn(Building.SE_Gunship_Grounded06, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded01) == false then
      Despawn(Building.SE_HeavyTank_Grounded01, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded04) == false then
      Despawn(Building.SE_HeavyTank_Grounded04, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded05) == false then
      Despawn(Building.SE_HeavyTank_Grounded05, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded06) == false then
      Despawn(Building.SE_HeavyTank_Grounded06, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded08) == false then
      Despawn(Building.SE_HeavyTank_Grounded08, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded10) == false then
      Despawn(Building.SE_HeavyTank_Grounded10, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded11) == false then
      Despawn(Building.SE_HeavyTank_Grounded11, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded12) == false then
      Despawn(Building.SE_HeavyTank_Grounded12, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded04_HeavyTank01) == false then
      Despawn(Building.SE_HeavyTank_Grounded04_HeavyTank01, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded04_HeavyTank02) == false then
      Despawn(Building.SE_HeavyTank_Grounded04_HeavyTank02, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded04_HeavyTank03) == false then
      Despawn(Building.SE_HeavyTank_Grounded04_HeavyTank03, true)
    end
    if IsDead(Building.SE_HeavyTank_Grounded04_HeavyTank04) == false then
      Despawn(Building.SE_HeavyTank_Grounded04_HeavyTank04, true)
    end
    if IsDead(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank01) == false then
      Despawn(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank01, true)
    end
    if IsDead(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank02) == false then
      Despawn(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank02, true)
    end
    if IsDead(Ground_Vehicle.SE_Grounded_HeavyTank01) == false then
      Despawn(Ground_Vehicle.SE_Grounded_HeavyTank01, true)
    end
    if IsDead(Ground_Vehicle.SE_Grounded_HeavyTank02) == false then
      Despawn(Ground_Vehicle.SE_Grounded_HeavyTank02, true)
    end
    if IsDead(Ground_Vehicle.SE_Grounded_HeavyTank03) == false then
      Despawn(Ground_Vehicle.SE_Grounded_HeavyTank03, true)
    end
    if IsDead(Ground_Vehicle.SE_Grounded_HeavyTank04) == false then
      Despawn(Ground_Vehicle.SE_Grounded_HeavyTank04, true)
    end
    if IsDead(Ground_Vehicle.SE_Grounded_HeavyTank05) == false then
      Despawn(Ground_Vehicle.SE_Grounded_HeavyTank05, true)
    end
    WestCamp01 = 0
    EastCamp01 = 0
    Despawner01 = 0
    Despawner02 = 0
    Despawner03 = 0
    Despawner04 = 0
    Despawner05 = 0
    Despawner05b = 0
    Despawner06 = 0
    Despawner07 = 0
    DespawnTheLot = 0
    EndFrame()
  end
end
