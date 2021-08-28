function Ice_Station_X_POW_East_Beach(owner)
  SetActive(Troop.WF_Grunt01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_Grunt02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_Grunt03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_LightTank03_Pilot01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_LightTank03_Pilot02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WF_LightTank03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Troop.WF_Grunt01, true)
  SetUnitInvulnerable(Troop.WF_Grunt02, true)
  SetUnitInvulnerable(Troop.WF_Grunt03, true)
  SetUnitInvulnerable(Troop.WF_LightTank03_Pilot01, true)
  SetUnitInvulnerable(Troop.WF_LightTank03_Pilot02, true)
  SetUnitInvulnerable(Ground_Vehicle.WF_LightTank03, true)
  local POWFence = {
    Destroyable_Object.WestBeach_POWFence01,
    Destroyable_Object.WestBeach_POWFence02,
    Destroyable_Object.WestBeach_POWFence03,
    Destroyable_Object.WestBeach_POWFence04,
    Destroyable_Object.WestBeach_POWFence05,
    Destroyable_Object.WestBeach_POWFence06,
    Destroyable_Object.WestBeach_POWFence07,
    Destroyable_Object.WestBeach_POWFence08,
    Destroyable_Object.WestBeach_POWFence09,
    Destroyable_Object.WestBeach_POWFence10,
    Destroyable_Object.WestBeach_POWFence11,
    Destroyable_Object.WestBeach_POWFence12,
    Destroyable_Object.WestBeach_POWFence13,
    Destroyable_Object.WestBeach_POWFence14,
    Destroyable_Object.WestBeach_POWFence15,
    Destroyable_Object.WestBeach_POWFence16,
    Building.WestBeach_POWAmmoDump01
  }
  local POWs = {
    Troop.WF_Grunt01,
    Troop.WF_Grunt02,
    Troop.WF_Grunt03,
    Troop.WF_LightTank03_Pilot01,
    Troop.WF_LightTank03_Pilot02
  }
  DebugOut("NE POW Camp check begins")
  POWCamp(POWs, 5, POWFence, 17, 0)
  DebugOut("NE POW Camp has been destroyed")
  SetNogoZone(Map_Zone.POWNoGo01, false)
  EastBeachReinforced = EastBeachReinforced + 1
  GlobalTroopCount = GlobalTroopCount + 5
  GlobalAntiArmourCount = GlobalAntiArmourCount + 1
  if CentreFortReinforced == 0 then
    PhoneMessageWithObjective(63, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  end
  if CentreFortReinforced == 1 then
    PhoneMessageWithObjective(64, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  end
  SetObjectiveData(Objective_Marker.East_Beach_POWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Free_East_Beach_POWs, constant.OBJECTIVE_DATA_STATE, 1)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetActive(Troop.WF_LightTank03_Pilot01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_LightTank03_Pilot02, constant.INACTIVE, constant.ADJUST_WEAPON)
  EnableWeapon(Troop.WF_LightTank03_Pilot01, 1)
  EnableWeapon(Troop.WF_LightTank03_Pilot02, 1)
  EnterVehicle(Troop.WF_LightTank03_Pilot01, Ground_Vehicle.WF_LightTank03, constant.ORDER_FORCED)
  EnterVehicle(Troop.WF_LightTank03_Pilot02, Ground_Vehicle.WF_LightTank03, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until NumPassengersInUnit(Ground_Vehicle.WF_LightTank03) == 2
  SetUnitInvulnerable(Troop.WF_Grunt01, false)
  SetUnitInvulnerable(Troop.WF_Grunt02, false)
  SetUnitInvulnerable(Troop.WF_Grunt03, false)
  SetUnitInvulnerable(Troop.WF_LightTank03_Pilot01, false)
  SetUnitInvulnerable(Troop.WF_LightTank03_Pilot02, false)
  SetUnitInvulnerable(Ground_Vehicle.WF_LightTank03, false)
  SetActive(Ground_Vehicle.WF_LightTank03, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_Grunt01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_Grunt02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_Grunt03, constant.ACTIVE, constant.ADJUST_WEAPON)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.WF_LightTank03, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.WF_Grunt01, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.WF_Grunt02, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.WF_Grunt03, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
  end
end
