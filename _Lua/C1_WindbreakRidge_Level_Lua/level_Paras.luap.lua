function level_Paras(owner)
  local self = Air_Vehicle.TN_ATN01
  while not tcopter_spawned do
    EndFrame()
  end
  group.Spawn(Unit_Group.TN_ParaTransport, true)
  Teleport(self, 360, 40, 180, 10)
  WaitFor(1)
  Teleport(self, 360, 40, 180, 10)
  WaitFor(1)
  GoToArea(self, 360, 40, 10)
  WaitFor(5)
  GoToArea(self, 365, 45, 10)
  WaitFor(5)
  GoToArea(self, 160, -260, 10)
  while GetMovementState(self) == constant.MOVEMENT_STATE_AIRBORNE do
    SetHealthPercent(self, 100)
    LandAirUnit(self, 160, -260)
    WaitFor(1)
  end
  ExitVehicle(constant.ID_NONE, self)
  WaitFor(4)
  GoToArea(self, -500, -500, 10)
end
