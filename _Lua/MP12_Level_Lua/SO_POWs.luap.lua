function SO_POWs(owner)
  script3 = owner
  DebugOut("POWs inactive")
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetActive(Troop.SE_POW1, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.SE_POW2, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.SE_POW3, constant.INACTIVE, constant.ADJUST_WEAPON)
    Despawn(Troop.SE_POW1, true)
    Despawn(Troop.SE_POW2, true)
    Despawn(Troop.SE_POW3, true)
    Despawn(Building.POW15, true)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetActive(Troop.TT_POW1, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.TT_POW2, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.TT_POW3, constant.INACTIVE, constant.ADJUST_WEAPON)
    Despawn(Troop.TT_POW1, true)
    Despawn(Troop.TT_POW2, true)
    Despawn(Troop.TT_POW3, true)
  end
  repeat
    EndFrame()
  until netvariable.player1.docks == 2
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Spawn(Building.POW15)
  end
  SetObjectiveData(Objective.SO_POWs, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.POWs_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
    until IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Building.POW15, 350) or IsInRange(GetPlayerUnit(constant.PLAYER_TWO), Building.POW15, 350) or IsDead(Building.POW15)
    netvariable.player1.pow1spawn = 1
    Spawn(Troop.SE_POW1)
    Spawn(Troop.SE_POW2)
    Spawn(Troop.SE_POW3)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
    until netvariable.player1.pow1spawn == 1
    Spawn(Troop.TT_POW1)
    Spawn(Troop.TT_POW2)
    Spawn(Troop.TT_POW3)
  end
  if IsNetworkHost() then
    DebugOut("Waiting for POW fence to be destroyed by player")
    repeat
      EndFrame()
    until IsDead(Destroyable_Object.POW01) or IsDead(Destroyable_Object.POW02) or IsDead(Destroyable_Object.POW03) or IsDead(Destroyable_Object.POW04) or IsDead(Destroyable_Object.POW05) or IsDead(Destroyable_Object.POW06) or IsDead(Destroyable_Object.POW07) or IsDead(Destroyable_Object.POW08) or IsDead(Destroyable_Object.POW09) or IsDead(Destroyable_Object.POW10) or IsDead(Destroyable_Object.POW11) or IsDead(Destroyable_Object.POW12) or IsDead(Destroyable_Object.POW13) or IsDead(Destroyable_Object.POW14) or IsDead(Building.POW15)
    netvariable.player1.wait = 1
    DebugOut("POW Fence destroyed by player, now destroying the rest of the POW fences")
    Kill(Destroyable_Object.POW01)
    Kill(Destroyable_Object.POW02)
    Kill(Destroyable_Object.POW03)
    Kill(Destroyable_Object.POW04)
    EndFrame()
    Kill(Destroyable_Object.POW05)
    Kill(Destroyable_Object.POW06)
    Kill(Destroyable_Object.POW07)
    Kill(Destroyable_Object.POW08)
    EndFrame()
    Kill(Destroyable_Object.POW09)
    Kill(Destroyable_Object.POW10)
    Kill(Destroyable_Object.POW11)
    Kill(Destroyable_Object.POW12)
    EndFrame()
    Kill(Destroyable_Object.POW13)
    Kill(Destroyable_Object.POW14)
    Kill(Building.POW15)
    DebugOut("Set POWs to be free")
  else
    repeat
      EndFrame()
    until netvariable.player1.POWs == 1
    DebugOut("POWs complete for P2")
  end
  ClearMessageQueue()
  PhoneMessageWithObjective(31, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(32, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessage(33, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  PhoneMessage(33, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
  SetObjectiveData(Objective.SO_POWs, constant.OBJECTIVE_DATA_STATE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    if GetSpawnMode() == eModeAction.Follow then
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
      FollowUnit(Troop.SE_POW1, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_POW2, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_POW3, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
    end
    SetActive(Troop.SE_POW1, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.SE_POW2, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.SE_POW3, constant.ACTIVE, constant.ADJUST_WEAPON)
    EndFrame()
    AttackTarget(Ground_Vehicle.AI_Recon_4, Troop.SE_POW1)
    GoToArea(Ground_Vehicle.AI_Recon_5, 20, 510, 25)
    AttackTarget(Air_Vehicle.AI_Bomber_5, Troop.SE_POW1)
    text = 0
    netvariable.player1.p1dead = 0
    netvariable.player1.POWs = 1
    WaitFor(5)
    netvariable.player1.wait = 0
    DebugOut("POWs complete for P1")
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
    until GetPlayerUnit(constant.PLAYER_TWO) ~= nil
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.TT_POW1, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.TT_POW2, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.TT_POW3, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
    end
    SetActive(Troop.TT_POW1, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.TT_POW2, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.TT_POW3, constant.ACTIVE, constant.ADJUST_WEAPON)
    text = 0
    EndFrame()
    netvariable.player2.p2dead = 0
  end
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  text = 0
end
