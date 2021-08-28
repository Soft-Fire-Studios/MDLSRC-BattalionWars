function First_Attack(owner)
  script02 = owner
  AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.AI_Light_Tank_1)
  AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.AI_Light_Tank_2)
  AddToGroup(Unit_Group.Player_Army, Troop.AI_Grunt_1)
  AddToGroup(Unit_Group.Player_Army, Troop.AI_Grunt_2)
  AddToGroup(Unit_Group.Player_Army, Troop.AI_Grunt_3)
  AddToGroup(Unit_Group.Player_Army, Troop.AI_Grunt_4)
  AddToGroup(Unit_Group.Player_Army, Troop.AI_Grunt_5)
  AddToGroup(Unit_Group.Player_Army, Troop.AI_Grunt_6)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity260024592)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity260024593)
  AddToGroup(Unit_Group.Player_Army, Troop.AI_Mortar_1)
  AddToGroup(Unit_Group.Player_Army, Troop.AI_Mortar_2)
  AddToGroup(Unit_Group.Player_Army, Troop.AI_Mortar_3)
  Despawn(Troop.SE_Baz_1, true)
  Despawn(Troop.SE_Baz_2, true)
  Despawn(Troop.SE_Baz_3, true)
  repeat
    EndFrame()
  until shot ~= 0
  if shot == 1 then
    DebugOut("Intro Shot 3 has begun, teleport away from and then send units to their start position")
    Teleport(Ground_Vehicle.SE_Light_Tank_1, -975, 345, 190, 5)
    Teleport(Troop.CS_Grunt_1, -915, 360, 190, 5)
    Teleport(Troop.CS_Grunt_2, -910, 355, 190, 5)
    Teleport(Troop.CS_Grunt_3, -905, 350, 190, 5)
    EndFrame()
    GoToArea(Ground_Vehicle.SE_Light_Tank_1, -1000, 335, 5)
    GoToArea(Troop.CS_Grunt_1, -942, 314, 5)
    GoToArea(Troop.CS_Grunt_2, -948, 305, 5)
    GoToArea(Troop.CS_Grunt_3, -942, 297, 5)
  end
  repeat
    EndFrame()
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.First_Attack, CombineFlags(flag.TYPE_ANGLO))
  DebugOut("Anglo uNITS in First Attack zone, sending SE units to respond")
  PhoneMessage(8, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  Spawn(Ground_Vehicle.SE_Light_Tank_2)
  Spawn(Troop.SE_Grunt_5)
  Spawn(Troop.SE_Grunt_6)
  Spawn(Troop.SE_Grunt_7)
  Spawn(Troop.SE_Grunt_8)
  Spawn(Ground_Vehicle.SE_Light_Tank_1)
  GoToArea(Ground_Vehicle.SE_Light_Tank_1, -1115, 360, 5)
  repeat
    EndFrame()
    EndFrame()
  until (GetHealthPercent(Building.SE_MG_Nest_1) or GetHealthPercent(Building.SE_MG_Nest_2)) < 50 or 0 < NumItemsInArea(Map_Zone.SE_Airbase_Zone, CombineFlags(flag.TYPE_ANGLO))
  DebugOut("Sending SE Bazookas to protect the Airbase from Tanks")
  PhoneMessage(12, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  Spawn(Troop.SE_Baz_1)
  Spawn(Troop.SE_Baz_2)
  Spawn(Troop.SE_Baz_3)
  if IsDead(Ground_Vehicle.AI_Light_Tank_1) then
    GoToArea(Troop.SE_Baz_1, -1025, 355, 10)
  else
    AttackTarget(Troop.SE_Baz_1, Ground_Vehicle.AI_Light_Tank_1)
  end
  if IsDead(Ground_Vehicle.AI_Light_Tank_2) then
    GoToArea(Troop.SE_Baz_2, -1035, 330, 10)
  else
    AttackTarget(Troop.SE_Baz_2, Ground_Vehicle.AI_Light_Tank_2)
  end
  GoToArea(Troop.SE_Baz_3, -1000, 335, 10)
end
