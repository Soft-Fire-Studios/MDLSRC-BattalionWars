function W_POW_Camp(owner)
  SetActive(Troop.T_POW_1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.T_POW_2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.T_POW_3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_POW_6, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_POW_7, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_POW_8, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Troop.WF_POW_6, true)
  SetUnitInvulnerable(Troop.WF_POW_7, true)
  SetUnitInvulnerable(Troop.WF_POW_8, true)
  SetUnitInvulnerable(Troop.T_POW_1, true)
  SetUnitInvulnerable(Troop.T_POW_2, true)
  SetUnitInvulnerable(Troop.T_POW_3, true)
  while true do
    if IsDead(Destroyable_Object.wirea) or IsDead(Destroyable_Object.wireb) or IsDead(Destroyable_Object.wirec) or IsDead(Destroyable_Object.wired) or IsDead(Building.W) then
      break
    else
      EndFrame()
    end
    if IsDead(Destroyable_Object.wiree) or IsDead(Destroyable_Object.wiref) or IsDead(Destroyable_Object.wireg) or IsDead(Destroyable_Object.wireh) then
      break
    else
      EndFrame()
    end
  end
  DebugOut("W POW Camp Destroyed, setting Tundran AA Dudes to be active")
  SetObjectiveData(Objective.WPOW, constant.OBJECTIVE_DATA_STATE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    DebugOut("SE POW Camp Destroyed, setting crew to be active")
    if GetSpawnMode() == eModeAction.Follow then
      netvariable.player1.wait = 1
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
      FollowUnit(Troop.WF_POW_6, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.WF_POW_7, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.WF_POW_8, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      EndFrame()
    end
    SetActive(Troop.WF_POW_6, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.WF_POW_7, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.WF_POW_8, constant.ACTIVE, constant.ADJUST_WEAPON)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    DebugOut("SE POW Camp Destroyed, setting crew to be active")
    if GetSpawnMode() == eModeAction.Follow then
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_TWO) ~= nil
      FollowUnit(Troop.T_POW_1, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.T_POW_2, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.T_POW_3, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
      EndFrame()
    end
    SetActive(Troop.T_POW_1, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.T_POW_2, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.T_POW_3, constant.ACTIVE, constant.ADJUST_WEAPON)
  end
  Kill(Destroyable_Object.wirea)
  Kill(Destroyable_Object.wireb)
  Kill(Destroyable_Object.wirec)
  Kill(Destroyable_Object.wired)
  Kill(Destroyable_Object.wiree)
  Kill(Destroyable_Object.wiref)
  Kill(Destroyable_Object.wireg)
  Kill(Destroyable_Object.wireh)
  Kill(Building.W)
  WaitFor(1)
  AntiAirFreed = 1
  powsfreed = 1
  SetUnitInvulnerable(Troop.WF_POW_6, false)
  SetUnitInvulnerable(Troop.WF_POW_7, false)
  SetUnitInvulnerable(Troop.WF_POW_8, false)
  SetUnitInvulnerable(Troop.T_POW_1, false)
  SetUnitInvulnerable(Troop.T_POW_2, false)
  SetUnitInvulnerable(Troop.T_POW_3, false)
  AddToGroup(Unit_Group.Player_Army, Troop.WF_POW_6)
  AddToGroup(Unit_Group.Player_Army, Troop.WF_POW_7)
  AddToGroup(Unit_Group.Player_Army, Troop.WF_POW_8)
  AddToGroup(Unit_Group.Player_Army, Troop.T_POW_1)
  AddToGroup(Unit_Group.Player_Army, Troop.T_POW_2)
  AddToGroup(Unit_Group.Player_Army, Troop.T_POW_3)
  DebugOut("Number of Items in player Group", GetNumMatchingInGroup(Unit_Group.Player_Army))
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessageWithObjective(5, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(5, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  if not IsDead(Air_Vehicle.X_Gunship_2) then
    PhoneMessage(16, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Happy, 1)
  end
  GoToArea(Air_Vehicle.X_Gunship_2, 415, 265, 25)
  WaitFor(5)
  powsfreed = 2
  EndFrame()
  Player1IsDead = 0
  Player2IsDead = 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.wait = 0
  end
end
