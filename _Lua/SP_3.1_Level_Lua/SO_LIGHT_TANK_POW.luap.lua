function SO_LIGHT_TANK_POW(owner)
  SetActive(Ground_Vehicle.POW_LT, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW_Driver, constant.INACTIVE, constant.ADJUST_WEAPON)
  Despawn(Troop.POW_Driver, true)
  Despawn(Ground_Vehicle.POW_LT, true)
  repeat
    EndFrame()
  until IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Building.POW_21, 475) or IsDead(Building.POW_21)
  Spawn(Troop.POW_Driver)
  Spawn(Ground_Vehicle.POW_LT)
  SetUnitInvulnerable(Ground_Vehicle.POW_LT, true)
  DebugOut("Waiting for POW fence to be destroyed by player")
  repeat
    if dock == 1 then
      SetObjectiveData(Objective.SO_LTank, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.LTank_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      break
    end
    EndFrame()
  until IsDead(Building.POW_21) or IsDead(Destroyable_Object.POW_22) or IsDead(Destroyable_Object.POW_23) or IsDead(Destroyable_Object.POW_24) or IsDead(Destroyable_Object.POW_25) or IsDead(Destroyable_Object.POW_26) or IsDead(Destroyable_Object.POW_27) or IsDead(Destroyable_Object.POW_28) or IsDead(Destroyable_Object.POW_29)
  repeat
    EndFrame()
  until dock == 0
  DebugOut("POW Fence destroyed by player, now destroying the rest of the POW fences")
  Kill(Building.POW_21)
  Kill(Destroyable_Object.POW_22)
  Kill(Destroyable_Object.POW_23)
  Kill(Destroyable_Object.POW_24)
  Kill(Destroyable_Object.POW_25)
  Kill(Destroyable_Object.POW_26)
  Kill(Destroyable_Object.POW_27)
  Kill(Destroyable_Object.POW_28)
  Kill(Destroyable_Object.POW_29)
  ltankpow = 1
  DebugOut("Set POWs to be free")
  EnterVehicle(Troop.POW_Driver, Ground_Vehicle.POW_LT)
  repeat
    EndFrame()
  until GetPlayerUnit() ~= nil
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.POW_LT, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  end
  SetActive(Ground_Vehicle.POW_LT, constant.ACTIVE, constant.ADJUST_WEAPON)
  WaitFor(2)
  SetActive(Troop.POW_Driver, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Ground_Vehicle.POW_LT, false)
  AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.POW_LT)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  DebugOut("Play POW objective text")
  SetObjectiveData(Objective.SO_LTank, constant.OBJECTIVE_DATA_STATE, 1)
  PhoneMessageWithObjective(42, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
end
