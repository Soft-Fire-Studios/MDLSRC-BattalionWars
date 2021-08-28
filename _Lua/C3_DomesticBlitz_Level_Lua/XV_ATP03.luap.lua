function XV_ATP03(owner)
  local self = Air_Vehicle.XV_ATP03
  while InStartCutscene do
    EndFrame()
  end
  FollowUnit(Air_Vehicle.XV_FIG01, Air_Vehicle.XV_ATP03, -1, 0)
  FollowUnit(Air_Vehicle.XV_FIG02, Air_Vehicle.XV_ATP03, -1, 0)
  SetObjectiveData(Objective_Marker.XV_ATP03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  while true do
    if 0 < NumItemsInArea(Map_Zone.KICKATP, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.OBJ1, flag.TYPE_WFRONTIER) then
      break
    end
    EndFrame()
  end
  LandAirUnit(self, 410, 795, constant.ORDER_FORCED)
  while not IsDead(self) do
    if GetMovementState(self) == constant.MOVEMENT_STATE_ON_GROUND then
      ExitVehicle(constant.ID_NONE, self)
      break
    end
    EndFrame()
  end
  if IsDead(self) then
    PowerObjectivesCompleted = PowerObjectivesCompleted + 1
  end
  XV_ATP03Dead = true
  SetObjectiveData(Objective_Marker.XV_ATP03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  while not CapturingBase do
    EndFrame()
  end
  WaitFor(10)
  while not Teleport(self, GetRandom(-1800, -1500), GetRandom(-100, -200), 1, 30) do
    WaitFor(2)
  end
  if IsReadyToRevive(self) then
    ReviveDeadUnit(self)
    WaitFor(2)
  else
    SetHealthPercent(self, 100)
    while 0 < GetNumSeatsFree(self) do
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, self)
      WaitFor(2)
    end
  end
  group.Add(Unit_Group.EndATP02, GetUnitInSeat(self, 0))
  group.Add(Unit_Group.EndATP02, GetUnitInSeat(self, 1))
  group.Add(Unit_Group.EndATP02, GetUnitInSeat(self, 2))
  group.Add(Unit_Group.EndATP02, GetUnitInSeat(self, 3))
  group.Add(Unit_Group.EndATP02, GetUnitInSeat(self, 4))
  group.Add(Unit_Group.EndATP02, GetUnitInSeat(self, 5))
  group.Add(Unit_Group.EndATP02, GetUnitInSeat(self, 6))
  while IsInArea(self, Map_Zone.OBJ1) do
    GoToArea(self, -225, 1000, 10)
    WaitFor(8)
  end
  if 0 < GetPlayerUnit() then
    if IsInArea(GetPlayerUnit(), Map_Zone.spawnright) then
      while not Teleport(self, GetRandom(615, 675), GetRandom(245, 150), 1, 30) do
        WaitFor(1)
      end
      do break end
      while not Teleport(self, GetRandom(-615, -550), GetRandom(-100, -200), 1, 30) do
        WaitFor(1)
      end
    end
    while GetMovementState(self) == constant.MOVEMENT_STATE_AIRBORNE do
      LandAirUnit(self, -195, 1135)
      WaitFor(5)
    end
  end
  while 0 < GetUnitInSeat(self, 1) do
    ExitVehicle(constant.ID_NONE, self)
    WaitFor(5)
  end
  group.ScatterInArea(Unit_Group.EndATP02, -225, 1000, 30, 30)
end
