function E_POW_Camp(owner)
  DebugOut("Setting E POW T Tank and Crew to be Inactive")
  SetUnitInvulnerable(Troop.WF_POW_4, true)
  SetUnitInvulnerable(Troop.WF_POW_5, true)
  SetUnitInvulnerable(Ground_Vehicle.T_Heavy_Recon_1, true)
  SetActive(Troop.WF_POW_4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_POW_5, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.T_Heavy_Recon_1, constant.INACTIVE, constant.ADJUST_WEAPON)
  while true do
    if IsDead(Destroyable_Object.BarbedWire0001) or IsDead(Destroyable_Object.BarbedWire0002) or IsDead(Destroyable_Object.BarbedWire0003) or IsDead(Destroyable_Object.BarbedWire0004) or IsDead(Destroyable_Object.BarbedWire0005) or IsDead(Destroyable_Object.BarbedWire0006) or IsDead(Destroyable_Object.BarbedWire0007) or IsDead(Destroyable_Object.BarbedWire0008) or IsDead(Destroyable_Object.BarbedWire0009) or IsDead(Destroyable_Object.BarbedWire0010) or IsDead(Destroyable_Object.BarbedWire0011) or IsDead(Destroyable_Object.BarbedWire0012) or IsDead(Building.E) then
      DebugOut("E POW Tank and Crew Active, now destroying the fence around them")
      Kill(Destroyable_Object.BarbedWire0001)
      Kill(Destroyable_Object.BarbedWire0002)
      Kill(Destroyable_Object.BarbedWire0003)
      Kill(Destroyable_Object.BarbedWire0004)
      Kill(Destroyable_Object.BarbedWire0005)
      Kill(Destroyable_Object.BarbedWire0006)
      Kill(Destroyable_Object.BarbedWire0007)
      Kill(Destroyable_Object.BarbedWire0008)
      Kill(Destroyable_Object.BarbedWire0009)
      Kill(Destroyable_Object.BarbedWire0010)
      Kill(Destroyable_Object.BarbedWire0011)
      Kill(Destroyable_Object.BarbedWire0012)
      Kill(Building.E)
      break
    end
    EndFrame()
  end
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetObjectiveData(Objective.EPOW, constant.OBJECTIVE_DATA_STATE, 1)
  DebugOut("E POW Camp Destroyed, setting crew to be active")
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    EnterVehicle(Troop.WF_POW_4, Ground_Vehicle.T_Heavy_Recon_1, constant.ORDER_FORCED)
    EnterVehicle(Troop.WF_POW_5, Ground_Vehicle.T_Heavy_Recon_1, constant.ORDER_FORCED)
    WaitFor(2)
    DebugOut("SE POW Camp Destroyed, setting crew to be active")
    if GetSpawnMode() == eModeAction.Follow then
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_TWO) ~= nil
      FollowUnit(Ground_Vehicle.T_Heavy_Recon_1, GetPlayerUnit(constant.PLAYER_TWO), 5, 10, constant.ORDER_NORMAL)
    end
    SetActive(Troop.WF_POW_4, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.WF_POW_5, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Ground_Vehicle.T_Heavy_Recon_1, constant.ACTIVE, constant.ADJUST_WEAPON)
    AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.T_Heavy_Recon_1)
    DebugOut("Number of Items in player Group", GetNumMatchingInGroup(Unit_Group.Player_Army))
    SetUnitInvulnerable(Troop.WF_POW_4, false)
    SetUnitInvulnerable(Troop.WF_POW_5, false)
    SetUnitInvulnerable(Ground_Vehicle.T_Heavy_Recon_1, false)
    DebugOut("E POW Tank Health increased incase taken damage from ammo dump explosion")
    SetHealthPercent(Ground_Vehicle.T_Heavy_Recon_1, 100)
    WaitFor(0.2)
    SetHealthPercent(Ground_Vehicle.T_Heavy_Recon_1, 100)
    WaitFor(0.2)
    SetHealthPercent(Ground_Vehicle.T_Heavy_Recon_1, 100)
    WaitFor(0.2)
    SetHealthPercent(Ground_Vehicle.T_Heavy_Recon_1, 100)
  else
    netvariable.player1.wait = 1
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessageWithObjective(4, constant.ID_NONE, 2, 4, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(4, constant.ID_NONE, 2, 4, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  WaitFor(8)
  PhoneMessage(11, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Happy, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.wait = 0
  end
end
