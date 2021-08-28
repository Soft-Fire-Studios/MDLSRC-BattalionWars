function POWFuelRefinery(owner)
  local powtimer = 0
  scriptPOWFuelRefinery = owner
  SetUnitInvulnerable(Ground_Vehicle.SELightTank, true)
  SetUnitInvulnerable(Ground_Vehicle.WFLightTank, true)
  SetUnitInvulnerable(Troop.WFDriver, true)
  SetUnitInvulnerable(Troop.SEDriver, true)
  SetActive(Troop.WFDriver, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SEDriver, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.SELightTank, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WFLightTank, constant.INACTIVE, constant.ADJUST_WEAPON)
  repeat
    EndFrame()
  until cutscenefinished == 1
  while true do
    if IsDead(Destroyable_Object.BazookaPOW1) or IsDead(Destroyable_Object.BazookaPOW2) or IsDead(Destroyable_Object.BazookaPOW3) or IsDead(Destroyable_Object.BazookaPOW4) or IsDead(Destroyable_Object.BazookaPOW5) or IsDead(Destroyable_Object.BazookaPOW6) or IsDead(Destroyable_Object.BazookaPOW7) or IsDead(Destroyable_Object.BazookaPOW8) or IsDead(Destroyable_Object.BazookaPOW9) or IsDead(Destroyable_Object.BazookaPOW10) or IsDead(Destroyable_Object.BazookaPOW11) or IsDead(Destroyable_Object.BazookaPOW12) or IsDead(Destroyable_Object.BazookaPOW13) or IsDead(Destroyable_Object.BazookaPOW14) or IsDead(Destroyable_Object.BazookaPOW15) or IsDead(Destroyable_Object.BazookaPOW16) or IsDead(Destroyable_Object.BazookaPOW17) or IsDead(Destroyable_Object.BazookaPOW18) or IsDead(Destroyable_Object.BazookaPOW19) or IsDead(Destroyable_Object.BazookaPOW20) or IsDead(Destroyable_Object.BazookaPOW21) then
      Kill(Destroyable_Object.BazookaPOW1)
      Kill(Destroyable_Object.BazookaPOW2)
      Kill(Destroyable_Object.BazookaPOW3)
      Kill(Destroyable_Object.BazookaPOW4)
      Kill(Destroyable_Object.BazookaPOW5)
      Kill(Destroyable_Object.BazookaPOW6)
      Kill(Destroyable_Object.BazookaPOW7)
      Kill(Destroyable_Object.BazookaPOW8)
      Kill(Destroyable_Object.BazookaPOW9)
      Kill(Destroyable_Object.BazookaPOW10)
      Kill(Destroyable_Object.BazookaPOW11)
      Kill(Destroyable_Object.BazookaPOW12)
      Kill(Destroyable_Object.BazookaPOW13)
      Kill(Destroyable_Object.BazookaPOW14)
      Kill(Destroyable_Object.BazookaPOW15)
      Kill(Destroyable_Object.BazookaPOW16)
      Kill(Destroyable_Object.BazookaPOW17)
      Kill(Destroyable_Object.BazookaPOW18)
      Kill(Destroyable_Object.BazookaPOW19)
      Kill(Destroyable_Object.BazookaPOW20)
      Kill(Destroyable_Object.BazookaPOW21)
      WaitFor(0.2)
      AddToGroup(Unit_Group.POWUnits, Ground_Vehicle.SELightTank)
      AddToGroup(Unit_Group.POWUnits, Ground_Vehicle.WFLightTank)
      AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.SELightTank)
      AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.WFLightTank)
      EnterVehicle(Troop.WFDriver, Ground_Vehicle.WFLightTank, constant.ORDER_FORCED)
      EnterVehicle(Troop.SEDriver, Ground_Vehicle.SELightTank, constant.ORDER_FORCED)
      SetObjectiveData(Objective.JailBazooka, constant.OBJECTIVE_DATA_STATE, 1)
      break
    end
    EndFrame()
  end
  bazookavetsfree = 1
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessageWithObjective(71, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(71, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  if IsNetworkHost() and missilevetsfree + bazookavetsfree + solarpowsfree < 3 then
    netvariable.player1.wfLostUnitsPOWsLeft = 0
    netvariable.player1.seLostUnitsPOWsLeft = 0
    DebugOut("Resetting Lost POW checking")
  end
  stopcheckingWFpowstatus = 0
  stopcheckingSEpowstatus = 0
  GoToArea(Troop.XBazookaPatrolFuelRefinery3, 60, -97, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XBazookaPatrolFuelRefinery4, 60, -97, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XBazookaPatrolFuelRefinery5, 60, -97, 5, constant.ORDER_NORMAL)
  FollowWaypoint(Ground_Vehicle.XLightAttack1, Waypoint.Entity0128, 0, 0)
  FollowWaypoint(Ground_Vehicle.XLightAttack2, Waypoint.Entity0128, 0, 0)
  FollowWaypoint(Ground_Vehicle.XLightAttack3, Waypoint.Entity0128, 0, 0)
  FollowWaypoint(Ground_Vehicle.XLightAttack4, Waypoint.Entity0128, 0, 0)
  local checkwftank = 0
  local checksetank = 0
  local count = 0
  repeat
    if 0 < NumPassengersInUnit(Ground_Vehicle.WFLightTank) and checkwftank == 0 then
      checkwftank = 1
      count = count + 1
    end
    EndFrame()
    if 0 < NumPassengersInUnit(Ground_Vehicle.SELightTank) and checksetank == 0 then
      checksetank = 1
      count = count + 1
    end
    EndFrame()
  until count == 2
  SetActive(Ground_Vehicle.SELightTank, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WFLightTank, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFDriver, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SEDriver, constant.ACTIVE, constant.ADJUST_WEAPON)
  if IsNetworkPlayer(constant.PLAYER_ONE) and GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.WFLightTank, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) and GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.SELightTank, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
  end
  SetUnitInvulnerable(Ground_Vehicle.SELightTank, false)
  SetUnitInvulnerable(Ground_Vehicle.WFLightTank, false)
  SetUnitInvulnerable(Troop.WFDriver, false)
  SetUnitInvulnerable(Troop.SEDriver, false)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
end
