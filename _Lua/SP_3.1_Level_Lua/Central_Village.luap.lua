function Central_Village(owner)
  script10 = owner
  Despawn(Air_Vehicle.SE_Response_4)
  Despawn(Air_Vehicle.SE_Response_5)
  Despawn(Air_Vehicle.SE_Response_6)
  Despawn(Ground_Vehicle.SE_Artillery_6, true)
  Despawn(Ground_Vehicle.SE_Light_Tank_3, true)
  Despawn(Troop.SE_AA1, true)
  Despawn(Troop.SE_AA2, true)
  Despawn(Troop.SE_AA3, true)
  Despawn(Troop.Entity260024035, true)
  Despawn(Troop.Entity260024036, true)
  repeat
    EndFrame()
  until cutscene == 1
  Spawn(Ground_Vehicle.SE_Artillery_6)
  Kill(Ground_Vehicle.SE_Artillery_6)
  Kill(Ground_Vehicle.SE_Artillery_3)
  Teleport(Ground_Vehicle.SE_Light_Tank_5, -150, 755, 270, 0)
  EndFrame()
  Despawn(Ground_Vehicle.SE_Light_Tank_5, true)
  repeat
    EndFrame()
  until mid == 2
  Spawn(Ground_Vehicle.SE_Artillery_3)
  Spawn(Ground_Vehicle.SE_Artillery_6)
  repeat
    WaitFor(0.2)
  until IsDead(Building.SE_MG_Nest_3) and IsDead(Building.SE_MG_Nest_4) or 0 < NumItemsInArea(Map_Zone.Village, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.Village, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1)
  Spawn(Air_Vehicle.SE_Response_4)
  Spawn(Air_Vehicle.SE_Response_5)
  Spawn(Air_Vehicle.SE_Response_6)
  if IsInArea(Water_Vehicle.AI_Battleship_1, Map_Zone.Village_BS) or IsInArea(Water_Vehicle.AI_Battleship_2, Map_Zone.Village_BS) then
    DebugOut("Battleships in the Village, send Solar Gunships to respond")
    PhoneMessage(37, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    if fighterintro == 0 then
      fighterintro = 1
      PhoneMessage(89, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
    else
      PhoneMessage(23, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      fightertext = 1
    end
    AttackTarget(Air_Vehicle.SE_Response_4, Water_Vehicle.AI_Battleship_2)
    AttackTarget(Air_Vehicle.SE_Response_5, Water_Vehicle.AI_Battleship_2)
    AttackTarget(Air_Vehicle.SE_Response_6, Water_Vehicle.AI_Battleship_2)
  else
    DebugOut("Ground Units in the Village, send Gunships to repond")
    PhoneMessage(38, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    if fighterintro == 0 then
      fighterintro = 1
      PhoneMessage(89, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
    else
      PhoneMessage(23, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      fightertext = 1
    end
    GoToArea(Air_Vehicle.SE_Response_4, -385, 800, 10)
    GoToArea(Air_Vehicle.SE_Response_5, -360, 770, 10)
    GoToArea(Air_Vehicle.SE_Response_6, -340, 760, 10)
  end
  repeat
    if 0 < NumItemsInArea(Map_Zone.Village_Rear, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.Village_Rear, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1) or IsDead(Ground_Vehicle.SE_Light_Tank_3) then
      if IsDead(Ground_Vehicle.SE_Light_Tank_5) == false then
        PhoneMessage(35, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      GoToArea(Ground_Vehicle.SE_Light_Tank_5, -280, 755, 30)
      break
    else
      EndFrame()
    end
  until IsInArea(Water_Vehicle.AI_Battleship_1, -55, 505, 305) or IsInArea(Water_Vehicle.AI_Battleship_2, -55, 505, 305)
  DebugOut("bring forward the rear lines at the village")
  Spawn(Troop.SE_AA1)
  Spawn(Troop.SE_AA2)
  Spawn(Troop.SE_AA3)
  Spawn(Troop.Entity260024035)
  Spawn(Troop.Entity260024036)
  EndFrame()
  EndFrame()
  WaitFor(30)
  powspawn = 1
end
