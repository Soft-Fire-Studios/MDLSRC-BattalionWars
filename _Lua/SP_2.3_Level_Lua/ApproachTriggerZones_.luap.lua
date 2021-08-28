function ApproachTriggerZones_(owner)
  local trigger1 = 0
  local trigger2 = 0
  local trigger3 = 0
  local trigger4 = 0
  local trigger6 = 0
  local trigger7 = 0
  local trigger8 = 0
  local trigger9 = 0
  local trigger10 = 0
  local trigger11 = 0
  local trigger12 = 0
  local trigger13 = 0
  local trigger14 = 0
  local trigger15 = 0
  local trigger16 = 0
  local trigger17 = 0
  local trigger21 = 0
  local trigger22 = 0
  local trigger23 = 0
  while missionend == 0 do
    if trigger1 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Barracks_1_Counter_Attack) then
      PhoneMessage(70, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      trigger1 = 1
      DebugOut("*ApproachTriggerZones* - 1. Barracks 1 CP Approach Zone Triggered.")
    end
    EndFrame()
    if trigger2 == 0 and GetState(Capture_Point.Barracks_1_Capture_Point) ~= flag.TYPE_TUNDRAN and 0 < NumItemsInArea(Map_Zone.Approach_Factory_CP_Trigger, flag.TYPE_WFRONTIER) then
      if IsDead(Troop.TT_Grunt_Factory_1) == false or IsDead(Troop.TT_Grunt_Factory_2) == false or IsDead(Troop.TT_Grunt_Factory_3) == false or IsDead(Troop.TundranFactoryGrunt01) == false or IsDead(Troop.TundranFactoryGrunt02) == false or IsDead(Troop.TundranFactoryGrunt03) == false or IsDead(Troop.TundranFactoryGrunt04) == false or IsDead(Troop.TundranFactoryAAVet01) == false or IsDead(Troop.TT_Flame_Vet_Factory_1) == false or IsDead(Troop.TT_Airbase_AA_Vet_1) == false then
        PhoneMessage(69, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        trigger2 = 1
        trigger3 = 1
        DebugOut("*ApproachTriggerZones* - 2. Factory CP Approach Zone Triggered.")
      end
      trigger2 = 1
      DebugOut("*ApproachTriggerZones* - 2. Factory CP Approach Zone Triggered - but all the troops are dead so there will be no CO message.")
    end
    EndFrame()
    if trigger3 == 0 and GetState(Capture_Point.Barracks_1_Capture_Point) ~= flag.TYPE_TUNDRAN and 0 < NumItemsInArea(Map_Zone.Approach_Airbase_CP_Trigger, flag.TYPE_WFRONTIER) then
      if IsDead(Troop.TT_Grunt_Airbase_6) == false or IsDead(Troop.TT_Grunt_Airbase_7) == false or IsDead(Troop.TT_Grunt_Airbase_8) == false or IsDead(Troop.TT_Grunt_Airbase_9) == false or IsDead(Troop.TT_Flame_Airbase_1) == false or IsDead(Troop.TT_Airbase_Bazooka_1) == false or IsDead(Troop.TT_Airbase_Bazooka_2) == false then
        PhoneMessage(69, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        trigger2 = 1
        trigger3 = 1
        DebugOut("*ApproachTriggerZones* - 3. Airbase CP Approach Zone Triggered.")
      end
      trigger3 = 1
      DebugOut("*ApproachTriggerZones* - 3. Airbase CP Approach Zone Triggered - but all the troops are dead so there will be no CO message.")
    end
    EndFrame()
    if trigger6 == 0 and factory == 1 and 0 < NumItemsInArea(Map_Zone.Approach_enemy_HQ_trigger_3, flag.TYPE_WFRONTIER) and (IsDead(Ground_Vehicle.WF_Heavy_Tank_1) == false or IsDead(Ground_Vehicle.WF_Recon_1) == false) then
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
      trigger6 = 1
      DebugOut("*ApproachTriggerZones* - 6. Enemy HQ Approach Zone 3 Triggered.")
    end
    EndFrame()
    if trigger7 == 0 and 0 < NumItemsInArea(Map_Zone.Approach_enemy_HQ_trigger_4, flag.TYPE_WFRONTIER) then
      PhoneMessage(64, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
      trigger7 = 1
      DebugOut("*ApproachTriggerZones* - 7. Enemy HQ Approach Zone 4 Triggered.")
    end
    EndFrame()
    if trigger8 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Approach_enemy_HQ_trigger_5) then
      PhoneMessage(67, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
      trigger8 = 1
      DebugOut("*ApproachTriggerZones* - 8. At Enemy HQ Approach Zone Triggered.")
    end
    EndFrame()
    if trigger10 == 0 and GetState(Capture_Point.Airbase_Capture_Point) == flag.TYPE_TUNDRAN and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Approach_2_Barracks_2_CP) then
      PhoneMessage(71, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      trigger10 = 1
      DebugOut("*ApproachTriggerZones* - 10. Attacking Northern Barracks without taking Airbase.")
    end
    EndFrame()
    if trigger11 == 0 and GetState(Capture_Point.Factory_Capture_Point) == flag.TYPE_TUNDRAN and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Approach_1_Barracks_2_CP) then
      PhoneMessage(72, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      trigger11 = 1
      DebugOut("*ApproachTriggerZones* - 11. Attacking Northern Barracks without taking Factory.")
    end
    EndFrame()
    if trigger12 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Approach_enemy_HQ_trigger_4) and (IsDead(Air_Vehicle.TT_Gunship_2) == false or IsDead(Air_Vehicle.TT_Gunship_3) == false) then
      GoToArea(Air_Vehicle.TT_Gunship_2, 413, 900, 20)
      GoToArea(Air_Vehicle.TT_Gunship_3, 413, 900, 10)
      trigger12 = 1
      DebugOut("*ApproachTriggerZones* - 12. Gorgi sends Gunships out from HQ.")
      if IsDead(Water_Vehicle.TT_Bship1) == false then
        PhoneMessage(73, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      end
    end
    EndFrame()
    if trigger13 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Jump_Trigger_Map_Zone) then
      ClearMessageQueue()
      PhoneMessage(7, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      trigger13 = 1
      DebugOut("*ApproachTriggerZones* - 13. Approaches Broken Bridge Jump.")
    end
    EndFrame()
    if trigger14 == 0 and airbase == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AA_Tower_Approach) and (IsDead(Building.AATower01) == false or IsDead(Building.AATower02) == false) then
      ClearMessageQueue()
      PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      trigger14 = 1
      DebugOut("*ApproachTriggerZones* - 14. AA Towers Approach Zone Triggered.")
    end
    EndFrame()
    if trigger15 == 0 and GetState(Capture_Point.Factory_Capture_Point) ~= flag.TYPE_TUNDRAN and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.RPG_Tower_Approach) and (IsDead(Building.RPGTower01) == false or IsDead(Building.RPGTower02) == false) then
      ClearMessageQueue()
      PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      trigger15 = 1
      DebugOut("*ApproachTriggerZones* - 15. RPG Towers Approach Zone Triggered.")
    end
    EndFrame()
    if trigger16 == 0 and TestFlags(GetPlayerUnit(), flag.GTYPE_GRENADE, constant.GTYPE) then
      PhoneMessage(100, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      trigger16 = 1
      DebugOut("*ApproachTriggerZones* - 16. The player has had their Mortar Vet tutorial.")
    end
    EndFrame()
    if trigger17 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.BridgeGruntCounter) then
      GoToArea(Troop.BridgeCounterGrunt01, 390, 234, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.BridgeCounterGrunt02, 390, 234, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.BridgeCounterGrunt03, 390, 234, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_1, 390, 234, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_2, 390, 234, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_3, 390, 234, 10, 0, constant.ORDER_NORMAL)
      WaitFor(0.1)
      Spawn(Troop.TT_AA_Vet_Barracks_2_1)
      Spawn(Troop.TT_AA_Vet_Barracks_2_2)
      WaitFor(0.1)
      Spawn(Troop.TT_AA_Vet_Barracks_2_3)
      Spawn(Troop.TT_AA_Vet_Barracks_2_4)
      WaitFor(0.1)
      Spawn(Troop.TT_Grunt_Barracks_2_1)
      Spawn(Troop.TT_Grunt_Barracks_2_2)
      WaitFor(0.1)
      Spawn(Troop.TT_Grunt_Barracks_2_3)
      Spawn(Troop.TT_Grunt_Barracks_2_4)
      trigger17 = 1
      DebugOut("*ApproachTriggerZones* - 17. The player has triggered the bridge counter")
    end
    EndFrame()
    if trigger21 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.TT_HQ_Spawn_Zone) then
      AttackTarget(Water_Vehicle.TT_Bship1, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      trigger21 = 1
    end
    EndFrame()
    if trigger22 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SuperWeaponSpeech) then
      PhoneMessage(85, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      PhoneMessage(86, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      trigger22 = 1
    end
    EndFrame()
    if trigger23 == 0 and 0 < NumPassengersInUnit(Capture_Point.TT_HQ_Capture_Point) then
      GoToArea(Troop.TT_Flame_TT_HQ_1, 451, 1031, 5, 0, constant.ORDER_FORCED)
      GoToArea(Troop.TT_Flame_TT_HQ_2, 451, 1031, 5, 0, constant.ORDER_FORCED)
      GoToArea(Troop.TT_Flame_TT_HQ_3, 451, 1031, 5, 0, constant.ORDER_FORCED)
      GoToArea(Troop.TT_Flame_TT_HQ_4, 451, 1031, 5, 0, constant.ORDER_FORCED)
      trigger23 = 1
    end
    EndFrame()
  end
end
