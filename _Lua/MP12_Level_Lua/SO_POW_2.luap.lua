function SO_POW_2(owner)
  script3 = owner
  DebugOut("POWs inactive")
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetActive(Troop.SE_POW4, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.SE_POW5, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.SE_POW6, constant.INACTIVE, constant.ADJUST_WEAPON)
    Despawn(Troop.SE_POW4, true)
    Despawn(Troop.SE_POW5, true)
    Despawn(Troop.SE_POW6, true)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetActive(Troop.TT_POW4, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.TT_POW5, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.TT_POW6, constant.INACTIVE, constant.ADJUST_WEAPON)
    Despawn(Troop.TT_POW4, true)
    Despawn(Troop.TT_POW5, true)
    Despawn(Troop.TT_POW6, true)
  end
  repeat
    EndFrame()
  until netvariable.player1.docks == 2
  SetObjectiveData(Objective.SO_POW2, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.POWs_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
    until IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Building.p13, 350) or IsInRange(GetPlayerUnit(constant.PLAYER_TWO), Building.p13, 350) or IsDead(Building.p13)
    netvariable.player1.pow2spawn = 1
    Spawn(Troop.SE_POW4)
    Spawn(Troop.SE_POW5)
    Spawn(Troop.SE_POW6)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
    until netvariable.player1.pow2spawn == 1
    Spawn(Troop.TT_POW4)
    Spawn(Troop.TT_POW5)
    Spawn(Troop.TT_POW6)
  end
  if IsNetworkHost() then
    DebugOut("Waiting for POW fence to be destroyed by player")
    repeat
      EndFrame()
    until IsDead(Destroyable_Object.p1) or IsDead(Destroyable_Object.p2) or IsDead(Destroyable_Object.p3) or IsDead(Destroyable_Object.p4) or IsDead(Destroyable_Object.p5) or IsDead(Destroyable_Object.p6) or IsDead(Destroyable_Object.p7) or IsDead(Destroyable_Object.p8) or IsDead(Destroyable_Object.p9) or IsDead(Destroyable_Object.p10) or IsDead(Destroyable_Object.p11) or IsDead(Destroyable_Object.p12) or IsDead(Building.p13)
    netvariable.player1.wait = 1
    DebugOut("POW Fence destroyed by player, now destroying the rest of the POW fences")
    Kill(Destroyable_Object.p1)
    Kill(Destroyable_Object.p2)
    Kill(Destroyable_Object.p3)
    Kill(Destroyable_Object.p4)
    EndFrame()
    Kill(Destroyable_Object.p5)
    Kill(Destroyable_Object.p6)
    Kill(Destroyable_Object.p7)
    Kill(Destroyable_Object.p8)
    EndFrame()
    Kill(Destroyable_Object.p9)
    Kill(Destroyable_Object.p10)
    Kill(Destroyable_Object.p11)
    Kill(Destroyable_Object.p12)
    Kill(Building.p13)
    DebugOut("Set POWs to be free")
  else
    repeat
      EndFrame()
    until netvariable.player1.POW2 == 1
    DebugOut("POWs complete for P2")
  end
  ClearMessageQueue()
  PhoneMessageWithObjective(35, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(36, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective.SO_POW2, constant.OBJECTIVE_DATA_STATE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    if GetSpawnMode() == eModeAction.Follow then
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
      FollowUnit(Troop.SE_POW4, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_POW5, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_POW6, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
    end
    EndFrame()
    SetActive(Troop.SE_POW4, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.SE_POW5, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.SE_POW6, constant.ACTIVE, constant.ADJUST_WEAPON)
    EndFrame()
    text = 0
    netvariable.player1.p1dead = 0
    netvariable.player1.POW2 = 1
    WaitFor(5)
    netvariable.player1.wait = 0
    DebugOut("POWs complete for P1")
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    if GetSpawnMode() == eModeAction.Follow then
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_TWO) ~= nil
      FollowUnit(Troop.TT_POW4, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.TT_POW5, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.TT_POW6, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
    end
    EndFrame()
    SetActive(Troop.TT_POW4, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.TT_POW5, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.TT_POW6, constant.ACTIVE, constant.ADJUST_WEAPON)
    EndFrame()
    netvariable.player2.p2dead = 0
    text = 0
  end
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  text = 0
end
