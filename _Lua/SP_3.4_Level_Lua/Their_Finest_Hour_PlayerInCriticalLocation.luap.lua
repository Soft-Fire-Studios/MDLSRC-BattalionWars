function Their_Finest_Hour_PlayerInCriticalLocation(owner)
  local FactoryApproachMessage01 = 0
  local BarracksApproachMessage01 = 0
  local VillageApproachMessage01 = 0
  local FactoryApproachMessageDefenceIncomplete = 0
  local BarracksApproachMessageDefenceIncomplete = 0
  local PerimeterMessage01 = 0
  local PerimeterMessage02 = 0
  local StandingStonesMessage01 = 0
  while true do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Standing_Stones) and TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.TYPE_INFANTRY, constant.TYPE) and StandingStonesMessage01 == 0 then
      PhoneMessage(72, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      PhoneMessage(73, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      StandingStonesMessage01 = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.RiverPerimeter) and DefenceComplete == 0 and PerimeterMessage01 == 0 then
      PhoneMessage(91, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
      PerimeterMessage01 = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.RiverPerimeter) == false and PerimeterMessage01 == 1 and DefenceComplete == 0 then
      PerimeterMessage01 = 0
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.RiverPerimeter) and DefenceComplete == 1 and Helipad01Complete == 0 and POW02Objective == 0 and PerimeterMessage02 == 0 then
      PhoneMessage(92, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
      PerimeterMessage02 = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AI_Factory01) then
      if PlayerInCriticalLocation == 0 and Helipad01Complete == 0 then
        PlayerInCriticalLocation = 1
      end
      EndFrame()
      if PlayerInCriticalLocation == 1 and Helipad01Complete == 1 then
        PlayerInCriticalLocation = 0
      end
      EndFrame()
      if FactoryApproachMessageDefenceIncomplete == 0 and DefenceComplete == 0 then
        PhoneMessage(68, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
        FactoryApproachMessageDefenceIncomplete = 1
      end
      EndFrame()
      if FactoryApproachMessage01 == 0 and DefenceComplete == 1 then
        PhoneMessage(69, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
        PhoneMessage(87, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
        FactoryApproachMessage01 = 1
      end
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AI_Barracks01) then
      if PlayerInCriticalLocation == 0 and POW02Objective == 0 then
        PlayerInCriticalLocation = 1
      end
      EndFrame()
      if PlayerInCriticalLocation == 1 and POW02Objective == 1 then
        PlayerInCriticalLocation = 0
      end
      EndFrame()
      if BarracksApproachMessageDefenceIncomplete == 0 and DefenceComplete == 0 then
        PhoneMessage(67, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
        BarracksApproachMessageDefenceIncomplete = 1
      end
      EndFrame()
      if BarracksApproachMessage01 == 0 and DefenceComplete == 1 then
        PhoneMessage(71, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
        PhoneMessage(86, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
        BarracksApproachMessage01 = 1
      end
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Village_Perimeter) then
      if PlayerInCriticalLocation == 0 and IsDead(Building.POW01_AmmoDump01) == false then
        PlayerInCriticalLocation = 1
      end
      EndFrame()
      if PlayerInCriticalLocation == 1 and IsDead(Building.POW01_AmmoDump01) then
        PlayerInCriticalLocation = 0
      end
      EndFrame()
      if VillageApproachMessage01 == 0 and DefenceComplete == 1 then
        PhoneMessage(70, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
        VillageApproachMessage01 = 1
      end
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SE_Airbase01) and PlayerInCriticalLocation == 0 then
      PlayerInCriticalLocation = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AI_Barracks01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AI_Factory01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SE_Airbase01) == false then
      PlayerInCriticalLocation = 0
    end
    EndFrame()
  end
end
