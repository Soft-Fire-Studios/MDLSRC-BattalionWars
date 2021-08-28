function XV_BMB01(owner)
  local self = Air_Vehicle.XV_BMB01
  Despawn(self)
  while not XV_AllAPTsDead do
    EndFrame()
  end
  WaitFor(15)
  Spawn(self)
  GoToArea(self, -20, 610, 5)
  SetObjectiveData(Objective_Marker.XV_BMB01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  enBMBsDead = 0
  while true do
    if IsDead(self) then
      SetObjectiveData(Objective_Marker.XV_BMB01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      WaitFor(5)
    else
      local id = group.FirstNotDeadAfterIndex(Unit_Group.Omaha, 0)
      if id > 0 then
        AttackTarget(self, id)
      end
    end
    WaitFor(5)
  end
end
