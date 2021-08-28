function POWCommunicationsTower(owner)
  scriptPOWCommunicationsTower = owner
  local powtimer = 0
  SetActive(Troop.WFMissileVet1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFMissileVet2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFMissileVet3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFMissileVet4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFMissileVet5, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFMissileVet6, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SolarChainVet1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SolarChainVet2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SolarChainVet3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SolarChainVet4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SolarChainVet5, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SolarChainVet6, constant.INACTIVE, constant.ADJUST_WEAPON)
  repeat
    EndFrame()
  until cutscenefinished == 1
  while true do
    if IsDead(Destroyable_Object.CommsTowerPOWFence1) or IsDead(Destroyable_Object.CommsTowerPOWFence2) or IsDead(Destroyable_Object.CommsTowerPOWFence3) or IsDead(Destroyable_Object.CommsTowerPOWFence4) or IsDead(Destroyable_Object.CommsTowerPOWFence5) or IsDead(Destroyable_Object.CommsTowerPOWFence6) or IsDead(Destroyable_Object.CommsTowerPOWFence7) or IsDead(Destroyable_Object.CommsTowerPOWFence8) or IsDead(Destroyable_Object.CommsTowerPOWFence9) or IsDead(Destroyable_Object.CommsTowerPOWFence10) or IsDead(Destroyable_Object.CommsTowerPOWFence11) or IsDead(Destroyable_Object.CommsTowerPOWFence12) or IsDead(Destroyable_Object.CommsTowerPOWFence13) or IsDead(Destroyable_Object.CommsTowerPOWFence14) or IsDead(Destroyable_Object.CommsTowerPOWFence15) or IsDead(Destroyable_Object.CommsTowerPOWFence16) or IsDead(Destroyable_Object.CommsTowerPOWFence17) or IsDead(Destroyable_Object.CommsTowerPOWFence18) or IsDead(Destroyable_Object.CommsTowerPOWFence19) or IsDead(Destroyable_Object.CommsTowerPOWFence20) or IsDead(Destroyable_Object.CommsTowerPOWFence21) then
      Kill(Destroyable_Object.CommsTowerPOWFence1)
      Kill(Destroyable_Object.CommsTowerPOWFence2)
      Kill(Destroyable_Object.CommsTowerPOWFence3)
      Kill(Destroyable_Object.CommsTowerPOWFence4)
      Kill(Destroyable_Object.CommsTowerPOWFence5)
      Kill(Destroyable_Object.CommsTowerPOWFence6)
      Kill(Destroyable_Object.CommsTowerPOWFence7)
      Kill(Destroyable_Object.CommsTowerPOWFence8)
      Kill(Destroyable_Object.CommsTowerPOWFence9)
      Kill(Destroyable_Object.CommsTowerPOWFence10)
      Kill(Destroyable_Object.CommsTowerPOWFence11)
      Kill(Destroyable_Object.CommsTowerPOWFence12)
      Kill(Destroyable_Object.CommsTowerPOWFence13)
      Kill(Destroyable_Object.CommsTowerPOWFence14)
      Kill(Destroyable_Object.CommsTowerPOWFence15)
      Kill(Destroyable_Object.CommsTowerPOWFence16)
      Kill(Destroyable_Object.CommsTowerPOWFence17)
      Kill(Destroyable_Object.CommsTowerPOWFence18)
      Kill(Destroyable_Object.CommsTowerPOWFence19)
      Kill(Destroyable_Object.CommsTowerPOWFence20)
      Kill(Destroyable_Object.CommsTowerPOWFence21)
      missilevetsfree = 1
      SetActive(Troop.WFMissileVet1, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissileVet2, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissileVet3, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissileVet4, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissileVet5, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissileVet6, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SolarChainVet1, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SolarChainVet2, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SolarChainVet3, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SolarChainVet4, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SolarChainVet5, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SolarChainVet6, constant.ACTIVE, constant.ADJUST_WEAPON)
      WaitFor(0.2)
      break
    end
    EndFrame()
  end
  DebugOut("Comms tower objective complete")
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessageWithObjective(70, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(70, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_TWO, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective.JailMissile, constant.OBJECTIVE_DATA_STATE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) and GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.WFMissileVet1, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFMissileVet2, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFMissileVet3, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFMissileVet4, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFMissileVet5, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFMissileVet6, GetPlayerUnit(constant.PLAYER_ONE), 30, constant.ORDER_NORMAL)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) and GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.SolarChainVet1, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarChainVet2, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarChainVet3, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarChainVet4, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarChainVet5, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarChainVet6, GetPlayerUnit(constant.PLAYER_TWO), 30, constant.ORDER_NORMAL)
  end
  powtimer = GetTime()
  AddToGroup(Unit_Group.POWUnits, Troop.WFMissileVet1)
  AddToGroup(Unit_Group.POWUnits, Troop.WFMissileVet2)
  AddToGroup(Unit_Group.POWUnits, Troop.WFMissileVet3)
  AddToGroup(Unit_Group.POWUnits, Troop.WFMissileVet4)
  AddToGroup(Unit_Group.POWUnits, Troop.WFMissileVet5)
  AddToGroup(Unit_Group.POWUnits, Troop.WFMissileVet6)
  AddToGroup(Unit_Group.POWUnits, Troop.SolarChainVet1)
  AddToGroup(Unit_Group.POWUnits, Troop.SolarChainVet2)
  AddToGroup(Unit_Group.POWUnits, Troop.SolarChainVet3)
  AddToGroup(Unit_Group.POWUnits, Troop.SolarChainVet4)
  AddToGroup(Unit_Group.POWUnits, Troop.SolarChainVet5)
  AddToGroup(Unit_Group.POWUnits, Troop.SolarChainVet6)
  AddToGroup(Unit_Group.Player_Army, Troop.WFMissileVet1)
  AddToGroup(Unit_Group.Player_Army, Troop.WFMissileVet2)
  AddToGroup(Unit_Group.Player_Army, Troop.WFMissileVet3)
  AddToGroup(Unit_Group.Player_Army, Troop.WFMissileVet4)
  AddToGroup(Unit_Group.Player_Army, Troop.WFMissileVet5)
  AddToGroup(Unit_Group.Player_Army, Troop.WFMissileVet6)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarChainVet1)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarChainVet2)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarChainVet3)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarChainVet4)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarChainVet5)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarChainVet6)
  repeat
    SetHealthPercent(Troop.WFMissileVet1, 100)
    SetHealthPercent(Troop.WFMissileVet2, 100)
    SetHealthPercent(Troop.WFMissileVet3, 100)
    SetHealthPercent(Troop.WFMissileVet4, 100)
    SetHealthPercent(Troop.WFMissileVet5, 100)
    SetHealthPercent(Troop.WFMissileVet6, 100)
    SetHealthPercent(Troop.SolarChainVet1, 100)
    SetHealthPercent(Troop.SolarChainVet2, 100)
    SetHealthPercent(Troop.SolarChainVet3, 100)
    SetHealthPercent(Troop.SolarChainVet4, 100)
    SetHealthPercent(Troop.SolarChainVet5, 100)
    SetHealthPercent(Troop.SolarChainVet6, 100)
    EndFrame()
  until GetTime() > powtimer + 2
  if IsNetworkHost() and missilevetsfree + bazookavetsfree + solarpowsfree < 3 then
    netvariable.player1.wfLostUnitsPOWsLeft = 0
    netvariable.player1.seLostUnitsPOWsLeft = 0
    stopcheckingWFpowstatus = 0
    stopcheckingSEpowstatus = 0
    DebugOut("Resetting Lost POW checking")
  end
  stopcheckingWFpowstatus = 0
  stopcheckingSEpowstatus = 0
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  if IsDead(Building.CommunicationsTower) == false then
    chopperstatus = 1
  end
end
