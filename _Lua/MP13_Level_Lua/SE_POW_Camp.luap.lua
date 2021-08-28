function SE_POW_Camp(owner)
  local south = 0
  DebugOut("Setting SE POW WF Tank and Crew to be Inactive")
  SetUnitInvulnerable(Troop.WF_POW_1, true)
  SetUnitInvulnerable(Ground_Vehicle.WF_Heavy_Tank_1, true)
  SetActive(Troop.WF_POW_1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WF_Heavy_Tank_1, constant.INACTIVE, constant.ADJUST_WEAPON)
  while true do
    if IsDead(Destroyable_Object.wire01) or IsDead(Destroyable_Object.wire02) or IsDead(Destroyable_Object.wire03) or IsDead(Destroyable_Object.wire04) or IsDead(Building.S) then
      break
    else
      EndFrame()
    end
    if IsDead(Destroyable_Object.wire05) or IsDead(Destroyable_Object.wire06) or IsDead(Destroyable_Object.wire07) or IsDead(Destroyable_Object.wire08) then
      break
    else
      EndFrame()
    end
    if IsDead(Destroyable_Object.wire09) or IsDead(Destroyable_Object.wire10) or IsDead(Destroyable_Object.wire11) or IsDead(Destroyable_Object.wire12) then
      break
    else
      EndFrame()
    end
    if south == 0 and (0 < NumItemsInArea(Map_Zone.SW, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.SW, flag.TYPE_TUNDRAN)) then
      GoToArea(Unit_Group.South_Bridge, 410, -5, 35)
      south = 1
    end
    EndFrame()
  end
  SetObjectiveData(Objective.SPOW, constant.OBJECTIVE_DATA_STATE, 1)
  DebugOut("SE POW Tank and Crew Active, now destroying the fence around them")
  Kill(Destroyable_Object.wire01)
  Kill(Destroyable_Object.wire02)
  Kill(Destroyable_Object.wire03)
  Kill(Destroyable_Object.wire04)
  Kill(Destroyable_Object.wire05)
  Kill(Destroyable_Object.wire06)
  Kill(Destroyable_Object.wire07)
  Kill(Destroyable_Object.wire08)
  Kill(Destroyable_Object.wire09)
  Kill(Destroyable_Object.wire10)
  Kill(Destroyable_Object.wire11)
  Kill(Destroyable_Object.wire12)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  Kill(Building.S)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.wait = 1
    DebugOut("SE POW Camp Destroyed, setting crew to be active")
    EnterVehicle(Troop.WF_POW_1, Ground_Vehicle.WF_Heavy_Tank_1, constant.ORDER_FORCED)
    WaitFor(1)
    SetUnitInvulnerable(Troop.WF_POW_1, false)
    SetUnitInvulnerable(Ground_Vehicle.WF_Heavy_Tank_1, false)
    if GetSpawnMode() == eModeAction.Follow then
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
      FollowUnit(Ground_Vehicle.WF_Heavy_Tank_1, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
    end
    SetActive(Troop.WF_POW_1, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Ground_Vehicle.WF_Heavy_Tank_1, constant.ACTIVE, constant.ADJUST_WEAPON)
  end
  AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.WF_Heavy_Tank_1)
  DebugOut("Number of Items in player Group", GetNumMatchingInGroup(Unit_Group.Player_Army))
  DebugOut("SE POW Tank Health increased incase taken damage from ammo dump explosion")
  SetHealthPercent(Ground_Vehicle.WF_Heavy_Tank_1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.WF_Heavy_Tank_1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.WF_Heavy_Tank_1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.WF_Heavy_Tank_1, 100)
  if south == 0 then
    GoToArea(Unit_Group.South_Bridge, 465, -40, 35)
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessageWithObjective(3, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(3, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_TWO, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  WaitFor(8)
  PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy, 0)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.wait = 0
  end
end
