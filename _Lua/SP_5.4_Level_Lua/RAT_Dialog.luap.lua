function RAT_Dialog(owner)
  local BSwarning = 0
  local BSsecondwarning = 0
  local TankIneffectiveSpider = 0
  local GunshipAAIneffectiveSpider = 0
  local BuildingDialogShakingDone = 0
  local BuildingDialogDiggingDone = 0
  local BuildingDialogGraspDone = 0
  while missionend == 0 do
    if BSwarning == 0 and GetHealthPercent(Ground_Vehicle.T_Battlestation) <= 50 then
      BSwarning = 1
      PhoneMessage(25, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    end
    if CutsceneMidFightersStart >= 2 and BSsecondwarning == 0 and GetHealthPercent(Ground_Vehicle.T_Battlestation) <= 40 then
      BSsecondwarning = 1
      PhoneMessage(27, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    end
    if 1 <= MiningSpiderInvulnerabilityDialogDone and TankIneffectiveSpider == 0 and GetAttackTarget(Ground_Vehicle.T_Battlestation) ~= Building.Vlad and (GetAttackTarget(Ground_Vehicle.WFtank01) == Building.Vlad or GetAttackTarget(Ground_Vehicle.WFtank03) == Building.Vlad or GetAttackTarget(Ground_Vehicle.WFtank07) == Building.Vlad or GetAttackTarget(Ground_Vehicle.WFtank08) == Building.Vlad) then
      TankIneffectiveSpider = 1
      PhoneMessage(51, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    end
    if 1 <= MiningSpiderInvulnerabilityDialogDone and GunshipAAIneffectiveSpider == 0 and GetAttackTarget(Ground_Vehicle.T_Battlestation) ~= Building.Vlad and (GetAttackTarget(Air_Vehicle.Tfighter01) == Building.Vlad or GetAttackTarget(Air_Vehicle.Tfighter02) == Building.Vlad or GetAttackTarget(Air_Vehicle.Tfighter03) == Building.Vlad or GetAttackTarget(Air_Vehicle.Tgunship01) == Building.Vlad or GetAttackTarget(Air_Vehicle.Tgunship02) == Building.Vlad or GetAttackTarget(Air_Vehicle.Tgunship03) == Building.Vlad or GetAttackTarget(Air_Vehicle.Tgunship04) == Building.Vlad or GetAttackTarget(Air_Vehicle.Tgunship05) == Building.Vlad or GetAttackTarget(Air_Vehicle.Tgunship06) == Building.Vlad or GetAttackTarget(Troop.Tmissile01) == Building.Vlad or GetAttackTarget(Troop.Tmissile02) == Building.Vlad or GetAttackTarget(Troop.Tmissile03) == Building.Vlad or GetAttackTarget(Troop.Tmissile04) == Building.Vlad or GetAttackTarget(Troop.Tmissile05) == Building.Vlad or GetAttackTarget(Troop.Tmissile06) == Building.Vlad or GetAttackTarget(Ground_Vehicle.Saavehicle01) == Building.Vlad or GetAttackTarget(Ground_Vehicle.Saavehicle02) == Building.Vlad) then
      GunshipAAIneffectiveSpider = 1
      PhoneMessage(54, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    end
    if SolarPOWsDialogDone == 0 and east == 0 and IsInArea(GetPlayerUnit(), Map_Zone.SolarPOWs) then
      SolarPOWsDialogDone = 1
      PhoneMessage(67, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
    end
    if WFPOWsDialogDone == 0 and west == 0 and IsInArea(GetPlayerUnit(), Map_Zone.GE_Middle) then
      WFPOWsDialogDone = 1
      WaitFor(1)
      PhoneMessage(73, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
    end
    if GetHealthPercent(Building.Vlad) < 100 and BuildingDialogShakingDone == 0 then
      BuildingDialogShakingDone = 1
      PhoneMessage(61, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
      PhoneMessage(62, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      PhoneMessage(53, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
    end
    if GetHealthPercent(Building.Vlad) <= 65 and BuildingDialogDiggingDone == 0 then
      BuildingDialogDiggingDone = 1
      PhoneMessage(86, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
    end
    if GetHealthPercent(Building.Vlad) <= 35 and BuildingDialogGraspDone == 0 then
      BuildingDialogGraspDone = 1
      PhoneMessage(63, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
    end
    EndFrame()
  end
end
