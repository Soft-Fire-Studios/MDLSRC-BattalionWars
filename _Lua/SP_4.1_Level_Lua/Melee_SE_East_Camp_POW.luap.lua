function Melee_SE_East_Camp_POW(owner)
  Kill(Air_Vehicle.SE_Counter_Gunship01)
  Kill(Air_Vehicle.SE_Counter_Gunship02)
  Kill(Air_Vehicle.SE_Counter_Gunship03)
  Kill(Troop.SE_Counter_Gunship01_Pilot01)
  Kill(Troop.SE_Counter_Gunship02_Pilot01)
  Kill(Troop.SE_Counter_Gunship03_Pilot01)
  Kill(Air_Vehicle.SE_Counter_AirTransport05)
  Kill(Air_Vehicle.SE_Counter_AirTransport06)
  Kill(Troop.SE_Counter_AirTransport05_Pilot01)
  Kill(Troop.SE_Counter_AirTransport06_Pilot01)
  Kill(Troop.SE_Counter_AntiArmour09)
  Kill(Troop.SE_Counter_AntiArmour10)
  Kill(Troop.SE_Counter_AntiArmour11)
  Kill(Troop.SE_Counter_AntiArmour12)
  Kill(Troop.SE_Counter_Grunt01)
  Kill(Troop.SE_Counter_Grunt02)
  Kill(Troop.SE_Counter_Grunt03)
  Kill(Troop.SE_Counter_Grunt04)
  SetUnitInvulnerable(Troop.IL_AntiAir01, true)
  SetUnitInvulnerable(Troop.IL_AntiAir02, true)
  SetUnitInvulnerable(Troop.IL_AntiAir03, true)
  SetUnitInvulnerable(Troop.IL_AntiAir04, true)
  SetActive(Troop.IL_AntiAir01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.IL_AntiAir02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.IL_AntiAir03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.IL_AntiAir04, constant.INACTIVE, constant.ADJUST_WEAPON)
  local POWFence = {
    Destroyable_Object.POW_East_Fence01,
    Destroyable_Object.POW_East_Fence02,
    Destroyable_Object.POW_East_Fence03,
    Destroyable_Object.POW_East_Fence04,
    Destroyable_Object.POW_East_Fence05,
    Destroyable_Object.POW_East_Fence06,
    Destroyable_Object.POW_East_Fence07,
    Destroyable_Object.POW_East_Fence08,
    Destroyable_Object.POW_East_Fence09,
    Destroyable_Object.POW_East_Fence10,
    Destroyable_Object.POW_East_Fence11,
    Destroyable_Object.POW_East_Fence12,
    Building.POW_East_AmmoDump01
  }
  local POWs = {
    Troop.IL_AntiAir01,
    Troop.IL_AntiAir02,
    Troop.IL_AntiAir03,
    Troop.IL_AntiAir04
  }
  POWCamp(POWs, 4, POWFence, 13, 0)
  SetUnitInvulnerable(Troop.IL_AntiAir01, false)
  SetUnitInvulnerable(Troop.IL_AntiAir02, false)
  SetUnitInvulnerable(Troop.IL_AntiAir03, false)
  SetUnitInvulnerable(Troop.IL_AntiAir04, false)
  SetActive(Troop.IL_AntiAir01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.IL_AntiAir02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.IL_AntiAir03, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.IL_AntiAir04, constant.ACTIVE, constant.ADJUST_WEAPON)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_AntiAir01)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_AntiAir02)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_AntiAir03)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_AntiAir04)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.IL_AntiAir01, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.IL_AntiAir02, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.IL_AntiAir03, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.IL_AntiAir04, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_NORMAL)
  end
  SetObjectiveData(Objective.SE_East_Base, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.SE_East_Base, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  PhoneMessageWithObjective(38, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessage(34, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
  EastCampPOWsFree = 1
  DebugOut("EastCampPOWsFree =", EastCampPOWsFree)
  SetObjectiveData(Objective.SE_East_Base, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.SE_East_Base, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.SE_East_Base, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Counter_Gunship01) and IsDead(Troop.SE_Counter_Gunship01_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Counter_Gunship01) and IsReadyToRevive(Troop.SE_Counter_Gunship01_Pilot01) and IsDead(Air_Vehicle.SE_Counter_Gunship02) and IsDead(Troop.SE_Counter_Gunship02_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Counter_Gunship02) and IsReadyToRevive(Troop.SE_Counter_Gunship02_Pilot01) and IsDead(Air_Vehicle.SE_Counter_Gunship03) and IsDead(Troop.SE_Counter_Gunship03_Pilot01) and IsReadyToRevive(Air_Vehicle.SE_Counter_Gunship03) and IsReadyToRevive(Troop.SE_Counter_Gunship03_Pilot01) and IsDead(Air_Vehicle.SE_Counter_AirTransport05) and IsDead(Air_Vehicle.SE_Counter_AirTransport06) and IsReadyToRevive(Air_Vehicle.SE_Counter_AirTransport05) and IsReadyToRevive(Air_Vehicle.SE_Counter_AirTransport06) and IsDead(Troop.SE_Counter_AirTransport05_Pilot01) and IsDead(Troop.SE_Counter_AirTransport06_Pilot01) and IsReadyToRevive(Troop.SE_Counter_AirTransport05_Pilot01) and IsReadyToRevive(Troop.SE_Counter_AirTransport06_Pilot01) and IsDead(Troop.SE_Counter_AntiArmour09) and IsDead(Troop.SE_Counter_AntiArmour10) and IsDead(Troop.SE_Counter_AntiArmour11) and IsDead(Troop.SE_Counter_AntiArmour12) and IsDead(Troop.SE_Counter_Grunt01) and IsDead(Troop.SE_Counter_Grunt02) and IsDead(Troop.SE_Counter_Grunt03) and IsDead(Troop.SE_Counter_Grunt04) and IsReadyToRevive(Troop.SE_Counter_AntiArmour09) and IsReadyToRevive(Troop.SE_Counter_AntiArmour10) and IsReadyToRevive(Troop.SE_Counter_AntiArmour11) and IsReadyToRevive(Troop.SE_Counter_AntiArmour12) and IsReadyToRevive(Troop.SE_Counter_Grunt01) and IsReadyToRevive(Troop.SE_Counter_Grunt02) and IsReadyToRevive(Troop.SE_Counter_Grunt03) and IsReadyToRevive(Troop.SE_Counter_Grunt04)
  ReviveDeadUnit(Air_Vehicle.SE_Counter_Gunship01, GetObjectXPosition(Waypoint.SE_Gunship_Respawner), GetObjectZPosition(Waypoint.SE_Gunship_Respawner), 180, 30)
  ReviveDeadUnit(Air_Vehicle.SE_Counter_Gunship02, GetObjectXPosition(Waypoint.SE_Gunship_Respawner), GetObjectZPosition(Waypoint.SE_Gunship_Respawner), 180, 30)
  ReviveDeadUnit(Air_Vehicle.SE_Counter_Gunship03, GetObjectXPosition(Waypoint.SE_Gunship_Respawner), GetObjectZPosition(Waypoint.SE_Gunship_Respawner), 180, 30)
  ReviveDeadUnit(Troop.SE_Counter_Gunship01_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 0)
  ReviveDeadUnit(Troop.SE_Counter_Gunship02_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 0)
  ReviveDeadUnit(Troop.SE_Counter_Gunship03_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 0, 0)
  ReviveDeadUnit(Air_Vehicle.SE_Counter_AirTransport05, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Air_Vehicle.SE_Counter_AirTransport06, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 180, 30)
  ReviveDeadUnit(Troop.SE_Counter_AirTransport05_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AirTransport06_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour09, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour10, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour11, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_AntiArmour12, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_Grunt01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_Grunt02, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_Grunt03, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  ReviveDeadUnit(Troop.SE_Counter_Grunt04, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 30, 0)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Counter_Gunship01) == false and IsDead(Troop.SE_Counter_Gunship01_Pilot01) == false and IsDead(Air_Vehicle.SE_Counter_Gunship02) == false and IsDead(Troop.SE_Counter_Gunship02_Pilot01) == false and IsDead(Air_Vehicle.SE_Counter_Gunship03) == false and IsDead(Troop.SE_Counter_Gunship03_Pilot01) == false and IsDead(Air_Vehicle.SE_Counter_AirTransport05) == false and IsDead(Air_Vehicle.SE_Counter_AirTransport06) == false and IsDead(Troop.SE_Counter_AirTransport05_Pilot01) == false and IsDead(Troop.SE_Counter_AirTransport06_Pilot01) == false and IsDead(Troop.SE_Counter_AntiArmour09) == false and IsDead(Troop.SE_Counter_AntiArmour10) == false and IsDead(Troop.SE_Counter_AntiArmour11) == false and IsDead(Troop.SE_Counter_AntiArmour12) == false and IsDead(Troop.SE_Counter_Grunt01) == false and IsDead(Troop.SE_Counter_Grunt02) == false and IsDead(Troop.SE_Counter_Grunt03) == false and IsDead(Troop.SE_Counter_Grunt04) == false
  PutUnitInVehicle(Troop.SE_Counter_AirTransport05_Pilot01, Air_Vehicle.SE_Counter_AirTransport05, 0)
  PutUnitInVehicle(Troop.SE_Counter_AirTransport06_Pilot01, Air_Vehicle.SE_Counter_AirTransport06, 0)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour09, Air_Vehicle.SE_Counter_AirTransport05, 3)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour10, Air_Vehicle.SE_Counter_AirTransport05, 4)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour11, Air_Vehicle.SE_Counter_AirTransport06, 3)
  PutUnitInVehicle(Troop.SE_Counter_AntiArmour12, Air_Vehicle.SE_Counter_AirTransport06, 4)
  PutUnitInVehicle(Troop.SE_Counter_Grunt01, Air_Vehicle.SE_Counter_AirTransport05, 5)
  PutUnitInVehicle(Troop.SE_Counter_Grunt02, Air_Vehicle.SE_Counter_AirTransport05, 7)
  PutUnitInVehicle(Troop.SE_Counter_Grunt03, Air_Vehicle.SE_Counter_AirTransport06, 5)
  PutUnitInVehicle(Troop.SE_Counter_Grunt04, Air_Vehicle.SE_Counter_AirTransport06, 7)
  LandAirUnit(Air_Vehicle.SE_Counter_AirTransport05, GetObjectXPosition(Waypoint.SE_Counter_AirTransport01), GetObjectZPosition(Waypoint.SE_Counter_AirTransport01), constant.ORDER_FORCED, 1, 10, 270)
  LandAirUnit(Air_Vehicle.SE_Counter_AirTransport06, GetObjectXPosition(Waypoint.SE_Counter_AirTransport02), GetObjectZPosition(Waypoint.SE_Counter_AirTransport02), constant.ORDER_FORCED, 1, 10, 270)
  PutUnitInVehicle(Troop.SE_Counter_Gunship01_Pilot01, Air_Vehicle.SE_Counter_Gunship01, 0)
  PutUnitInVehicle(Troop.SE_Counter_Gunship02_Pilot01, Air_Vehicle.SE_Counter_Gunship02, 0)
  PutUnitInVehicle(Troop.SE_Counter_Gunship03_Pilot01, Air_Vehicle.SE_Counter_Gunship03, 0)
  FollowWaypoint(Air_Vehicle.SE_Counter_Gunship01, Waypoint.SE_Counter_Gunships, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Air_Vehicle.SE_Counter_Gunship02, Waypoint.SE_Counter_Gunships, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Air_Vehicle.SE_Counter_Gunship03, Waypoint.SE_Counter_Gunships, 0, 0, constant.ORDER_NORMAL)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_Counter_AirTransport05) == 1 and NumPassengersInUnit(Air_Vehicle.SE_Counter_AirTransport06) == 1
  GoToArea(Troop.SE_Counter_AntiArmour09, GetObjectXPosition(Waypoint.SE_Counter_EastBase), GetObjectZPosition(Waypoint.SE_Counter_EastBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour10, GetObjectXPosition(Waypoint.SE_Counter_EastBase), GetObjectZPosition(Waypoint.SE_Counter_EastBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour11, GetObjectXPosition(Waypoint.SE_Counter_EastBase), GetObjectZPosition(Waypoint.SE_Counter_EastBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_AntiArmour12, GetObjectXPosition(Waypoint.SE_Counter_EastBase), GetObjectZPosition(Waypoint.SE_Counter_EastBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_Grunt01, GetObjectXPosition(Waypoint.SE_Counter_EastBase), GetObjectZPosition(Waypoint.SE_Counter_EastBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_Grunt02, GetObjectXPosition(Waypoint.SE_Counter_EastBase), GetObjectZPosition(Waypoint.SE_Counter_EastBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_Grunt03, GetObjectXPosition(Waypoint.SE_Counter_EastBase), GetObjectZPosition(Waypoint.SE_Counter_EastBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Troop.SE_Counter_Grunt04, GetObjectXPosition(Waypoint.SE_Counter_EastBase), GetObjectZPosition(Waypoint.SE_Counter_EastBase), 25, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  GoToArea(Air_Vehicle.SE_Counter_AirTransport05, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SE_Counter_AirTransport06, GetObjectXPosition(Waypoint.SE_AirTransport_Respawner), GetObjectZPosition(Waypoint.SE_AirTransport_Respawner), 0, constant.ORDER_FORCED)
  repeat
    if IsInRange(Air_Vehicle.SE_Counter_AirTransport05, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Counter_AirTransport05)
    end
    EndFrame()
    if IsInRange(Air_Vehicle.SE_Counter_AirTransport06, Waypoint.SE_AirTransport_Respawner, 30) then
      Kill(Air_Vehicle.SE_Counter_AirTransport06)
    end
    EndFrame()
  until IsDead(Air_Vehicle.SE_Counter_AirTransport05) and IsDead(Air_Vehicle.SE_Counter_AirTransport06)
end
