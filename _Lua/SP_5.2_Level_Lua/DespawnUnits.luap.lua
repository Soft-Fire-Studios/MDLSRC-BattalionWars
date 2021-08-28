function DespawnUnits(owner)
  scriptDespawnUnits = owner
  local cavebattleships = 0
  local powcampspawn = 0
  local healthtent = 0
  local healthcrate1 = 0
  local healthcrate2 = 0
  local healthcrate3 = 0
  local healthcrate4 = 0
  local healthcrate5 = 0
  local healthcrate6 = 0
  local healthcrate7 = 0
  local healthcrate8 = 0
  local healthcrate9 = 0
  local healthcrate10 = 0
  local healthcrate11 = 0
  local healthcrate12 = 0
  local healthcrate13 = 0
  local healthcrate14 = 0
  local healthcrate15 = 0
  local healthcrate16 = 0
  local healthcrate17 = 0
  local healthcrate18 = 0
  local healthcrate19 = 0
  local healthcrate20 = 0
  local healthcrate21 = 0
  local healthcrate22 = 0
  local healthcrate23 = 0
  local healthcrate24 = 0
  local healthcrate25 = 0
  local healthcrate26 = 0
  local healthcrate27 = 0
  local healthcrate28 = 0
  local healthcrate29 = 0
  local healthcrate30 = 0
  local healthcrate31 = 0
  local healthcrate32 = 0
  local healthcrate33 = 0
  local jerrycrate1 = 0
  local jerrycrate2 = 0
  local jerrycrate3 = 0
  local jerrycrate4 = 0
  local jerrycrate5 = 0
  local jerrycrate6 = 0
  local jerrycrate7 = 0
  local jerrycrate8 = 0
  local jerrycrate9 = 0
  local onland = 0
  local ghosttownzone1 = 0
  local ghosttownzone2 = 0
  AddToGroup(Unit_Group.Player_Army, Water_Vehicle.TDreadnought)
  AddToGroup(Unit_Group.Player_Army, Water_Vehicle.TundranFrigate1)
  AddToGroup(Unit_Group.Player_Army, Water_Vehicle.TundranFrigate2)
  AddToGroup(Unit_Group.Player_Army, Water_Vehicle.TundranFrigate3)
  AddToGroup(Unit_Group.Player_Army, Water_Vehicle.TundranSubmarine1)
  AddToGroup(Unit_Group.Player_Army, Water_Vehicle.TundranSubmarine2)
  Despawn(Air_Vehicle.TAirTransport1)
  Despawn(Air_Vehicle.TAirTransport2)
  Despawn(Air_Vehicle.MunitionsTransport)
  Despawn(Water_Vehicle.CaveDreadnought1)
  Despawn(Water_Vehicle.CaveDreadnought2)
  Despawn(Water_Vehicle.CaveDreadnought3)
  Despawn(Water_Vehicle.CaveDreadnought4)
  Despawn(Troop.POWCampBaddies1, true)
  Despawn(Troop.POWCampBaddies2, true)
  Despawn(Troop.POWCampBaddies3, true)
  Despawn(Troop.POWCampBaddies4, true)
  Despawn(Troop.POWCampBaddies5, true)
  Despawn(Troop.POWCampBaddies6, true)
  Despawn(Building.POWCampNest1, true)
  Despawn(Building.POWCampNest2, true)
  Despawn(Building.POWCampNest3, true)
  Despawn(Building.POWCampNest4, true)
  WaitFor(2)
  Despawn(Troop.XHoseVet1, true)
  Despawn(Troop.XHoseVet2, true)
  Despawn(Troop.XHoseVet3, true)
  Despawn(Troop.DespawnableUnit1, true)
  Despawn(Troop.DespawnableUnit2, true)
  Despawn(Troop.DespawnableUnit3, true)
  Despawn(Troop.DespawnableUnit4, true)
  Despawn(Troop.DespawnableUnit5, true)
  Despawn(Troop.DespawnableUnit6, true)
  Despawn(Troop.DespawnableUnit7, true)
  Despawn(Troop.DespawnableUnit8, true)
  Despawn(Troop.DespawnableUnit9, true)
  Despawn(Troop.DespawnableUnit10, true)
  Despawn(Troop.DespawnableUnit11, true)
  Despawn(Troop.DespawnableUnit12, true)
  Despawn(Troop.DespawnableUnit13, true)
  Despawn(Troop.XAAPOWPatrol1, true)
  Despawn(Troop.XAAPOWPatrol2, true)
  Despawn(Building.MGNest1, true)
  Despawn(Building.MGNest2, true)
  Despawn(Building.ScatteredAATower4, true)
  Despawn(Building.ScatteredAATower5, true)
  Despawn(Building.ScatteredAATower7, true)
  Despawn(Building.ScatteredAATower9, true)
  Despawn(Building.ScatteredAATower10, true)
  Despawn(Troop.XFlameAmbushers1, true)
  Despawn(Troop.XFlameAmbushers2, true)
  Despawn(Troop.XFlameAmbushers3, true)
  Despawn(Troop.GhostTownFlamer1, true)
  Despawn(Troop.GhostTownFlamer2, true)
  Despawn(Troop.GhostTownFlamer3, true)
  Despawn(Troop.XBazookaAmbushers1, true)
  Despawn(Troop.XBazookaAmbushers2, true)
  Despawn(Troop.XBazookaAmbushers3, true)
  Despawn(Troop.UBendFlamers1, true)
  Despawn(Troop.UBendFlamers2, true)
  Despawn(Troop.UBendFlamers3, true)
  Despawn(Troop.UBendFlamers4, true)
  Despawn(Troop.GhostTownBazookaWave2Bazooka1, true)
  Despawn(Troop.GhostTownBazookaWave2Bazooka2, true)
  Despawn(Troop.GhostTownBazookaWave2Bazooka3, true)
  Despawn(Troop.XFlamerAmbushers1, true)
  Despawn(Troop.XFlamerAmbushers2, true)
  Despawn(Troop.AttackingGrunt1, true)
  Despawn(Troop.AttackingGrunt2, true)
  Despawn(Troop.AttackingGrunt3, true)
  Despawn(Troop.EndMissionUnit1, true)
  Despawn(Troop.EndMissionUnit2, true)
  Despawn(Troop.EndMissionUnit3, true)
  Despawn(Troop.EndMissionUnit4, true)
  Despawn(Troop.TundranAAPOW1, true)
  Despawn(Troop.TundranAAPOW2, true)
  Despawn(Troop.TundranAAPOW3, true)
  Despawn(Troop.TundranAAPOW4, true)
  Despawn(Troop.TundranAAPOW5, true)
  Despawn(Troop.AAMortar1, true)
  Despawn(Troop.AAMortar2, true)
  Despawn(Troop.AAMortar3, true)
  Despawn(Troop.AAVet1, true)
  Despawn(Troop.AAVet2, true)
  Despawn(Ground_Vehicle.TLightTank2, true)
  Despawn(Air_Vehicle.HelipadGunship1, true)
  Despawn(Air_Vehicle.HelipadGunship2, true)
  while true do
    while notincutscene == 0 do
      WaitFor(0.2)
      if IsInRange(Unit_Group.LandUnits, Objective_Marker.SolarMortar, 350) and powcampspawn == 0 then
        Spawn(Troop.POWCampBaddies1)
        Spawn(Troop.POWCampBaddies2)
        Spawn(Troop.POWCampBaddies3)
        Spawn(Troop.POWCampBaddies4)
        Spawn(Troop.POWCampBaddies5)
        Spawn(Troop.POWCampBaddies6)
        Spawn(Building.POWCampNest1)
        Spawn(Building.POWCampNest2)
        Spawn(Building.POWCampNest3)
        Spawn(Building.POWCampNest4)
        Spawn(Troop.AAMortar1)
        Spawn(Troop.AAMortar2)
        Spawn(Troop.AAMortar3)
        Spawn(Troop.AAVet1)
        Spawn(Troop.AAVet2)
        Spawn(Ground_Vehicle.TLightTank2)
        DebugOut("Player nearing POW camp, spawning units")
        powcampspawn = 1
      end
      EndFrame()
      if IsInRange(Unit_Group.LandUnits, Objective_Marker.SolarMortar, 350) == false and powcampspawn == 1 and mainpowcamp == 0 then
        Despawn(Troop.POWCampBaddies1, true)
        Despawn(Troop.POWCampBaddies2, true)
        Despawn(Troop.POWCampBaddies3, true)
        Despawn(Troop.POWCampBaddies4, true)
        Despawn(Troop.POWCampBaddies5, true)
        Despawn(Troop.POWCampBaddies6, true)
        Despawn(Building.POWCampNest1, true)
        Despawn(Building.POWCampNest2, true)
        Despawn(Building.POWCampNest3, true)
        Despawn(Building.POWCampNest4, true)
        Despawn(Troop.AAMortar1, true)
        Despawn(Troop.AAMortar2, true)
        Despawn(Troop.AAMortar3, true)
        Despawn(Troop.AAVet1, true)
        Despawn(Troop.AAVet2, true)
        Despawn(Ground_Vehicle.TLightTank2, true)
        DebugOut("Player leaving POW camp, despawning units")
        powcampspawn = 0
      end
      EndFrame()
      if IsInRange(Unit_Group.LandUnits, Destroyable_Object.Dock2, 275) and cavebattleships == 0 then
        Spawn(Water_Vehicle.CaveDreadnought1)
        Spawn(Water_Vehicle.CaveDreadnought2)
        Spawn(Water_Vehicle.CaveDreadnought3)
        Spawn(Water_Vehicle.CaveDreadnought4)
        cavebattleships = 1
        DebugOut("Spawning cave dreadnoughts")
      end
      EndFrame()
      if IsInRange(Unit_Group.LandUnits, Destroyable_Object.Dock2, 275) == false and cavebattleships == 1 then
        Despawn(Water_Vehicle.CaveDreadnought1)
        Despawn(Water_Vehicle.CaveDreadnought2)
        Despawn(Water_Vehicle.CaveDreadnought3)
        Despawn(Water_Vehicle.CaveDreadnought4)
        DebugOut("Despawning cave dreadnoughts")
        cavebattleships = 0
      end
      EndFrame()
      if IsInRange(Unit_Group.LandUnits, Destroyable_Object.GhostTownMarker1, 275) and ghosttownzone1 == 0 then
        Spawn(Troop.XBazookaAmbushers1)
        Spawn(Troop.XBazookaAmbushers2)
        Spawn(Troop.XBazookaAmbushers3)
        Spawn(Troop.UBendFlamers1)
        Spawn(Troop.UBendFlamers2)
        Spawn(Troop.UBendFlamers3)
        Spawn(Troop.UBendFlamers4)
        Spawn(Troop.GhostTownBazookaWave2Bazooka1)
        Spawn(Troop.GhostTownBazookaWave2Bazooka2)
        Spawn(Troop.GhostTownBazookaWave2Bazooka3)
        Spawn(Troop.XFlamerAmbushers1)
        Spawn(Troop.XFlamerAmbushers2)
        ghosttownzone1 = 1
        DebugOut("Spawning ghost town zone 1 troops")
      end
      EndFrame()
      if IsInRange(Unit_Group.LandUnits, Destroyable_Object.GhostTownMarker1, 275) == false and ghosttownzone1 == 1 then
        Despawn(Troop.XBazookaAmbushers1, true)
        Despawn(Troop.XBazookaAmbushers2, true)
        Despawn(Troop.XBazookaAmbushers3, true)
        Despawn(Troop.UBendFlamers1, true)
        Despawn(Troop.UBendFlamers2, true)
        Despawn(Troop.UBendFlamers3, true)
        Despawn(Troop.UBendFlamers4, true)
        Despawn(Troop.GhostTownBazookaWave2Bazooka1, true)
        Despawn(Troop.GhostTownBazookaWave2Bazooka2, true)
        Despawn(Troop.GhostTownBazookaWave2Bazooka3, true)
        Despawn(Troop.XFlamerAmbushers1, true)
        Despawn(Troop.XFlamerAmbushers2, true)
        DebugOut("Despawning ghost town zone 1 troops")
        ghosttownzone1 = 0
      end
      EndFrame()
      if IsInRange(Unit_Group.LandUnits, Destroyable_Object.GhostTownMarker2, 275) and ghosttownzone2 == 0 then
        Spawn(Troop.AttackingGrunt1)
        Spawn(Troop.AttackingGrunt2)
        Spawn(Troop.AttackingGrunt3)
        Spawn(Troop.DespawnableUnit9)
        Spawn(Troop.DespawnableUnit10)
        Spawn(Troop.DespawnableUnit11)
        Spawn(Troop.DespawnableUnit12)
        Spawn(Troop.DespawnableUnit13)
        Spawn(Troop.EndMissionUnit1)
        Spawn(Troop.EndMissionUnit2)
        Spawn(Troop.EndMissionUnit3)
        Spawn(Troop.EndMissionUnit4)
        Spawn(Building.ScatteredAATower7)
        ghosttownzone2 = 1
        DebugOut("Spawning ghost town zone 2 troops")
      end
      EndFrame()
      if IsInRange(Unit_Group.LandUnits, Destroyable_Object.GhostTownMarker2, 275) == false and ghosttownzone2 == 1 then
        Despawn(Troop.AttackingGrunt1, true)
        Despawn(Troop.AttackingGrunt2, true)
        Despawn(Troop.AttackingGrunt3, true)
        Despawn(Troop.DespawnableUnit9, true)
        Despawn(Troop.DespawnableUnit10, true)
        Despawn(Troop.DespawnableUnit11, true)
        Despawn(Troop.DespawnableUnit12, true)
        Despawn(Troop.DespawnableUnit13, true)
        Despawn(Troop.EndMissionUnit1, true)
        Despawn(Troop.EndMissionUnit2, true)
        Despawn(Troop.EndMissionUnit3, true)
        Despawn(Troop.EndMissionUnit4, true)
        Despawn(Building.ScatteredAATower7, true)
        DebugOut("Despawning ghost town zone 2 troops")
        ghosttownzone2 = 0
      end
      EndFrame()
      if IsDead(Destroyable_Object.HealthPackTent) and healthtent == 0 then
        Spawn(Pickup.HealthPack1)
        Spawn(Pickup.HealthPack2)
        Spawn(Pickup.HealthPack3)
        Spawn(Pickup.HealthPack4)
        Spawn(Pickup.HealthPack5)
        Spawn(Pickup.HealthPack6)
        healthtent = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate1) and healthcrate1 == 0 then
        Spawn(Pickup.DestroyableHealthCrate1)
        healthcrate1 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate2) and healthcrate2 == 0 then
        Spawn(Pickup.DestroyableHealthCrate2)
        healthcrate2 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate3) and healthcrate3 == 0 then
        Spawn(Pickup.DestroyableHealthCrate3)
        healthcrate3 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate4) and healthcrate4 == 0 then
        Spawn(Pickup.DestroyableHealthCrate4)
        healthcrate4 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate5) and healthcrate5 == 0 then
        Spawn(Pickup.DestroyableHealthCrate5)
        healthcrate5 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate6) and healthcrate6 == 0 then
        Spawn(Pickup.DestroyableHealthCrate6)
        healthcrate6 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate7) and healthcrate7 == 0 then
        Spawn(Pickup.DestroyableHealthCrate7)
        healthcrate7 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate8) and healthcrate8 == 0 then
        Spawn(Pickup.DestroyableHealthCrate8)
        healthcrate8 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate9) and healthcrate9 == 0 then
        Spawn(Pickup.DestroyableHealthCrate9)
        healthcrate9 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate10) and healthcrate10 == 0 then
        Spawn(Pickup.DestroyableHealthCrate10)
        healthcrate10 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate11) and healthcrate11 == 0 then
        Spawn(Pickup.DestroyableHealthCrate11)
        healthcrate11 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate12) and healthcrate12 == 0 then
        Spawn(Pickup.DestroyableHealthCrate12)
        healthcrate12 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate13) and healthcrate13 == 0 then
        Spawn(Pickup.DestroyableHealthCrate13)
        healthcrate13 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate14) and healthcrate14 == 0 then
        Spawn(Pickup.DestroyableHealthCrate14)
        healthcrate14 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate15) and healthcrate15 == 0 then
        Spawn(Pickup.DestroyableHealthCrate15)
        healthcrate15 = 1
      end
      EndFrame()
      if IsDead(Destroyable_Object.DestroyableHealthCrate16) and healthcrate16 == 0 then
        Spawn(Pickup.DestroyableHealthCrate16)
        healthcrate16 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate17) and healthcrate17 == 0 then
        Spawn(Pickup.DestroyableHealthCrate17)
        healthcrate17 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate18) and healthcrate18 == 0 then
        Spawn(Pickup.DestroyableHealthCrate18)
        healthcrate18 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate19) and healthcrate19 == 0 then
        Spawn(Pickup.DestroyableHealthCrate19)
        healthcrate19 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate20) and healthcrate20 == 0 then
        Spawn(Pickup.DestroyableHealthCrate20)
        healthcrate20 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate21) and healthcrate21 == 0 then
        Spawn(Pickup.DestroyableHealthCrate21)
        healthcrate21 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate22) and healthcrate22 == 0 then
        Spawn(Pickup.DestroyableHealthCrate22)
        healthcrate22 = 1
      end
      EndFrame()
      if IsDead(Destroyable_Object.DestroyableHealthCrate23) and healthcrate23 == 0 then
        Spawn(Pickup.DestroyableHealthCrate23)
        healthcrate23 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate24) and healthcrate24 == 0 then
        Spawn(Pickup.DestroyableHealthCrate24Pickup1)
        Spawn(Pickup.DestroyableHealthCrate24Pickup2)
        healthcrate24 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate25) and healthcrate25 == 0 then
        Spawn(Pickup.DestroyableHealthCrate25)
        healthcrate25 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate26) and healthcrate26 == 0 then
        Spawn(Pickup.DestroyableHealthCrate26)
        healthcrate26 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate27) and healthcrate27 == 0 then
        Spawn(Pickup.DestroyableHealthCrate27)
        healthcrate27 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate28) and healthcrate28 == 0 then
        Spawn(Pickup.DestroyableHealthCrate28)
        healthcrate28 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate29) and healthcrate29 == 0 then
        Spawn(Pickup.DestroyableHealthCrate29)
        healthcrate29 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate30) and healthcrate30 == 0 then
        Spawn(Pickup.DestroyableHealthCrate30)
        healthcrate30 = 1
      end
      EndFrame()
      if IsDead(Destroyable_Object.DestroyableHealthCrate31) and healthcrate31 == 0 then
        Spawn(Pickup.DestroyableHealthCrate31)
        healthcrate31 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate32) and healthcrate32 == 0 then
        Spawn(Pickup.DestroyableHealthCrate32)
        healthcrate32 = 1
      end
      if IsDead(Destroyable_Object.DestroyableHealthCrate33) and healthcrate33 == 0 then
        Spawn(Pickup.DestroyableHealthCrate33)
        healthcrate33 = 1
      end
      if IsDead(Destroyable_Object.DestroyableJerryCrate1) and jerrycrate1 == 0 then
        Spawn(Pickup.DestroyableJerryCrate1)
        jerrycrate1 = 1
      end
      if IsDead(Destroyable_Object.DestroyableJerryCrate2) and jerrycrate2 == 0 then
        Spawn(Pickup.DestroyableJerryCrate2)
        jerrycrate2 = 1
      end
      if IsDead(Destroyable_Object.DestroyableJerryCrate3) and jerrycrate3 == 0 then
        Spawn(Pickup.DestroyableJerryCrate3)
        jerrycrate3 = 1
      end
      if IsDead(Destroyable_Object.DestroyableJerryCrate4) and jerrycrate4 == 0 then
        Spawn(Pickup.DestroyableJerryCrate4)
        jerrycrate4 = 1
      end
      if IsDead(Destroyable_Object.DestroyableJerryCrate5) and jerrycrate5 == 0 then
        Spawn(Pickup.DestroyableJerryCrate5)
        jerrycrate5 = 1
      end
      if IsDead(Destroyable_Object.DestroyableJerryCrate6) and jerrycrate6 == 0 then
        Spawn(Pickup.DestroyableJerryCrate6)
        jerrycrate6 = 1
      end
      if IsDead(Destroyable_Object.DestroyableJerryCrate7) and jerrycrate7 == 0 then
        Spawn(Pickup.DestroyableJerryCrate7)
        jerrycrate7 = 1
      end
      if IsDead(Destroyable_Object.DestroyableJerryCrate8) and jerrycrate8 == 0 then
        Spawn(Pickup.DestroyableJerryCrate8)
        jerrycrate8 = 1
      end
      if IsDead(Destroyable_Object.DestroyableJerryCrate9) and jerrycrate9 == 0 then
        Spawn(Pickup.DestroyableJerryCrate9)
        jerrycrate9 = 1
      end
      if beachlandingcomplete == 1 and onland == 0 then
        Spawn(Troop.XHoseVet1)
        Spawn(Troop.XHoseVet2)
        Spawn(Troop.XHoseVet3)
        Spawn(Troop.DespawnableUnit1)
        Spawn(Troop.DespawnableUnit2)
        Spawn(Troop.DespawnableUnit3)
        Spawn(Troop.DespawnableUnit4)
        Spawn(Troop.DespawnableUnit5)
        Spawn(Troop.DespawnableUnit6)
        Spawn(Troop.DespawnableUnit7)
        Spawn(Troop.DespawnableUnit8)
        Spawn(Troop.XAAPOWPatrol1)
        Spawn(Troop.XAAPOWPatrol2)
        Spawn(Building.MGNest1)
        Spawn(Building.MGNest2)
        Spawn(Building.ScatteredAATower4)
        Spawn(Building.ScatteredAATower9)
        Spawn(Building.ScatteredAATower10)
        Spawn(Air_Vehicle.HelipadGunship1)
        Spawn(Air_Vehicle.HelipadGunship2)
        Spawn(Troop.TundranAAPOW1)
        Spawn(Troop.TundranAAPOW2)
        Spawn(Troop.TundranAAPOW3)
        Spawn(Troop.TundranAAPOW4)
        Spawn(Troop.TundranAAPOW5)
        onland = 1
      end
    end
    EndFrame()
  end
end
