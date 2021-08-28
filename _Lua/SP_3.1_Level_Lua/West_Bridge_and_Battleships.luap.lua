function West_Bridge_and_Battleships(owner)
  local loop = 0
  local spawngs1 = 0
  local spawngs2 = 0
  local spawngs3 = 0
  script06 = owner
  Despawn(Ground_Vehicle.SE_Artillery_1)
  Despawn(Air_Vehicle.SE_Response_1)
  Despawn(Air_Vehicle.SE_Response_2)
  Despawn(Air_Vehicle.SE_Response_3)
  Despawn(Air_Vehicle.CS_Gunship_1)
  Despawn(Air_Vehicle.CS_Gunship_2)
  Despawn(Air_Vehicle.CS_Gunship_3)
  Despawn(Air_Vehicle.CS_Gunship_4)
  Despawn(Air_Vehicle.CS_Gunship_5)
  Despawn(Air_Vehicle.CS_Gunship_6)
  repeat
    WaitFor(2)
  until GetGroupHealthPercent(Unit_Group.Solar_West_Bridge) < 90 or 1 < NumItemsInArea(Map_Zone.West_Bridge, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or NumItemsInArea(Map_Zone.West_Bridge, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1) > 10 or bridge == 1
  DebugOut("Player has engaged units at the western bridgehead, send in Gunships")
  Spawn(Ground_Vehicle.CS_Artillery_1)
  Spawn(Ground_Vehicle.CS_Artillery_2)
  Spawn(Ground_Vehicle.CS_Artillery_3)
  repeat
    EndFrame()
  until mid == 2
  Spawn(Troop.Entity260019969)
  Spawn(Troop.Entity260019970)
  Spawn(Troop.Entity260019971)
  Spawn(Ground_Vehicle.SE_Artillery_1)
  PhoneMessage(77, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  DebugOut("player crossing the bridge first, send in 6 Gunships and a HT")
  if IsDead(Ground_Vehicle.AI_Light_Tank_1) == false then
    AttackTarget(Ground_Vehicle.SE_Artillery_1, Ground_Vehicle.AI_Light_Tank_1)
  elseif IsDead(Ground_Vehicle.AI_Light_Tank_2) == false then
    AttackTarget(Ground_Vehicle.SE_Artillery_1, Ground_Vehicle.AI_Light_Tank_2)
  else
    AttackTarget(Ground_Vehicle.SE_Artillery_1, GetPlayerUnit(constant.PLAYER_ONE))
  end
  repeat
    WaitFor(0.2)
  until 0 < NumItemsInArea(Map_Zone.AA_Text, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.AA_Text, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1)
  Spawn(Ground_Vehicle.SE_Light_Tank_3)
  Spawn(Ground_Vehicle.SE_Light_Tank_5)
  if IsDead(Building.SE_MG_Nest_3) == false and IsDead(Building.SE_MG_Nest_4) == false and IsDead(Ground_Vehicle.SE_Light_Tank_3) == false and (IsDead(Water_Vehicle.AI_Battleship_1) == false or IsDead(Water_Vehicle.AI_Battleship_2) == false) then
    PhoneMessage(79, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
  end
  repeat
    if 0 < NumItemsInArea(Map_Zone.AA_Text, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.AA_Text, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1) then
    end
    WaitFor(0.2)
  until loop > 2
end
