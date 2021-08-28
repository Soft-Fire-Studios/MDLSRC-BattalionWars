function Melee_SE_West_Camp_POW(owner)
  Kill(Air_Vehicle.SE_Counter_AirTransport01)
  Kill(Air_Vehicle.SE_Counter_AirTransport02)
  Kill(Air_Vehicle.SE_Counter_AirTransport03)
  Kill(Air_Vehicle.SE_Counter_AirTransport04)
  Kill(Troop.SE_Counter_AirTransport01_Pilot01)
  Kill(Troop.SE_Counter_AirTransport02_Pilot01)
  Kill(Troop.SE_Counter_AirTransport03_Pilot01)
  Kill(Troop.SE_Counter_AirTransport04_Pilot01)
  Kill(Ground_Vehicle.SE_Counter_LightTank01)
  Kill(Ground_Vehicle.SE_Counter_LightTank02)
  Kill(Ground_Vehicle.SE_Counter_LightTank03)
  Kill(Ground_Vehicle.SE_Counter_LightTank04)
  Kill(Troop.SE_Counter_LightTank01_Pilot01)
  Kill(Troop.SE_Counter_LightTank02_Pilot01)
  Kill(Troop.SE_Counter_LightTank03_Pilot01)
  Kill(Troop.SE_Counter_LightTank04_Pilot01)
  Kill(Troop.SE_Counter_AntiArmour01)
  Kill(Troop.SE_Counter_AntiArmour02)
  Kill(Troop.SE_Counter_AntiArmour03)
  Kill(Troop.SE_Counter_AntiArmour04)
  Kill(Troop.SE_Counter_AntiArmour05)
  Kill(Troop.SE_Counter_AntiArmour06)
  Kill(Troop.SE_Counter_AntiArmour07)
  Kill(Troop.SE_Counter_AntiArmour08)
  SetUnitInvulnerable(Air_Vehicle.POW_IL_Gunship01, true)
  SetUnitInvulnerable(Troop.POW_IL_Gunship01_Pilot01, true)
  SetUnitInvulnerable(Troop.POW_IL_Gunship01_Pilot02, true)
  SetUnitInvulnerable(Troop.POW_IL_Gunship01_Pilot03, true)
  SetUnitInvulnerable(Air_Vehicle.POW_IL_Gunship02, true)
  SetUnitInvulnerable(Troop.POW_IL_Gunship02_Pilot01, true)
  SetUnitInvulnerable(Troop.POW_IL_Gunship02_Pilot02, true)
  SetUnitInvulnerable(Troop.POW_IL_Gunship02_Pilot03, true)
  SetUnitInvulnerable(Air_Vehicle.POW_IL_Gunship03, true)
  SetUnitInvulnerable(Troop.POW_IL_Gunship03_Pilot01, true)
  SetUnitInvulnerable(Troop.POW_IL_Gunship03_Pilot02, true)
  SetUnitInvulnerable(Troop.POW_IL_Gunship03_Pilot03, true)
  SetActive(Air_Vehicle.POW_IL_Gunship01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship01_Pilot01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship01_Pilot02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship01_Pilot03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Air_Vehicle.POW_IL_Gunship02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship02_Pilot01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship02_Pilot02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship02_Pilot03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Air_Vehicle.POW_IL_Gunship03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship03_Pilot01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship03_Pilot02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship03_Pilot03, constant.INACTIVE, constant.ADJUST_WEAPON)
  local POWFence = {
    Destroyable_Object.POW_West_Fence01,
    Destroyable_Object.POW_West_Fence02,
    Destroyable_Object.POW_West_Fence03,
    Destroyable_Object.POW_West_Fence04,
    Destroyable_Object.POW_West_Fence05,
    Destroyable_Object.POW_West_Fence06,
    Destroyable_Object.POW_West_Fence07,
    Destroyable_Object.POW_West_Fence08,
    Destroyable_Object.POW_West_Fence09,
    Destroyable_Object.POW_West_Fence10,
    Destroyable_Object.POW_West_Fence11,
    Destroyable_Object.POW_West_Fence12,
    Destroyable_Object.POW_West_Fence13,
    Destroyable_Object.POW_West_Fence14,
    Destroyable_Object.POW_West_Fence15,
    Destroyable_Object.POW_West_Fence16,
    Destroyable_Object.POW_West_Fence17,
    Destroyable_Object.POW_West_Fence18,
    Destroyable_Object.POW_West_Fence19,
    Destroyable_Object.POW_West_Fence20,
    Destroyable_Object.POW_West_Fence21,
    Destroyable_Object.POW_West_Fence22,
    Destroyable_Object.POW_West_Fence23,
    Destroyable_Object.POW_West_Fence24,
    Destroyable_Object.POW_West_Fence25,
    Destroyable_Object.POW_West_Fence26,
    Destroyable_Object.POW_West_Fence27,
    Destroyable_Object.POW_West_Fence28,
    Destroyable_Object.POW_West_Fence29,
    Destroyable_Object.POW_West_Fence30,
    Destroyable_Object.POW_West_Fence31,
    Destroyable_Object.POW_West_Fence32,
    Destroyable_Object.POW_West_Fence33,
    Destroyable_Object.POW_West_Fence34,
    Destroyable_Object.POW_West_Fence35,
    Destroyable_Object.POW_West_Fence36,
    Destroyable_Object.POW_West_Fence37,
    Destroyable_Object.POW_West_Fence38,
    Destroyable_Object.POW_West_Fence39,
    Destroyable_Object.POW_West_Fence40,
    Building.POW_West_AmmoDump01
  }
  local POWs = {
    Air_Vehicle.POW_IL_Gunship01,
    Troop.POW_IL_Gunship01_Pilot01,
    Troop.POW_IL_Gunship01_Pilot02,
    Troop.POW_IL_Gunship01_Pilot03,
    Air_Vehicle.POW_IL_Gunship02,
    Troop.POW_IL_Gunship02_Pilot01,
    Troop.POW_IL_Gunship02_Pilot02,
    Troop.POW_IL_Gunship02_Pilot03,
    Air_Vehicle.POW_IL_Gunship03,
    Troop.POW_IL_Gunship03_Pilot01,
    Troop.POW_IL_Gunship03_Pilot02,
    Troop.POW_IL_Gunship03_Pilot03
  }
  POWCamp(POWs, 12, POWFence, 41, 0)
  PutUnitInVehicle(Troop.POW_IL_Gunship01_Pilot01, Air_Vehicle.POW_IL_Gunship01, 0)
  PutUnitInVehicle(Troop.POW_IL_Gunship01_Pilot02, Air_Vehicle.POW_IL_Gunship01, 1)
  PutUnitInVehicle(Troop.POW_IL_Gunship01_Pilot03, Air_Vehicle.POW_IL_Gunship01, 2)
  PutUnitInVehicle(Troop.POW_IL_Gunship02_Pilot01, Air_Vehicle.POW_IL_Gunship02, 0)
  PutUnitInVehicle(Troop.POW_IL_Gunship02_Pilot02, Air_Vehicle.POW_IL_Gunship02, 1)
  PutUnitInVehicle(Troop.POW_IL_Gunship02_Pilot03, Air_Vehicle.POW_IL_Gunship02, 2)
  PutUnitInVehicle(Troop.POW_IL_Gunship03_Pilot01, Air_Vehicle.POW_IL_Gunship03, 0)
  PutUnitInVehicle(Troop.POW_IL_Gunship03_Pilot02, Air_Vehicle.POW_IL_Gunship03, 1)
  PutUnitInVehicle(Troop.POW_IL_Gunship03_Pilot03, Air_Vehicle.POW_IL_Gunship03, 2)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.POW_IL_Gunship01) == 3 and NumPassengersInUnit(Air_Vehicle.POW_IL_Gunship02) == 3 and NumPassengersInUnit(Air_Vehicle.POW_IL_Gunship03) == 3
  SetActive(Air_Vehicle.POW_IL_Gunship01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship01_Pilot01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship01_Pilot02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship01_Pilot03, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Air_Vehicle.POW_IL_Gunship02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship02_Pilot01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship02_Pilot02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship02_Pilot03, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Air_Vehicle.POW_IL_Gunship03, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship03_Pilot01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship03_Pilot02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_IL_Gunship03_Pilot03, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Air_Vehicle.POW_IL_Gunship01, false)
  SetUnitInvulnerable(Troop.POW_IL_Gunship01_Pilot01, false)
  SetUnitInvulnerable(Troop.POW_IL_Gunship01_Pilot02, false)
  SetUnitInvulnerable(Troop.POW_IL_Gunship01_Pilot03, false)
  SetUnitInvulnerable(Air_Vehicle.POW_IL_Gunship02, false)
  SetUnitInvulnerable(Troop.POW_IL_Gunship02_Pilot01, false)
  SetUnitInvulnerable(Troop.POW_IL_Gunship02_Pilot02, false)
  SetUnitInvulnerable(Troop.POW_IL_Gunship02_Pilot03, false)
  SetUnitInvulnerable(Air_Vehicle.POW_IL_Gunship03, false)
  SetUnitInvulnerable(Troop.POW_IL_Gunship03_Pilot01, false)
  SetUnitInvulnerable(Troop.POW_IL_Gunship03_Pilot02, false)
  SetUnitInvulnerable(Troop.POW_IL_Gunship03_Pilot03, false)
  AddToGroup(Unit_Group.Player_Army, Air_Vehicle.POW_IL_Gunship01)
  AddToGroup(Unit_Group.Player_Army, Air_Vehicle.POW_IL_Gunship02)
  AddToGroup(Unit_Group.Player_Army, Air_Vehicle.POW_IL_Gunship03)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Air_Vehicle.POW_IL_Gunship01, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.POW_IL_Gunship02, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.POW_IL_Gunship03, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
  end
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetObjectiveData(Objective.SE_West_Base, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.SE_West_Base, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.SE_West_Base, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  WestCampPOWsFree = 1
  DebugOut("WestCampPOWsFree =", WestCampPOWsFree)
  PhoneMessageWithObjective(39, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessage(35, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Counter_AirTransport01) and IsDead(Air_Vehicle.SE_Counter_AirTransport02) and IsDead(Air_Vehicle.SE_Counter_AirTransport03) and IsDead(Air_Vehicle.SE_Counter_AirTransport04) and IsReadyToRevive(Air_Vehicle.SE_Counter_AirTransport01) and IsReadyToRevive(Air_Vehicle.SE_Counter_AirTransport02) and IsReadyToRevive(Air_Vehicle.SE_Counter_AirTransport03) and IsReadyToRevive(Air_Vehicle.SE_Counter_AirTransport04) and IsDead(Troop.SE_Counter_AirTransport01_Pilot01) and IsDead(Troop.SE_Counter_AirTransport02_Pilot01) and IsDead(Troop.SE_Counter_AirTransport03_Pilot01) and IsDead(Troop.SE_Counter_AirTransport04_Pilot01) and IsReadyToRevive(Troop.SE_Counter_AirTransport01_Pilot01) and IsReadyToRevive(Troop.SE_Counter_AirTransport02_Pilot01) and IsReadyToRevive(Troop.SE_Counter_AirTransport03_Pilot01) and IsReadyToRevive(Troop.SE_Counter_AirTransport04_Pilot01) and IsDead(Ground_Vehicle.SE_Counter_LightTank01) and IsDead(Ground_Vehicle.SE_Counter_LightTank02) and IsDead(Ground_Vehicle.SE_Counter_LightTank03) and IsDead(Ground_Vehicle.SE_Counter_LightTank04) and IsReadyToRevive(Ground_Vehicle.SE_Counter_LightTank01) and IsReadyToRevive(Ground_Vehicle.SE_Counter_LightTank02) and IsReadyToRevive(Ground_Vehicle.SE_Counter_LightTank03) and IsReadyToRevive(Ground_Vehicle.SE_Counter_LightTank04) and IsDead(Troop.SE_Counter_LightTank01_Pilot01) and IsDead(Troop.SE_Counter_LightTank02_Pilot01) and IsDead(Troop.SE_Counter_LightTank03_Pilot01) and IsDead(Troop.SE_Counter_LightTank04_Pilot01) and IsReadyToRevive(Troop.SE_Counter_LightTank01_Pilot01) and IsReadyToRevive(Troop.SE_Counter_LightTank02_Pilot01) and IsReadyToRevive(Troop.SE_Counter_LightTank03_Pilot01) and IsReadyToRevive(Troop.SE_Counter_LightTank04_Pilot01) and IsDead(Troop.SE_Counter_AntiArmour01) and IsDead(Troop.SE_Counter_AntiArmour02) and IsDead(Troop.SE_Counter_AntiArmour03) and IsDead(Troop.SE_Counter_AntiArmour04) and IsDead(Troop.SE_Counter_AntiArmour05) and IsDead(Troop.SE_Counter_AntiArmour06) and IsDead(Troop.SE_Counter_AntiArmour07) and IsDead(Troop.SE_Counter_AntiArmour08) and IsReadyToRevive(Troop.SE_Counter_AntiArmour01) and IsReadyToRevive(Troop.SE_Counter_AntiArmour02) and IsReadyToRevive(Troop.SE_Counter_AntiArmour03) and IsReadyToRevive(Troop.SE_Counter_AntiArmour04) and IsReadyToRevive(Troop.SE_Counter_AntiArmour05) and IsReadyToRevive(Troop.SE_Counter_AntiArmour06) and IsReadyToRevive(Troop.SE_Counter_AntiArmour07) and IsReadyToRevive(Troop.SE_Counter_AntiArmour08)
  ReviveDeadUnit(Air_Vehicle.SE_Counter_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Air_Vehicle.SE_Counter_AirTransport02, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Air_Vehicle.SE_Counter_AirTransport03, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Air_Vehicle.SE_Counter_AirTransport04, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Troop.SE_Counter_AirTransport01_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AirTransport02_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AirTransport03_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AirTransport04_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Ground_Vehicle.SE_Counter_LightTank01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Ground_Vehicle.SE_Counter_LightTank02, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Ground_Vehicle.SE_Counter_LightTank03, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Ground_Vehicle.SE_Counter_LightTank04, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_LightTank01_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_LightTank02_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_LightTank03_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_LightTank04_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour02, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour03, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour04, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour05, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour06, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour07, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour08, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Counter_AirTransport01) == false and IsDead(Air_Vehicle.SE_Counter_AirTransport02) == false and IsDead(Air_Vehicle.SE_Counter_AirTransport03) == false and IsDead(Air_Vehicle.SE_Counter_AirTransport04) == false and IsDead(Troop.SE_Counter_AirTransport01_Pilot01) == false and IsDead(Troop.SE_Counter_AirTransport02_Pilot01) == false and IsDead(Troop.SE_Counter_AirTransport03_Pilot01) == false and IsDead(Troop.SE_Counter_AirTransport04_Pilot01) == false and IsDead(Ground_Vehicle.SE_Counter_LightTank01) == false and IsDead(Ground_Vehicle.SE_Counter_LightTank02) == false and IsDead(Ground_Vehicle.SE_Counter_LightTank03) == false and IsDead(Ground_Vehicle.SE_Counter_LightTank04) == false and IsDead(Troop.SE_Counter_LightTank01_Pilot01) == false and IsDead(Troop.SE_Counter_LightTank02_Pilot01) == false and IsDead(Troop.SE_Counter_LightTank03_Pilot01) == false and IsDead(Troop.SE_Counter_LightTank04_Pilot01) == false and IsDead(Troop.SE_Counter_AntiArmour01) == false and IsDead(Troop.SE_Counter_AntiArmour02) == false and IsDead(Troop.SE_Counter_AntiArmour03) == false and IsDead(Troop.SE_Counter_AntiArmour04) == false and IsDead(Troop.SE_Counter_AntiArmour05) == false and IsDead(Troop.SE_Counter_AntiArmour06) == false and IsDead(Troop.SE_Counter_AntiArmour07) == false and IsDead(Troop.SE_Counter_AntiArmour08) == false
  PutUnitInVehicle(Troop.SE_Counter_AirTransport01_Pilot01, Air_Vehicle.SE_Counter_AirTransport01, 0)
  PutUnitInVehicle(Troop.SE_Counter_AirTransport02_Pilot01, Air_Vehicle.SE_Counter_AirTransport02, 0)
  PutUnitInVehicle(Troop.SE_Counter_AirTransport03_Pilot01, Air_Vehicle.SE_Counter_AirTransport03, 0)
  PutUnitInVehicle(Troop.SE_Counter_AirTransport04_Pilot01, Air_Vehicle.SE_Counter_AirTransport04, 0)
  PutUnitInVehicle(Troop.SE_Counter_LightTank01_Pilot01, Ground_Vehicle.SE_Counter_LightTank01, 0)
  PutUnitInVehicle(Troop.SE_Counter_LightTank02_Pilot01, Ground_Vehicle.SE_Counter_LightTank02, 0)
  PutUnitInVehicle(Troop.SE_Counter_LightTank03_Pilot01, Ground_Vehicle.SE_Counter_LightTank03, 0)
  PutUnitInVehicle(Troop.SE_Counter_LightTank04_Pilot01, Ground_Vehicle.SE_Counter_LightTank04, 0)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour01, Air_Vehicle.SE_Counter_AirTransport01, 3)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour02, Air_Vehicle.SE_Counter_AirTransport01, 4)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour03, Air_Vehicle.SE_Counter_AirTransport02, 3)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour04, Air_Vehicle.SE_Counter_AirTransport02, 4)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour05, Air_Vehicle.SE_Counter_AirTransport03, 3)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour06, Air_Vehicle.SE_Counter_AirTransport03, 4)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour07, Air_Vehicle.SE_Counter_AirTransport04, 3)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour08, Air_Vehicle.SE_Counter_AirTransport04, 4)
  repeat
    EndFrame()
  until GetUnitInSeat(Ground_Vehicle.SE_Counter_LightTank01, 0) == Troop.SE_Counter_LightTank01_Pilot01 and GetUnitInSeat(Ground_Vehicle.SE_Counter_LightTank02, 0) == Troop.SE_Counter_LightTank02_Pilot01 and GetUnitInSeat(Ground_Vehicle.SE_Counter_LightTank03, 0) == Troop.SE_Counter_LightTank03_Pilot01 and GetUnitInSeat(Ground_Vehicle.SE_Counter_LightTank04, 0) == Troop.SE_Counter_LightTank04_Pilot01
  PutUnitInVehicle(Ground_Vehicle.SE_Counter_LightTank01, Air_Vehicle.SE_Counter_AirTransport01, 6)
  PutUnitInVehicle(Ground_Vehicle.SE_Counter_LightTank02, Air_Vehicle.SE_Counter_AirTransport02, 6)
  PutUnitInVehicle(Ground_Vehicle.SE_Counter_LightTank03, Air_Vehicle.SE_Counter_AirTransport03, 6)
  PutUnitInVehicle(Ground_Vehicle.SE_Counter_LightTank04, Air_Vehicle.SE_Counter_AirTransport04, 6)
  LandAirUnit(Air_Vehicle.SE_Counter_AirTransport01, GetObjectXPosition(Waypoint.SE_Counter_AirTransport01), GetObjectZPosition(Waypoint.SE_Counter_AirTransport01), constant.ORDER_FORCED, 1, 10, 90)
  LandAirUnit(Air_Vehicle.SE_Counter_AirTransport02, GetObjectXPosition(Waypoint.SE_Counter_AirTransport02), GetObjectZPosition(Waypoint.SE_Counter_AirTransport02), constant.ORDER_FORCED, 1, 10, 90)
  LandAirUnit(Air_Vehicle.SE_Counter_AirTransport03, GetObjectXPosition(Waypoint.SE_Counter_AirTransport03), GetObjectZPosition(Waypoint.SE_Counter_AirTransport03), constant.ORDER_FORCED, 1, 10, 90)
  LandAirUnit(Air_Vehicle.SE_Counter_AirTransport04, GetObjectXPosition(Waypoint.SE_Counter_AirTransport04), GetObjectZPosition(Waypoint.SE_Counter_AirTransport04), constant.ORDER_FORCED, 1, 10, 90)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_Counter_AirTransport01) == 1 and NumPassengersInUnit(Air_Vehicle.SE_Counter_AirTransport02) == 1 and NumPassengersInUnit(Air_Vehicle.SE_Counter_AirTransport03) == 1 and NumPassengersInUnit(Air_Vehicle.SE_Counter_AirTransport04) == 1
  GoToArea(Troop.SE_Counter_AntiArmour01, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour02, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour03, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour04, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour05, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour06, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour07, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour08, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Ground_Vehicle.SE_Counter_LightTank01, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Ground_Vehicle.SE_Counter_LightTank02, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Ground_Vehicle.SE_Counter_LightTank03, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Ground_Vehicle.SE_Counter_LightTank04, GetObjectXPosition(Waypoint.SE_Counter_WestBase), GetObjectZPosition(Waypoint.SE_Counter_WestBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Air_Vehicle.SE_Counter_AirTransport01, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SE_Counter_AirTransport02, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SE_Counter_AirTransport03, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SE_Counter_AirTransport04, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  repeat
    if IsInRange(Air_Vehicle.SE_Counter_AirTransport01, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Counter_AirTransport01)
    end
    EndFrame()
    if IsInRange(Air_Vehicle.SE_Counter_AirTransport02, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Counter_AirTransport02)
    end
    EndFrame()
    if IsInRange(Air_Vehicle.SE_Counter_AirTransport03, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Counter_AirTransport03)
    end
    EndFrame()
    if IsInRange(Air_Vehicle.SE_Counter_AirTransport04, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Counter_AirTransport04)
    end
    EndFrame()
  until IsDead(Air_Vehicle.SE_Counter_AirTransport01) and IsDead(Air_Vehicle.SE_Counter_AirTransport02) and IsDead(Air_Vehicle.SE_Counter_AirTransport03) and IsDead(Air_Vehicle.SE_Counter_AirTransport04)
end
