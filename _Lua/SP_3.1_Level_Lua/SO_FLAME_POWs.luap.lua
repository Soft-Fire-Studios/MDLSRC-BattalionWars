function SO_FLAME_POWs(owner)
  script09 = owner
  local infantrydead = 0
  DebugOut("POWs inactive")
  SetActive(Troop.POW1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW5, constant.INACTIVE, constant.ADJUST_WEAPON)
  Despawn(Troop.POW1, true)
  Despawn(Troop.POW2, true)
  Despawn(Troop.POW3, true)
  Despawn(Troop.POW4, true)
  Despawn(Troop.POW5, true)
  Despawn(Troop.s3, true)
  Despawn(Troop.Entity260020665, true)
  Despawn(Troop.Entity260020668, true)
  Despawn(Ground_Vehicle.SE_Artillery_7, true)
  repeat
    EndFrame()
  until GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) > -275 or IsDead(Building.POW15) or IsDead(Building.POW_21)
  PhoneMessageWithObjective(40, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
  powintro = 1
  SetObjectiveData(Objective.Mortars, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Mortars_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.SO_LTank, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.LTank_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  DebugOut("POW Star now visible")
  WaitFor(2)
  repeat
    EndFrame()
  until powspawn ~= 0 or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Building.POW15, 350) or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SE_MG_Nest_7, 450) or IsDead(Building.POW15)
  Spawn(Troop.POW1)
  Spawn(Troop.POW2)
  Spawn(Troop.POW3)
  Spawn(Troop.POW4)
  Spawn(Troop.POW5)
  Spawn(Troop.s3)
  Spawn(Troop.Entity260020665)
  Spawn(Troop.Entity260020668)
  Spawn(Ground_Vehicle.SE_Artillery_7)
  DebugOut("Waiting for POW fence to be destroyed by player")
  repeat
    if infantrydead == 0 and CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 then
      infantrydead = 1
      PhoneMessage(40, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
    elseif dock == 1 then
      SetObjectiveData(Objective.Mortars, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Mortars_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      break
    end
    EndFrame()
  until IsDead(Destroyable_Object.POW01) or IsDead(Destroyable_Object.POW02) or IsDead(Destroyable_Object.POW03) or IsDead(Destroyable_Object.POW04) or IsDead(Destroyable_Object.POW05) or IsDead(Destroyable_Object.POW06) or IsDead(Destroyable_Object.POW07) or IsDead(Destroyable_Object.POW08) or IsDead(Destroyable_Object.POW09) or IsDead(Destroyable_Object.POW10) or IsDead(Destroyable_Object.POW11) or IsDead(Destroyable_Object.POW12) or IsDead(Destroyable_Object.POW13) or IsDead(Destroyable_Object.POW14) or IsDead(Building.POW15)
  repeat
    EndFrame()
  until dock == 0
  DebugOut("POW Fence destroyed by player, now destroying the rest of the POW fences")
  Kill(Destroyable_Object.POW01)
  Kill(Destroyable_Object.POW02)
  Kill(Destroyable_Object.POW03)
  Kill(Destroyable_Object.POW04)
  Kill(Destroyable_Object.POW05)
  Kill(Destroyable_Object.POW06)
  Kill(Destroyable_Object.POW07)
  Kill(Destroyable_Object.POW08)
  Kill(Destroyable_Object.POW09)
  Kill(Destroyable_Object.POW10)
  Kill(Destroyable_Object.POW11)
  Kill(Destroyable_Object.POW12)
  Kill(Destroyable_Object.POW13)
  Kill(Destroyable_Object.POW14)
  Kill(Building.POW15)
  mortars = 1
  DebugOut("Set POWs to be free")
  repeat
    EndFrame()
  until GetPlayerUnit() ~= nil
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.POW1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.POW2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.POW3, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.POW4, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.POW5, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  end
  SetActive(Troop.POW1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW2, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW3, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW4, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW5, constant.ACTIVE, constant.ADJUST_WEAPON)
  AddToGroup(Unit_Group.Player_Army, Troop.POW1)
  AddToGroup(Unit_Group.Player_Army, Troop.POW2)
  AddToGroup(Unit_Group.Player_Army, Troop.POW3)
  AddToGroup(Unit_Group.Player_Army, Troop.POW4)
  AddToGroup(Unit_Group.Player_Army, Troop.POW5)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  DebugOut("Play POW objective text")
  SetObjectiveData(Objective.Mortars, constant.OBJECTIVE_DATA_STATE, 1)
  PhoneMessageWithObjective(41, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  EndFrame()
  mortars = 2
end
