function Their_Finest_Hour_POW01_AI_Reinforcements(owner)
  SetActive(Troop.AI_Grunt06, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AI_Grunt07, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AI_Grunt08, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AI_Grunt09, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AI_Grunt10, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Troop.AI_Grunt06, true)
  SetUnitInvulnerable(Troop.AI_Grunt07, true)
  SetUnitInvulnerable(Troop.AI_Grunt08, true)
  SetUnitInvulnerable(Troop.AI_Grunt09, true)
  SetUnitInvulnerable(Troop.AI_Grunt10, true)
  repeat
    EndFrame()
  until IsDead(Destroyable_Object.POW01_Fence01) or IsDead(Destroyable_Object.POW01_Fence02) or IsDead(Destroyable_Object.POW01_Fence03) or IsDead(Destroyable_Object.POW01_Fence04) or IsDead(Destroyable_Object.POW01_Fence05) or IsDead(Destroyable_Object.POW01_Fence06) or IsDead(Destroyable_Object.POW01_Fence07) or IsDead(Destroyable_Object.POW01_Fence08) or IsDead(Destroyable_Object.POW01_Fence09) or IsDead(Destroyable_Object.POW01_Fence10) or IsDead(Destroyable_Object.POW01_Fence11) or IsDead(Destroyable_Object.POW01_Fence12) or IsDead(Building.POW01_AmmoDump01)
  Kill(Destroyable_Object.POW01_Fence01)
  Kill(Destroyable_Object.POW01_Fence02)
  Kill(Destroyable_Object.POW01_Fence03)
  Kill(Destroyable_Object.POW01_Fence04)
  Kill(Destroyable_Object.POW01_Fence05)
  Kill(Destroyable_Object.POW01_Fence06)
  Kill(Destroyable_Object.POW01_Fence07)
  Kill(Destroyable_Object.POW01_Fence08)
  Kill(Destroyable_Object.POW01_Fence09)
  Kill(Destroyable_Object.POW01_Fence10)
  Kill(Destroyable_Object.POW01_Fence11)
  Kill(Destroyable_Object.POW01_Fence12)
  Kill(Building.POW01_AmmoDump01)
  repeat
    EndFrame()
  until IsDead(Destroyable_Object.POW01_Fence01) and IsDead(Destroyable_Object.POW01_Fence02) and IsDead(Destroyable_Object.POW01_Fence03) and IsDead(Destroyable_Object.POW01_Fence04) and IsDead(Destroyable_Object.POW01_Fence05) and IsDead(Destroyable_Object.POW01_Fence06) and IsDead(Destroyable_Object.POW01_Fence07) and IsDead(Destroyable_Object.POW01_Fence08) and IsDead(Destroyable_Object.POW01_Fence09) and IsDead(Destroyable_Object.POW01_Fence10) and IsDead(Destroyable_Object.POW01_Fence11) and IsDead(Destroyable_Object.POW01_Fence12) and IsDead(Building.POW01_AmmoDump01)
  POW01Objective = 1
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  ClearMessageQueue()
  PhoneMessageWithObjective(81, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessage(76, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  SetActive(Troop.AI_Grunt06, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AI_Grunt07, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AI_Grunt08, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AI_Grunt09, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AI_Grunt10, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Troop.AI_Grunt06, false)
  SetUnitInvulnerable(Troop.AI_Grunt07, false)
  SetUnitInvulnerable(Troop.AI_Grunt08, false)
  SetUnitInvulnerable(Troop.AI_Grunt09, false)
  SetUnitInvulnerable(Troop.AI_Grunt10, false)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.AI_Grunt06, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Grunt07, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Grunt08, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Grunt09, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.AI_Grunt10, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
  end
  SetObjectiveData(Objective_Marker.BurningVillagePOW, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.BurningVillagePOW, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.BurningVillagePOW, constant.OBJECTIVE_DATA_STATE, 1)
end
