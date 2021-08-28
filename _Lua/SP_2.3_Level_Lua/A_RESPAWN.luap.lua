function A_RESPAWN(owner)
  local respawn01 = 0
  local respawn02 = 0
  local respawn03 = 0
  local respawn04 = 0
  local respawn05 = 0
  local respawn06 = 0
  while true do
    if respawn01 == 0 and 0 < NumItemsInArea(Map_Zone.Jump_Trigger_Map_Zone, flag.TYPE_WFRONTIER) then
      Spawn(Troop.TT_Grunt_Barracks_1_1)
      Spawn(Troop.TT_Grunt_Barracks_1_2)
      Spawn(Troop.TT_Grunt_Barracks_1_3)
      Spawn(Troop.TT_Flame_Barracks_1_1)
      Spawn(Troop.TT_Grunt_Barracks_1_6)
      Spawn(Troop.TT_Grunt_Barracks_1_7)
      Spawn(Troop.TT_Grunt_Barracks_1_8)
      respawn01 = 1
    end
    EndFrame()
    if respawn02 == 0 and 0 < NumItemsInArea(Map_Zone.RespawnZone01, flag.TYPE_WFRONTIER) then
      Spawn(Troop.TT_Grunt_Factory_1)
      Spawn(Troop.TT_Grunt_Factory_2)
      Spawn(Troop.TT_Grunt_Factory_3)
      Spawn(Troop.TT_Flame_Vet_Factory_1)
      EndFrame()
      Spawn(Troop.TT_Airbase_AA_Vet_1)
      Spawn(Troop.TundranFactoryAAVet01)
      Spawn(Troop.TundranFactoryGrunt01)
      Spawn(Troop.TundranFactoryGrunt02)
      Spawn(Troop.TundranFactoryGrunt03)
      Spawn(Troop.TundranFactoryGrunt04)
      EndFrame()
      Spawn(Troop.TT_AA_Vet_Barracks_2_1)
      Spawn(Troop.TT_AA_Vet_Barracks_2_2)
      Spawn(Troop.TT_AA_Vet_Barracks_2_3)
      Spawn(Troop.TT_AA_Vet_Barracks_2_4)
      Spawn(Troop.TT_Grunt_Barracks_2_1)
      Spawn(Troop.TT_Grunt_Barracks_2_2)
      Spawn(Troop.TT_Grunt_Barracks_2_3)
      Spawn(Troop.TT_Grunt_Barracks_2_4)
      Spawn(Troop.TT_Grunt_Airbase_1)
      Spawn(Troop.TT_Grunt_Airbase_2)
      Spawn(Troop.TT_Grunt_Airbase_3)
      EndFrame()
      Spawn(Troop.TT_Flame_Airbase_1)
      Spawn(Troop.TT_Grunt_Airbase_6)
      Spawn(Troop.TT_Grunt_Airbase_7)
      Spawn(Troop.TT_Grunt_Airbase_8)
      Spawn(Troop.TT_Grunt_Airbase_9)
      Spawn(Troop.TT_Airbase_Bazooka_1)
      Spawn(Troop.TT_Airbase_Bazooka_2)
      EndFrame()
      Spawn(Air_Vehicle.TT_Gunship_1)
      Spawn(Air_Vehicle.TT_Gunship_2)
      Spawn(Air_Vehicle.TT_Gunship_3)
      ReviveDeadUnit(Troop.BridgeCounterGrunt01, 307, 327, 180, 2)
      ReviveDeadUnit(Troop.BridgeCounterGrunt02, 313, 327, 180, 2)
      ReviveDeadUnit(Troop.BridgeCounterGrunt03, 319, 327, 180, 2)
      EndFrame()
      Spawn(Troop.TT_Bazooka_Barracks_2_1)
      Spawn(Troop.TT_Bazooka_Barracks_2_2)
      Spawn(Troop.TT_Bazooka_Barracks_2_3)
      Spawn(Troop.TT_Bazooka_Barracks_2_4)
      Spawn(Troop.TT_Grunt_Barracks_2_6)
      Spawn(Troop.TT_Grunt_Barracks_2_7)
      Spawn(Troop.TT_Grunt_Barracks_2_8)
      Spawn(Troop.TT_Grunt_Barracks_2_9)
      respawn02 = 1
    end
    EndFrame()
    if respawn03 == 0 and 0 < NumItemsInArea(Map_Zone.RespawnZone02, flag.TYPE_WFRONTIER) then
      Spawn(Troop.TT_Bazooka_Barracks_2_6)
      Spawn(Troop.TT_Bazooka_Barracks_2_7)
      EndFrame()
      Spawn(Troop.TT_Flame_Barracks_2_1)
      Spawn(Troop.TT_Flame_Barracks_2_2)
      Spawn(Morphing_Building.TT_MG_Tower_1)
      Spawn(Morphing_Building.TT_MG_Tower_2)
      Spawn(Morphing_Building.TT_MG_Turret_3)
      Spawn(Morphing_Building.TT_MG_Turret_4)
      EndFrame()
      Spawn(Troop.Entity340002110)
      Spawn(Troop.Entity340002109)
      Spawn(Troop.TT_MG_Nest_Grunt_3)
      Spawn(Building.MG_Tower_1)
      Spawn(Building.MG_Tower_2)
      respawn03 = 1
    end
    EndFrame()
    if respawn04 == 0 and 0 < NumItemsInArea(Map_Zone.Approach_enemy_HQ_trigger_1, flag.TYPE_WFRONTIER) then
      Spawn(Troop.Entity340001648)
      Spawn(Troop.Entity340001649)
      Spawn(Troop.Entity340001650)
      respawn04 = 1
    end
    EndFrame()
    if respawn05 == 0 and 0 < NumItemsInArea(Map_Zone.Approach_enemy_HQ_trigger_2, flag.TYPE_WFRONTIER) then
      Spawn(Troop.Entity340001652)
      Spawn(Troop.Entity340001653)
      Spawn(Troop.Entity340001655)
      respawn05 = 1
    end
    EndFrame()
    if respawn06 == 0 and 0 < NumItemsInArea(Map_Zone.Approach_enemy_HQ_trigger_3, flag.TYPE_WFRONTIER) then
      Spawn(Troop.Entity340002112)
      Spawn(Troop.Entity340002113)
      Spawn(Troop.Entity340002118)
      Spawn(Troop.Entity340002119)
      EndFrame()
      Spawn(Building.Entity340002005)
      Spawn(Building.Entity340002008)
      Spawn(Building.MG_Nest_1)
      Spawn(Air_Vehicle.TT_Gunship_4)
      Spawn(Air_Vehicle.TT_Gunship_5)
      Spawn(Air_Vehicle.TT_Gunship_6)
      Spawn(Morphing_Building.TT_HQ_MG_Turret_1)
      Spawn(Morphing_Building.TT_HQ_MG_Turret_2)
      Spawn(Morphing_Building.TT_HQ_MG_Turret_3)
      Spawn(Morphing_Building.TT_HQ_MG_Turret_4)
      EndFrame()
      Spawn(Troop.TT_Flame_TT_HQ_1)
      Spawn(Troop.TT_Flame_TT_HQ_2)
      Spawn(Troop.TT_Flame_TT_HQ_3)
      Spawn(Troop.TT_Flame_TT_HQ_4)
      respawn06 = 1
    end
    EndFrame()
    EndFrame()
  end
end
