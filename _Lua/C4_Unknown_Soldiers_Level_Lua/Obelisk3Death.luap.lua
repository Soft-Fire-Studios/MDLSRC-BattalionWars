function Obelisk3Death(owner)
  WaitFor(1)
  repeat
    WaitFor(1)
    EndFrame()
  until IsDead(Building.Obelisk3)
  obeliskskilled = obeliskskilled + 1
  SetObjectiveData(Objective_Marker.Obelisk_3_Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Obelisk_3, constant.OBJECTIVE_DATA_STATE, 1)
end
