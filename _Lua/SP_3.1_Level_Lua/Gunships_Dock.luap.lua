function Gunships_Dock(owner)
  script04 = owner
  local gv = 0
  repeat
    EndFrame()
    EndFrame()
    EndFrame()
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.Dock_Zone, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.Dock_Zone, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1) or IsInArea(Water_Vehicle.AI_Battleship_1, Map_Zone.Dock_Zone) or IsInArea(Water_Vehicle.AI_Battleship_2, Map_Zone.Dock_Zone)
  Spawn(Air_Vehicle.SE_Gunship_5)
  Spawn(Air_Vehicle.SE_Gunship_6)
  Spawn(Air_Vehicle.SE_Gunship_8)
  EndFrame()
  if IsInArea(Water_Vehicle.AI_Battleship_1, Map_Zone.Dock_Zone) and IsDead(Water_Vehicle.AI_Battleship_1) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_5, Water_Vehicle.AI_Battleship_1)
    AttackTarget(Air_Vehicle.SE_Gunship_6, Water_Vehicle.AI_Battleship_1)
    AttackTarget(Air_Vehicle.SE_Gunship_8, Water_Vehicle.AI_Battleship_1)
    PhoneMessage(53, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    if fightertext == 0 and airbase == 1 then
      PhoneMessage(23, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      fightertext = 1
    end
  elseif IsInArea(Water_Vehicle.AI_Battleship_2, Map_Zone.Dock_Zone) and IsDead(Water_Vehicle.AI_Battleship_2) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_5, Water_Vehicle.AI_Battleship_2)
    AttackTarget(Air_Vehicle.SE_Gunship_6, Water_Vehicle.AI_Battleship_2)
    AttackTarget(Air_Vehicle.SE_Gunship_8, Water_Vehicle.AI_Battleship_2)
    PhoneMessage(53, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    if fightertext == 0 and airbase == 1 then
      PhoneMessage(23, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      fightertext = 1
    end
  else
    GoToArea(Air_Vehicle.SE_Gunship_5, 430, 715, 10)
    GoToArea(Air_Vehicle.SE_Gunship_6, 460, 715, 10)
    GoToArea(Air_Vehicle.SE_Gunship_8, 490, 715, 10)
  end
  if gv == 0 then
    WaitFor(5)
    repeat
      EndFrame()
    until 0 < NumItemsInArea(Map_Zone.Dock_Zone, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.Dock_Zone, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1)
    PhoneMessage(52, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
    GoToArea(Ground_Vehicle.SE_Light_Tank_7, 600, 715, 10)
  end
end
