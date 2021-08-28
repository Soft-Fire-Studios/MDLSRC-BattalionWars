function Melee_SE_Assault_Strings(owner)
  AssaultStrings = owner
  local ChainWave01Message = 0
  local GunshipWave01Message = 0
  local LightTankWave01Message = 0
  local AntiArmourWave01Message = 0
  local GunshipWave02Message = 0
  local ArtilleryWave02Message = 0
  while true do
    if (IsInArea(Troop.SE_Assault_Chain01, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Chain02, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Chain03, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Chain04, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt01, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt02, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt03, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt04, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt05, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt06, Map_Zone.IL_Battlestation_Perimeter)) and ChainWave01Message == 0 then
      PhoneMessage(13, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      ChainWave01Message = 1
    end
    EndFrame()
    if (IsInArea(Air_Vehicle.SE_Gunship01, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Air_Vehicle.SE_Gunship02, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Air_Vehicle.SE_Gunship03, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Air_Vehicle.SE_Gunship04, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Air_Vehicle.SE_Gunship05, Map_Zone.IL_Battlestation_Perimeter)) and GunshipWave01Message == 0 then
      PhoneMessage(15, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      GunshipWave01Message = 1
    end
    EndFrame()
    if (IsInArea(Ground_Vehicle.SE_Assault_LightTank01, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Ground_Vehicle.SE_Assault_LightTank02, Map_Zone.IL_Battlestation_Perimeter)) and LightTankWave01Message == 0 then
      PhoneMessage(14, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      LightTankWave01Message = 1
    end
    EndFrame()
    if (IsInArea(Troop.SE_Assault_AntiArmour01, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_AntiArmour02, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_AntiArmour03, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_AntiArmour04, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt07, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt08, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt09, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Troop.SE_Assault_Grunt10, Map_Zone.IL_Battlestation_Perimeter)) and AntiArmourWave01Message == 0 then
      PhoneMessage(16, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      AntiArmourWave01Message = 1
    end
    EndFrame()
    if (IsInArea(Air_Vehicle.SE_Gunship06, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Air_Vehicle.SE_Gunship07, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Air_Vehicle.SE_Gunship08, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Air_Vehicle.SE_Gunship09, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Air_Vehicle.SE_Gunship10, Map_Zone.IL_Battlestation_Perimeter)) and GunshipWave02Message == 0 then
      PhoneMessage(17, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      GunshipWave02Message = 1
    end
    EndFrame()
    if (IsInArea(Ground_Vehicle.SE_Assault_Artillery01, Map_Zone.IL_Battlestation_Perimeter) or IsInArea(Ground_Vehicle.SE_Assault_Artillery02, Map_Zone.IL_Battlestation_Perimeter)) and ArtilleryWave02Message == 0 then
      PhoneMessage(18, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      ArtilleryWave02Message = 1
    end
    EndFrame()
    if IsDead(Troop.SE_Assault_Chain01) and IsDead(Troop.SE_Assault_Chain02) and IsDead(Troop.SE_Assault_Chain03) and IsDead(Troop.SE_Assault_Chain04) and IsDead(Troop.SE_Assault_Grunt01) and IsDead(Troop.SE_Assault_Grunt02) and IsDead(Troop.SE_Assault_Grunt03) and IsDead(Troop.SE_Assault_Grunt04) and IsDead(Troop.SE_Assault_Grunt05) and IsDead(Troop.SE_Assault_Grunt06) and IsDead(Air_Vehicle.SE_Gunship01) and IsDead(Air_Vehicle.SE_Gunship02) and IsDead(Air_Vehicle.SE_Gunship03) and IsDead(Air_Vehicle.SE_Gunship04) and IsDead(Air_Vehicle.SE_Gunship05) and IsDead(Ground_Vehicle.SE_Assault_LightTank01) and IsDead(Ground_Vehicle.SE_Assault_LightTank02) and IsDead(Troop.SE_Assault_AntiArmour01) and IsDead(Troop.SE_Assault_AntiArmour02) and IsDead(Troop.SE_Assault_AntiArmour03) and IsDead(Troop.SE_Assault_AntiArmour04) and IsDead(Troop.SE_Assault_Grunt07) and IsDead(Troop.SE_Assault_Grunt08) and IsDead(Troop.SE_Assault_Grunt09) and IsDead(Troop.SE_Assault_Grunt10) and IsDead(Air_Vehicle.SE_Gunship06) and IsDead(Air_Vehicle.SE_Gunship07) and IsDead(Air_Vehicle.SE_Gunship08) and IsDead(Air_Vehicle.SE_Gunship09) and IsDead(Air_Vehicle.SE_Gunship10) and IsDead(Ground_Vehicle.SE_Assault_Artillery01) and IsDead(Ground_Vehicle.SE_Assault_Artillery02) then
      break
    end
    EndFrame()
  end
end
