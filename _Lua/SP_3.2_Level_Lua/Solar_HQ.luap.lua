function Solar_HQ(owner)
  script10 = owner
  repeat
    EndFrame()
  until mid > 0
  Teleport(Water_Vehicle.SE_Sub_1, -65, 750, 180, 10)
  Teleport(Water_Vehicle.SE_Sub_2, -245, 700, 135, 10)
  ReviveDeadUnit(Water_Vehicle.SE_Sub_1)
  ReviveDeadUnit(Water_Vehicle.SE_Sub_2)
  repeat
    EndFrame()
  until mid == 2
  WaitFor(20)
  DebugOut("Sending Solar Subs towards the player's Sea Transports")
  SubmarineDive(Water_Vehicle.SE_Sub_1)
  SubmarineDive(Water_Vehicle.SE_Sub_2)
  WaitFor(1)
  AttackTarget(Water_Vehicle.SE_Sub_1, Water_Vehicle.AI_Sea_Transport_1)
  WaitFor(5)
  AttackTarget(Water_Vehicle.SE_Sub_2, Water_Vehicle.AI_Sea_Transport_2)
  DebugOut("Waiting for Anglo Transports to get near the islands")
  repeat
    EndFrame()
  until IsInArea(Water_Vehicle.AI_Sea_Transport_1, Map_Zone.AT_Gunships_1) or IsInArea(Water_Vehicle.AI_Sea_Transport_2, Map_Zone.AT_Gunships_1) or IsDead(Water_Vehicle.SE_Sub_1) and IsDead(Water_Vehicle.SE_Sub_2)
  PhoneMessage(72, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  Teleport(Air_Vehicle.SE_Gunship_1, -935, 850, 180, 10)
  Teleport(Air_Vehicle.SE_Gunship_2, -925, 860, 180, 10)
  Teleport(Air_Vehicle.SE_Gunship_3, -915, 870, 180, 10)
  Teleport(Air_Vehicle.SE_Gunship_4, -905, 880, 180, 10)
  WaitFor(1)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_1)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_2)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_3)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_4)
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_1)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Gunship_1) == 0
  DebugOut("Gunship 1 full")
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_2)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Gunship_2) == 0
  DebugOut("Gunship 2 full")
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_3)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Gunship_3) == 0
  DebugOut("Gunship 3 full")
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_4)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Gunship_4) == 0
  DebugOut("Gunship 4 full")
  if IsDead(Water_Vehicle.AI_Sea_Transport_2) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_1, Water_Vehicle.AI_Sea_Transport_2, constant.ORDER_NORMAL)
  else
    AttackTarget(Air_Vehicle.SE_Gunship_1, Water_Vehicle.AI_Sea_Transport_1, constant.ORDER_NORMAL)
  end
  if IsDead(Water_Vehicle.AI_Sea_Transport_1) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_2, Water_Vehicle.AI_Sea_Transport_1, constant.ORDER_NORMAL)
  else
    AttackTarget(Air_Vehicle.SE_Gunship_2, Water_Vehicle.AI_Sea_Transport_2, constant.ORDER_NORMAL)
  end
  if IsDead(Water_Vehicle.AI_Sea_Transport_1) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_3, Water_Vehicle.AI_Sea_Transport_1, constant.ORDER_NORMAL)
  else
    AttackTarget(Air_Vehicle.SE_Gunship_3, Water_Vehicle.AI_Sea_Transport_2, constant.ORDER_NORMAL)
  end
  if IsDead(Water_Vehicle.AI_Sea_Transport_2) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_4, Water_Vehicle.AI_Sea_Transport_2, constant.ORDER_NORMAL)
  else
    AttackTarget(Air_Vehicle.SE_Gunship_4, Water_Vehicle.AI_Sea_Transport_1, constant.ORDER_NORMAL)
  end
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Gunship_1) and IsDead(Air_Vehicle.SE_Gunship_2) and IsDead(Air_Vehicle.SE_Gunship_3) and IsDead(Air_Vehicle.SE_Gunship_4)
  PhoneMessage(80, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  DebugOut("Waiting for Anglo Transports to get near the islands")
  repeat
    EndFrame()
  until beach == 2
  DebugOut("Final Mid Level Cutsene Ended, send in the Solar Tanks and Gunships")
  Teleport(Air_Vehicle.SE_Gunship_6, -1115, 675, 90, 10)
  Teleport(Air_Vehicle.SE_Gunship_7, -1115, 665, 90, 10)
  WaitFor(1)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_6)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_7)
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_6)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Gunship_6) == 0
  DebugOut("Gunship 6 full")
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_7)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Gunship_7) == 0
  DebugOut("Gunship 7 full")
  GoToArea(Air_Vehicle.SE_Gunship_6, -560, 735, 50)
  GoToArea(Air_Vehicle.SE_Gunship_7, -520, 760, 50)
  DebugOut("Waiting for Anglo Transports to get near the Docks")
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SE_Gunship_6) and IsDead(Air_Vehicle.SE_Gunship_7) and IsReadyToRevive(Air_Vehicle.SE_Gunship_1) and IsReadyToRevive(Air_Vehicle.SE_Gunship_2)
  WaitFor(30)
  if IsReadyToRevive(Air_Vehicle.SE_Gunship_1) then
    ReviveDeadUnit(Air_Vehicle.SE_Gunship_1, -935, 1450, 180, 10)
  else
    Spawn(Air_Vehicle.SE_Gunship_1)
  end
  if IsReadyToRevive(Air_Vehicle.SE_Gunship_2) then
    ReviveDeadUnit(Air_Vehicle.SE_Gunship_2, -915, 1460, 180, 10)
  else
    Spawn(Air_Vehicle.SE_Gunship_2)
  end
  if 0 < GetNumSeatsFree(Air_Vehicle.SE_Gunship_1) then
    repeat
      SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_1)
      EndFrame()
    until GetNumSeatsFree(Air_Vehicle.SE_Gunship_1) == 0
  end
  DebugOut("Gunship 1 full")
  if 0 < GetNumSeatsFree(Air_Vehicle.SE_Gunship_2) then
    repeat
      SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_2)
      EndFrame()
    until GetNumSeatsFree(Air_Vehicle.SE_Gunship_2) == 0
  end
  DebugOut("Gunship 2 full")
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
  GoToArea(Air_Vehicle.SE_Gunship_1, GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) - 40, GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) + 15, 25)
  GoToArea(Air_Vehicle.SE_Gunship_2, GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) - 40, GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) + 15, 25)
  repeat
    EndFrame()
  until IsDead(Ground_Vehicle.HQ_Heavy_Tank_3) and IsDead(Air_Vehicle.SE_Gunship_1) and IsDead(Air_Vehicle.SE_Gunship_2)
  WaitFor(30)
  if IsDead(Air_Vehicle.SE_Gunship_3) then
    repeat
      EndFrame()
    until IsReadyToRevive(Air_Vehicle.SE_Gunship_3)
    EndFrame()
    ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_3, -935, 1250, 180, 25)
    EndFrame()
    GoToArea(Air_Vehicle.SE_Gunship_3, GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) - 40, GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) + 15, 25)
  end
  if IsDead(Air_Vehicle.SE_Gunship_4) then
    repeat
      EndFrame()
    until IsReadyToRevive(Air_Vehicle.SE_Gunship_4)
    EndFrame()
    ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_4, -935, 1250, 180, 25)
    EndFrame()
    GoToArea(Air_Vehicle.SE_Gunship_4, GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) - 40, GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) + 15, 25)
  end
end
