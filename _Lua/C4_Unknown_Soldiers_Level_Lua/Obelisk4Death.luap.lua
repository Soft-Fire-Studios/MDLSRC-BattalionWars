function Obelisk4Death(owner)
  WaitFor(1)
  repeat
    WaitFor(1)
    EndFrame()
  until IsDead(Building.Obelisk4)
  obeliskskilled = obeliskskilled + 1
  SetObjectiveData(Objective_Marker.Obelisk_4_Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Obelisk_4, constant.OBJECTIVE_DATA_STATE, 1)
end
