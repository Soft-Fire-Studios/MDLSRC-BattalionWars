function WF_ATP02(owner)
  local self = Air_Vehicle.WF_ATP02
  Despawn(self)
  while not XV_AllAPTsDead do
    EndFrame()
  end
  Spawn(self)
  SetActive(self, constant.INACTIVE)
  GoToArea(self, -90, 490, 10)
  while GetMovementState(self) == constant.MOVEMENT_STATE_AIRBORNE do
    LandAirUnit(self, -90, 490)
    WaitFor(5)
  end
  while GetUnitInSeat(self, 1) > 0 do
    ExitVehicle(constant.ID_NONE, self)
    WaitFor(5)
  end
  WF_ATP02Landed = true
  GoToArea(self, -1900, -1485, 10)
  while true do
    if not IsInArea(self, Map_Zone.bound01) or not IsInArea(self, Map_Zone.bound02) then
      break
    end
    WaitFor(1)
  end
  WaitFor(30)
  Despawn(self)
end
