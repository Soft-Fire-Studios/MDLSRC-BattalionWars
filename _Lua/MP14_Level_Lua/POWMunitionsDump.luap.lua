function POWMunitionsDump(owner)
  local invehicle = 0
  local powtimer = 0
  scriptPOWMunitionsDump = owner
  SetActive(Troop.MunitionsDumpPOW1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW5, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW6, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW7, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW8, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW1, true)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW2, true)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW3, true)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW4, true)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW5, true)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW6, true)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW7, true)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW8, true)
  repeat
    EndFrame()
  until cutscenefinished == 1
  while true do
    if IsDead(Destroyable_Object.SolarPOW1) or IsDead(Destroyable_Object.SolarPOW2) or IsDead(Destroyable_Object.SolarPOW3) or IsDead(Destroyable_Object.SolarPOW4) or IsDead(Destroyable_Object.SolarPOW5) or IsDead(Destroyable_Object.SolarPOW6) or IsDead(Destroyable_Object.SolarPOW7) or IsDead(Destroyable_Object.SolarPOW8) or IsDead(Destroyable_Object.SolarPOW9) or IsDead(Destroyable_Object.SolarPOW10) or IsDead(Destroyable_Object.SolarPOW11) or IsDead(Destroyable_Object.SolarPOW12) or IsDead(Destroyable_Object.SolarPOW12) or IsDead(Destroyable_Object.SolarPOW13) or IsDead(Destroyable_Object.SolarPOW14) or IsDead(Destroyable_Object.SolarPOW15) or IsDead(Destroyable_Object.SolarPOW16) or IsDead(Destroyable_Object.SolarPOW17) or IsDead(Destroyable_Object.SolarPOW18) or IsDead(Destroyable_Object.SolarPOW19) or IsDead(Destroyable_Object.SolarPOW20) or IsDead(Destroyable_Object.SolarPOW21) then
      Kill(Destroyable_Object.SolarPOW1)
      Kill(Destroyable_Object.SolarPOW2)
      Kill(Destroyable_Object.SolarPOW3)
      Kill(Destroyable_Object.SolarPOW4)
      Kill(Destroyable_Object.SolarPOW5)
      Kill(Destroyable_Object.SolarPOW6)
      Kill(Destroyable_Object.SolarPOW7)
      Kill(Destroyable_Object.SolarPOW8)
      Kill(Destroyable_Object.SolarPOW9)
      Kill(Destroyable_Object.SolarPOW10)
      Kill(Destroyable_Object.SolarPOW11)
      Kill(Destroyable_Object.SolarPOW12)
      Kill(Destroyable_Object.SolarPOW13)
      Kill(Destroyable_Object.SolarPOW14)
      Kill(Destroyable_Object.SolarPOW15)
      Kill(Destroyable_Object.SolarPOW16)
      Kill(Destroyable_Object.SolarPOW17)
      Kill(Destroyable_Object.SolarPOW18)
      Kill(Destroyable_Object.SolarPOW19)
      Kill(Destroyable_Object.SolarPOW20)
      Kill(Destroyable_Object.SolarPOW21)
      break
    end
    EndFrame()
  end
  SetActive(Troop.MunitionsDumpPOW1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW2, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW3, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW4, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW5, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW6, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW7, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.MunitionsDumpPOW8, constant.ACTIVE, constant.ADJUST_WEAPON)
  solarpowsfree = 1
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessageWithObjective(69, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(69, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  if IsNetworkHost() and missilevetsfree + bazookavetsfree + solarpowsfree < 3 then
    netvariable.player1.wfLostUnitsPOWsLeft = 0
    netvariable.player1.seLostUnitsPOWsLeft = 0
    DebugOut("Resetting Lost POW checking")
  end
  stopcheckingWFpowstatus = 0
  stopcheckingSEpowstatus = 0
  SetObjectiveData(Objective.JailGrunts, constant.OBJECTIVE_DATA_STATE, 1)
  WaitFor(0.2)
  if IsNetworkPlayer(constant.PLAYER_ONE) and GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.MunitionsDumpPOW1, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.MunitionsDumpPOW2, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.MunitionsDumpPOW3, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.MunitionsDumpPOW8, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) and GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.MunitionsDumpPOW4, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.MunitionsDumpPOW5, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.MunitionsDumpPOW6, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.MunitionsDumpPOW7, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
  end
  SetUnitInvulnerable(Troop.MunitionsDumpPOW1, false)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW2, false)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW3, false)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW4, false)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW5, false)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW6, false)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW7, false)
  SetUnitInvulnerable(Troop.MunitionsDumpPOW8, false)
  AddToGroup(Unit_Group.Player_Army, Troop.MunitionsDumpPOW1)
  AddToGroup(Unit_Group.Player_Army, Troop.MunitionsDumpPOW2)
  AddToGroup(Unit_Group.Player_Army, Troop.MunitionsDumpPOW3)
  AddToGroup(Unit_Group.Player_Army, Troop.MunitionsDumpPOW4)
  AddToGroup(Unit_Group.Player_Army, Troop.MunitionsDumpPOW5)
  AddToGroup(Unit_Group.Player_Army, Troop.MunitionsDumpPOW6)
  AddToGroup(Unit_Group.Player_Army, Troop.MunitionsDumpPOW7)
  AddToGroup(Unit_Group.Player_Army, Troop.MunitionsDumpPOW8)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
end
