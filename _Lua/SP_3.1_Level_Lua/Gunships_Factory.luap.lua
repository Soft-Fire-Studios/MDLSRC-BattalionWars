function Gunships_Factory(owner)
  script05 = owner
  repeat
    EndFrame()
  until IsInArea(Water_Vehicle.AI_Battleship_1, Map_Zone.Factory_Zone) or IsInArea(Water_Vehicle.AI_Battleship_2, Map_Zone.Factory_Zone) or IsDead(Troop.SE_AA1) and IsDead(Troop.SE_AA2) and IsDead(Troop.SE_AA3)
  Spawn(Air_Vehicle.SE_Gunship_1)
  Spawn(Air_Vehicle.SE_Gunship_3)
  Spawn(Air_Vehicle.SE_Gunship_4)
  if IsInArea(Water_Vehicle.AI_Battleship_1, Map_Zone.Factory_Zone) then
    AttackTarget(Air_Vehicle.SE_Gunship_1, Water_Vehicle.AI_Battleship_1)
    AttackTarget(Air_Vehicle.SE_Gunship_3, Water_Vehicle.AI_Battleship_1)
    AttackTarget(Air_Vehicle.SE_Gunship_4, Water_Vehicle.AI_Battleship_1)
    PhoneMessage(49, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  elseif IsInArea(Water_Vehicle.AI_Battleship_2, Map_Zone.Factory_Zone) then
    AttackTarget(Air_Vehicle.SE_Gunship_1, Water_Vehicle.AI_Battleship_2)
    AttackTarget(Air_Vehicle.SE_Gunship_3, Water_Vehicle.AI_Battleship_2)
    AttackTarget(Air_Vehicle.SE_Gunship_4, Water_Vehicle.AI_Battleship_2)
    PhoneMessage(49, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  elseif IsDead(Water_Vehicle.AI_Battleship_1) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_1, Water_Vehicle.AI_Battleship_1)
    AttackTarget(Air_Vehicle.SE_Gunship_3, Water_Vehicle.AI_Battleship_1)
    AttackTarget(Air_Vehicle.SE_Gunship_4, Water_Vehicle.AI_Battleship_1)
    PhoneMessage(49, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  elseif IsDead(Water_Vehicle.AI_Battleship_2) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_1, Water_Vehicle.AI_Battleship_2)
    AttackTarget(Air_Vehicle.SE_Gunship_3, Water_Vehicle.AI_Battleship_2)
    AttackTarget(Air_Vehicle.SE_Gunship_4, Water_Vehicle.AI_Battleship_2)
    PhoneMessage(49, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  else
    AttackTarget(Air_Vehicle.SE_Gunship_1, GetPlayerUnit())
    AttackTarget(Air_Vehicle.SE_Gunship_3, GetPlayerUnit())
    AttackTarget(Air_Vehicle.SE_Gunship_4, GetPlayerUnit())
    PhoneMessage(50, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  end
  if fightertext == 0 and airbase == 1 then
    PhoneMessage(23, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
    fightertext = 1
  end
end
