function Ice_Station_X_TT_CheckUnitsAlive(owner)
  CheckUnitsAliveScript = owner
  GlobalTroopCount = 21
  GlobalAntiArmourCount = 6
  local AllDeadTimer = 0
  local ReadyForAllDeadTimer = 0
  local POWMessage01 = 0
  local POWMessage02 = 0
  local POWMessage03 = 0
  local POWMessage04 = 0
  while true do
    if AllPlayerUnitsDead(constant.PLAYER_ONE) then
      if ReadyForAllDeadTimer == 0 then
        AllDeadTimer = GetTime()
        ReadyForAllDeadTimer = 1
      end
      EndFrame()
      if GetTime() > AllDeadTimer + 2 and ReadyForAllDeadTimer == 1 and AllPlayerUnitsDead(constant.PLAYER_ONE) then
        SetInvulnerable(flag.TYPE_TUNDRAN, 1)
        SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
        DeclareVictory(constant.ARMY_XYLVANIAN)
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(40, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
        repeat
          EndFrame()
        until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
        FreezePlayer(constant.PLAYER_ONE)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(131)
      end
      EndFrame()
      if GetTime() > AllDeadTimer + 2 and ReadyForAllDeadTimer == 1 and AllPlayerUnitsDead(constant.PLAYER_ONE) == false then
        ReadyForAllDeadTimer = 0
      end
    end
    EndFrame()
    if Cutscene02Ready == 0 then
      if IsDead(Troop.WF_AntiArmour01) and IsDead(Troop.WF_AntiArmour02) and IsDead(Troop.WF_AntiArmour03) and IsDead(Troop.WF_AntiArmour04) and IsDead(Ground_Vehicle.WF_LightTank01) and IsDead(Ground_Vehicle.WF_LightTank02) and CentreFortReinforced + EastBeachReinforced == 0 and POWMessage01 == 0 then
        PhoneMessage(48, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        POWMessage01 = 1
      end
      EndFrame()
      if IsDead(Troop.WF_AntiArmour01) and IsDead(Troop.WF_AntiArmour02) and IsDead(Troop.WF_AntiArmour03) and IsDead(Troop.WF_AntiArmour04) and IsDead(Ground_Vehicle.WF_LightTank01) and IsDead(Ground_Vehicle.WF_LightTank02) and IsDead(Ground_Vehicle.WF_LightTank03) and CentreFortReinforced == 0 and EastBeachReinforced == 1 and POWMessage02 == 0 then
        PhoneMessage(48, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        POWMessage02 = 1
      end
      EndFrame()
      if IsDead(Troop.WF_AntiArmour01) and IsDead(Troop.WF_AntiArmour02) and IsDead(Troop.WF_AntiArmour03) and IsDead(Troop.WF_AntiArmour04) and IsDead(Troop.TT_AntiArmour01) and IsDead(Troop.TT_AntiArmour02) and IsDead(Troop.TT_AntiArmour03) and IsDead(Ground_Vehicle.WF_LightTank01) and IsDead(Ground_Vehicle.WF_LightTank02) and CentreFortReinforced == 1 and EastBeachReinforced == 0 and POWMessage03 == 0 then
        PhoneMessage(48, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        POWMessage03 = 1
      end
      EndFrame()
    end
    EndFrame()
    if IsDead(Troop.TT_AntiArmour01) and IsDead(Troop.TT_AntiArmour02) and IsDead(Troop.TT_AntiArmour03) and IsDead(Troop.WF_AntiArmour01) and IsDead(Troop.WF_AntiArmour02) and IsDead(Troop.WF_AntiArmour03) and IsDead(Troop.WF_AntiArmour04) and IsDead(Air_Vehicle.AI_Bomber01) and IsDead(Air_Vehicle.AI_Bomber02) and IsDead(Ground_Vehicle.WF_LightTank01) and IsDead(Ground_Vehicle.WF_LightTank02) and IsDead(Ground_Vehicle.WF_LightTank03) and IsDead(Building.XN_ConcreteBarricade01) then
      SetInvulnerable(flag.TYPE_TUNDRAN, 1)
      SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(39, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      FreezePlayer(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(193)
    end
    EndFrame()
  end
end
