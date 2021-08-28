function XV_ATP05(owner)
  local self = Air_Vehicle.XV_ATP05
  while InStartCutscene do
    EndFrame()
  end
  SetObjectiveData(Objective_Marker.XV_ATP05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  while true do
    if NumItemsInArea(Map_Zone.KICKATP, flag.TYPE_WFRONTIER) > 0 or 0 < NumItemsInArea(Map_Zone.OBJ1, flag.TYPE_WFRONTIER) then
      break
    end
    EndFrame()
  end
  LandAirUnit(self, 420, 825, constant.ORDER_FORCED)
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
  XV_ATP05Dead = true
  SetObjectiveData(Objective_Marker.XV_ATP05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
end
