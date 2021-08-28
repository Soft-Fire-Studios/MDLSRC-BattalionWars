function battle_5_and_6_transport_reinforcements(owner)
  local loop = 0
  while battle < 5 do
    EndFrame()
  end
  GoToArea(Unit_Group.first, -510, -55, 10)
  GoToArea(Unit_Group.second, -490, -10, 10)
  DebugOut("bring in X reinforcements")
  Spawn(Air_Vehicle.xtrans1)
  Spawn(Air_Vehicle.xtrans2)
  LandAirUnit(Air_Vehicle.xtrans1, -505, 55, constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.xtrans2, -570, -110, constant.ORDER_FORCED)
  WaitFor(5)
  while loop == 0 do
    if GetMovementState(Air_Vehicle.xtrans1) == constant.MOVEMENT_STATE_ON_GROUND then
      DebugOut("X Landing")
      loop = 1
    else
      if GetMovementState(Air_Vehicle.xtrans2) == constant.MOVEMENT_STATE_ON_GROUND then
        DebugOut("X Landing")
        loop = 1
      else
      end
    end
    EndFrame()
  end
  loop = 0
  WaitFor(2)
  ExitVehicle(Troop.xref2, Air_Vehicle.xtrans1)
  ExitVehicle(Troop.xref3, Air_Vehicle.xtrans1)
  ExitVehicle(Troop.xref4, Air_Vehicle.xtrans1)
  ExitVehicle(Troop.xref5, Air_Vehicle.xtrans1)
  EnterVehicle(Troop.xref2, Capture_Point.tundran)
  EnterVehicle(Troop.xref3, Capture_Point.tundran)
  EnterVehicle(Troop.xref4, Capture_Point.tundran)
  EnterVehicle(Troop.xref5, Capture_Point.tundran)
  DebugOut("exit1")
  ExitVehicle(Troop.xref8, Air_Vehicle.xtrans2)
  ExitVehicle(Troop.xref9, Air_Vehicle.xtrans2)
  ExitVehicle(Troop.xref10, Air_Vehicle.xtrans2)
  ExitVehicle(Troop.xref11, Air_Vehicle.xtrans2)
  EnterVehicle(Troop.xref8, Capture_Point.tundran)
  EnterVehicle(Troop.xref9, Capture_Point.tundran)
  EnterVehicle(Troop.xref10, Capture_Point.tundran)
  EnterVehicle(Troop.xref11, Capture_Point.tundran)
  DebugOut("exit2")
  WaitFor(2)
  GoToArea(Air_Vehicle.xtrans1, 470, -115, 10, 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.xtrans2, 420, -325, 10, 0, constant.ORDER_FORCED)
  DebugOut("checking health")
  while 0 < GetHealthPercent(Air_Vehicle.xtrans1) do
    if IsInRange(GetPlayerUnit(), Air_Vehicle.xtrans1, 500) then
      EndFrame()
    else
      Kill(Air_Vehicle.xtrans1)
    end
    EndFrame()
  end
  while 0 < GetHealthPercent(Air_Vehicle.xtrans2) do
    if IsInRange(GetPlayerUnit(), Air_Vehicle.xtrans2, 500) then
      EndFrame()
    else
      Kill(Air_Vehicle.xtrans2)
    end
    EndFrame()
  end
  DebugOut("transports dead")
  WaitFor(20)
  DebugOut("checking for trans one being ready to revive")
  while loop == 0 do
    if IsReadyToRevive(Air_Vehicle.xtrans1) then
      loop = 1
    end
    EndFrame()
  end
  loop = 0
  Teleport(Air_Vehicle.xtrans1, -600, 630, 270, 10)
  DebugOut("trans1 Respawn")
  WaitFor(1)
  ReviveDeadUnit(Air_Vehicle.xtrans1)
  EndFrame()
  while loop == 0 do
    if 0 < GetNumSeatsFree(Air_Vehicle.xtrans1) and GetNumSeatsFree(Air_Vehicle.xtrans1) > 3 then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xtrans1)
      EndFrame()
    end
    if 0 < GetNumSeatsFree(Air_Vehicle.xtrans1) and GetNumSeatsFree(Air_Vehicle.xtrans1) < 4 then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, Air_Vehicle.xtrans1)
      EndFrame()
    end
    if GetNumSeatsFree(Air_Vehicle.xtrans1) == 0 then
      loop = 1
    end
    EndFrame()
  end
  LandAirUnit(Air_Vehicle.xtrans1, -505, 55, constant.ORDER_FORCED)
  loop = 0
  WaitFor(5)
  PhoneMessage(65, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nova_Sad)
  tank = 1
  WaitFor(3)
  while loop == 0 do
    if GetMovementState(Air_Vehicle.xtrans1) == constant.MOVEMENT_STATE_ON_GROUND then
      DebugOut("X Landing")
      loop = 1
    end
    EndFrame()
  end
  loop = 0
  DebugOut("exit trans1")
  ExitVehicle(constant.ID_NONE, Air_Vehicle.xtrans1)
  WaitFor(2)
  DebugOut("adding guys to group flag1")
  AddToGroup(Unit_Group.flag1, -505, 55, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, 0, 5000)
  AddToGroup(Unit_Group.flag1, -505, 55, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, 0, 5000)
  if IsDead(Air_Vehicle.xtrans1) then
    WaitFor(1)
    GoToArea(Unit_Group.flag1, -495, -25, 10)
  else
    DebugOut("sending flag1 to the flag")
    WaitFor(1)
    EnterVehicle(GetGroupMember(Unit_Group.flag1, 1), Capture_Point.tundran)
    EnterVehicle(GetGroupMember(Unit_Group.flag1, 2), Capture_Point.tundran)
    EnterVehicle(GetGroupMember(Unit_Group.flag1, 3), Capture_Point.tundran)
    EnterVehicle(GetGroupMember(Unit_Group.flag1, 4), Capture_Point.tundran)
  end
  DebugOut("sending trans1 away")
  WaitFor(2)
  GoToArea(Air_Vehicle.xtrans1, 470, -115, 10, 0, constant.ORDER_FORCED)
  WaitFor(10)
  tank = 0
  while 0 < GetHealthPercent(Air_Vehicle.xtrans1) do
    if IsInRange(GetPlayerUnit(), Air_Vehicle.xtrans1, 500) then
      EndFrame()
    else
      Kill(Air_Vehicle.xtrans1)
    end
    EndFrame()
  end
  Kill(Air_Vehicle.xtrans1)
  Kill(Air_Vehicle.xtrans2)
  WaitFor(33)
  loop = 0
  DebugOut("checking for trans two being ready to revive")
  while loop == 0 do
    if IsReadyToRevive(Air_Vehicle.xtrans2) then
      loop = 1
    end
    EndFrame()
  end
  loop = 0
  Teleport(Air_Vehicle.xtrans2, -540, -545, 270, 10)
  DebugOut("trans2 Respawn")
  WaitFor(1)
  ReviveDeadUnit(Air_Vehicle.xtrans2)
  EndFrame()
  while loop == 0 do
    if 0 < GetNumSeatsFree(Air_Vehicle.xtrans2) and GetNumSeatsFree(Air_Vehicle.xtrans2) > 3 then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xtrans2)
      EndFrame()
    end
    if 0 < GetNumSeatsFree(Air_Vehicle.xtrans2) and GetNumSeatsFree(Air_Vehicle.xtrans2) < 4 then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, Air_Vehicle.xtrans2)
      EndFrame()
    end
    if GetNumSeatsFree(Air_Vehicle.xtrans2) == 0 then
      loop = 1
    end
    EndFrame()
  end
  LandAirUnit(Air_Vehicle.xtrans2, -570, -110, constant.ORDER_FORCED)
  loop = 0
  WaitFor(5)
  PhoneMessage(64, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nova_Sad)
  tank = 1
  WaitFor(3)
  while loop == 0 do
    if GetMovementState(Air_Vehicle.xtrans2) == constant.MOVEMENT_STATE_ON_GROUND then
      DebugOut("X Landing")
      loop = 1
    end
    EndFrame()
  end
  loop = 0
  DebugOut("exit trans2")
  ExitVehicle(constant.ID_NONE, Air_Vehicle.xtrans2)
  WaitFor(2)
  DebugOut("adding guys to group flag2")
  AddToGroup(Unit_Group.flag2, -570, -110, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, 0, 5000)
  AddToGroup(Unit_Group.flag2, -570, -110, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, 0, 5000)
  WaitFor(1)
  if IsDead(Air_Vehicle.xtrans2) then
    WaitFor(1)
    GoToArea(Unit_Group.flag2, -495, -25, 10)
  else
    DebugOut("sending flag2 to the flag")
    WaitFor(1)
    EnterVehicle(GetGroupMember(Unit_Group.flag2, 1), Capture_Point.tundran)
    EnterVehicle(GetGroupMember(Unit_Group.flag2, 2), Capture_Point.tundran)
    EnterVehicle(GetGroupMember(Unit_Group.flag2, 3), Capture_Point.tundran)
    EnterVehicle(GetGroupMember(Unit_Group.flag2, 4), Capture_Point.tundran)
  end
  DebugOut("sending trans2 away")
  WaitFor(2)
  GoToArea(Air_Vehicle.xtrans2, 420, -325, 10, 0, constant.ORDER_FORCED)
  WaitFor(10)
  tank = 0
  DebugOut("waiting for trans2 to be out of range")
  while 0 < GetHealthPercent(Air_Vehicle.xtrans2) do
    if IsInRange(GetPlayerUnit(), Air_Vehicle.xtrans2, 500) then
      EndFrame()
    else
      Kill(Air_Vehicle.xtrans2)
    end
    EndFrame()
  end
  DebugOut("trans2 killed")
  Kill(Air_Vehicle.xtrans1)
  Kill(Air_Vehicle.xtrans2)
  WaitFor(45)
  DebugOut("checking for trans one being ready to revive")
  while loop == 0 do
    if IsReadyToRevive(Air_Vehicle.xtrans1) then
      loop = 1
    end
    EndFrame()
  end
  loop = 0
  Teleport(Air_Vehicle.xtrans1, -600, 630, 270, 10)
  DebugOut("trans1 Respawn")
  WaitFor(1)
  ReviveDeadUnit(Air_Vehicle.xtrans1)
  EndFrame()
  while loop == 0 do
    if 0 < GetNumSeatsFree(Air_Vehicle.xtrans1) and GetNumSeatsFree(Air_Vehicle.xtrans1) > 3 then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xtrans1)
      EndFrame()
    end
    if 0 < GetNumSeatsFree(Air_Vehicle.xtrans1) and GetNumSeatsFree(Air_Vehicle.xtrans1) < 4 then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, Air_Vehicle.xtrans1)
      EndFrame()
    end
    if GetNumSeatsFree(Air_Vehicle.xtrans1) == 0 then
      loop = 1
    end
    EndFrame()
  end
  LandAirUnit(Air_Vehicle.xtrans1, -505, 55, constant.ORDER_FORCED)
  loop = 0
  WaitFor(2)
  PhoneMessage(63, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nova_Sad)
  PhoneMessage(82, constant.ID_NONE, 1, 5, SpriteID.CO_X_Vlad_Sad)
  PhoneMessage(83, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nova_Sad)
  tank = 1
  WaitFor(3)
  while loop == 0 do
    if GetMovementState(Air_Vehicle.xtrans1) == constant.MOVEMENT_STATE_ON_GROUND then
      DebugOut("X Landing")
      loop = 1
    end
    EndFrame()
  end
  loop = 0
  DebugOut("exit trans1")
  ExitVehicle(constant.ID_NONE, Air_Vehicle.xtrans1)
  WaitFor(2)
  DebugOut("adding guys to group flag1")
  AddToGroup(Unit_Group.flag3, -505, 55, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, 0, 5000)
  AddToGroup(Unit_Group.flag3, -505, 55, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, 0, 5000)
  if IsDead(Air_Vehicle.xtrans1) then
    WaitFor(1)
    GoToArea(Unit_Group.flag3, -495, -25, 10)
  else
    DebugOut("sending flag3 to the flag")
    WaitFor(2)
    EnterVehicle(GetGroupMember(Unit_Group.flag3, 1), Capture_Point.tundran)
    EnterVehicle(GetGroupMember(Unit_Group.flag3, 2), Capture_Point.tundran)
    EnterVehicle(GetGroupMember(Unit_Group.flag3, 3), Capture_Point.tundran)
    EnterVehicle(GetGroupMember(Unit_Group.flag3, 4), Capture_Point.tundran)
  end
  DebugOut("sending trans1 away")
  WaitFor(2)
  GoToArea(Air_Vehicle.xtrans1, 470, -115, 10, 0, constant.ORDER_FORCED)
  WaitFor(15)
  tank = 0
  DebugOut("waiting for trans1 to be out of range")
  while 0 < GetHealthPercent(Air_Vehicle.xtrans1) do
    if IsInRange(GetPlayerUnit(), Air_Vehicle.xtrans1, 500) then
      EndFrame()
    else
      Kill(Air_Vehicle.xtrans1)
    end
    EndFrame()
  end
  DebugOut("trans1 dead")
  Kill(Air_Vehicle.xtrans1)
  Kill(Air_Vehicle.xtrans2)
  while battle < 6 do
    EndFrame()
  end
  DebugOut("last wave t copters")
  loop = 0
  while loop == 0 do
    if IsReadyToRevive(Air_Vehicle.xtrans1) and IsReadyToRevive(Air_Vehicle.xtrans2) then
      loop = 1
    end
    EndFrame()
  end
  if IsInArea(GetPlayerUnit(), -595, -650, 650) then
    DebugOut("both trans Respawn further away from the player")
    Teleport(Air_Vehicle.xtrans1, -595, -900, 0, 10)
    Teleport(Air_Vehicle.xtrans2, -530, -900, 0, 10)
  else
    DebugOut("both trans Respawn")
    Teleport(Air_Vehicle.xtrans1, -595, -650, 0, 10)
    Teleport(Air_Vehicle.xtrans2, -530, -650, 0, 10)
  end
  WaitFor(2)
  ReviveDeadUnit(Air_Vehicle.xtrans1)
  EndFrame()
  ReviveDeadUnit(Air_Vehicle.xtrans2)
  EndFrame()
  loop = 0
  while loop == 0 do
    if 0 < GetNumSeatsFree(Air_Vehicle.xtrans1) then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xtrans1)
      EndFrame()
    end
    if GetNumSeatsFree(Air_Vehicle.xtrans1) == 0 then
      loop = 1
    end
    EndFrame()
  end
  loop = 0
  while loop == 0 do
    if 0 < GetNumSeatsFree(Air_Vehicle.xtrans2) then
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.xtrans2)
      EndFrame()
    end
    if GetNumSeatsFree(Air_Vehicle.xtrans2) == 0 then
      loop = 1
    end
    EndFrame()
  end
  LandAirUnit(Air_Vehicle.xtrans1, -595, -255, constant.ORDER_FORCED)
  WaitFor(1)
  LandAirUnit(Air_Vehicle.xtrans2, -535, -255, constant.ORDER_FORCED)
  WaitFor(10)
  loop = 0
  while loop == 0 do
    if GetMovementState(Air_Vehicle.xtrans1) == constant.MOVEMENT_STATE_ON_GROUND then
      DebugOut("beach trans landing")
      loop = 1
    else
      if GetMovementState(Air_Vehicle.xtrans1) == constant.MOVEMENT_STATE_ON_GROUND then
        DebugOut("beach trans landing")
        loop = 1
      else
      end
    end
    EndFrame()
  end
  ExitVehicle(constant.ID_NONE, Air_Vehicle.xtrans1)
  ExitVehicle(constant.ID_NONE, Air_Vehicle.xtrans2)
  WaitFor(2)
  AddToGroup(Unit_Group.beach, -595, -265, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, 0, 5000)
  AddToGroup(Unit_Group.beach, -595, -265, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, 0, 5000)
  AddToGroup(Unit_Group.beach, -530, -255, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, 0, 5000)
  AddToGroup(Unit_Group.beach, -530, -255, 120, flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, 0, 5000)
  WaitFor(5)
  FollowWaypoint(Unit_Group.beach, Waypoint.third, 0, 0, 20)
  GoToArea(Air_Vehicle.xtrans1, 480, 100, 10, 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.xtrans2, 420, 100, 10, 0, constant.ORDER_FORCED)
end
