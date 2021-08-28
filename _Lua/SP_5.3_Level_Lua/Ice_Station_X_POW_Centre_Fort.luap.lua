function Ice_Station_X_POW_Centre_Fort(owner)
  EnableWeapon(Troop.TT_Grunt01, 0)
  EnableWeapon(Troop.TT_Grunt02, 0)
  EnableWeapon(Troop.TT_Grunt03, 0)
  EnableWeapon(Troop.TT_AntiArmour01, 0)
  EnableWeapon(Troop.TT_AntiArmour02, 0)
  EnableWeapon(Troop.TT_AntiArmour03, 0)
  SetActive(Troop.TT_Grunt01, constant.INACTIVE)
  SetActive(Troop.TT_Grunt02, constant.INACTIVE)
  SetActive(Troop.TT_Grunt03, constant.INACTIVE)
  SetActive(Troop.TT_AntiArmour01, constant.INACTIVE)
  SetActive(Troop.TT_AntiArmour02, constant.INACTIVE)
  SetActive(Troop.TT_AntiArmour03, constant.INACTIVE)
  SetUnitInvulnerable(Troop.TT_Grunt01, true)
  SetUnitInvulnerable(Troop.TT_Grunt02, true)
  SetUnitInvulnerable(Troop.TT_Grunt03, true)
  SetUnitInvulnerable(Troop.TT_AntiArmour01, true)
  SetUnitInvulnerable(Troop.TT_AntiArmour02, true)
  SetUnitInvulnerable(Troop.TT_AntiArmour03, true)
  local POWFence = {
    Destroyable_Object.CentreFort_POWFence01,
    Destroyable_Object.CentreFort_POWFence02,
    Destroyable_Object.CentreFort_POWFence03,
    Destroyable_Object.CentreFort_POWFence04,
    Destroyable_Object.CentreFort_POWFence05,
    Destroyable_Object.CentreFort_POWFence06,
    Destroyable_Object.CentreFort_POWFence07,
    Destroyable_Object.CentreFort_POWFence08,
    Destroyable_Object.CentreFort_POWFence09,
    Destroyable_Object.CentreFort_POWFence10,
    Destroyable_Object.CentreFort_POWFence11,
    Destroyable_Object.CentreFort_POWFence12,
    Destroyable_Object.CentreFort_POWFence13,
    Destroyable_Object.CentreFort_POWFence14,
    Destroyable_Object.CentreFort_POWFence15,
    Destroyable_Object.CentreFort_POWFence16,
    Building.CentreFort_POWAmmoDump01
  }
  local POWs = {
    Troop.TT_Grunt01,
    Troop.TT_Grunt02,
    Troop.TT_Grunt03,
    Troop.TT_AntiArmour01,
    Troop.TT_AntiArmour02,
    Troop.TT_AntiArmour03
  }
  POWCamp(POWs, 6, POWFence, 17, 0)
  CentreFortReinforced = CentreFortReinforced + 1
  GlobalTroopCount = GlobalTroopCount + 8
  GlobalAntiArmourCount = GlobalAntiArmourCount + 4
  if EastBeachReinforced == 0 then
    PhoneMessageWithObjective(63, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  end
  if EastBeachReinforced == 1 then
    PhoneMessageWithObjective(64, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  end
  SetObjectiveData(Objective_Marker.Centre_Fort_POWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Free_Centre_Fort_POWs, constant.OBJECTIVE_DATA_STATE, 1)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetActive(Troop.TT_Grunt01, constant.ACTIVE)
  SetActive(Troop.TT_Grunt02, constant.ACTIVE)
  SetActive(Troop.TT_Grunt03, constant.ACTIVE)
  SetActive(Troop.TT_AntiArmour01, constant.ACTIVE)
  SetActive(Troop.TT_AntiArmour02, constant.ACTIVE)
  SetActive(Troop.TT_AntiArmour03, constant.ACTIVE)
  EnableWeapon(Troop.TT_Grunt01, 1)
  EnableWeapon(Troop.TT_Grunt02, 1)
  EnableWeapon(Troop.TT_Grunt03, 1)
  EnableWeapon(Troop.TT_AntiArmour01, 1)
  EnableWeapon(Troop.TT_AntiArmour02, 1)
  EnableWeapon(Troop.TT_AntiArmour03, 1)
  SetUnitInvulnerable(Troop.TT_Grunt01, false)
  SetUnitInvulnerable(Troop.TT_Grunt02, false)
  SetUnitInvulnerable(Troop.TT_Grunt03, false)
  SetUnitInvulnerable(Troop.TT_AntiArmour01, false)
  SetUnitInvulnerable(Troop.TT_AntiArmour02, false)
  SetUnitInvulnerable(Troop.TT_AntiArmour03, false)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.TT_Grunt01, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.TT_Grunt02, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.TT_Grunt03, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.TT_AntiArmour01, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.TT_AntiArmour02, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.TT_AntiArmour03, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
  end
end
