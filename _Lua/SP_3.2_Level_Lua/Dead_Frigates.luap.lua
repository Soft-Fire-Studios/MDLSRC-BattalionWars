function Dead_Frigates(owner)
  script02 = owner
  local fcurrent = 0
  local f1dead = 0
  local f2dead = 0
  repeat
    EndFrame()
  until cutscene == 1
  SetObjectiveData(Objective_Marker.Battleships_OM_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Battleships_OM_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    if f1dead == 0 and IsDead(Water_Vehicle.AI_Frigate_1) == true then
      SetObjectiveData(Objective_Marker.Battleships_OM_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("First Frigate dead")
      f1dead = 1
    end
    if f2dead == 0 and IsDead(Water_Vehicle.AI_Frigate_2) == true then
      SetObjectiveData(Objective_Marker.Battleships_OM_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("Second Frigate dead")
      f2dead = 1
    end
    if fcurrent == 0 and f1dead + f2dead == 1 then
      SetObjectiveData(Objective.Frigates_22, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Frigates_12, constant.OBJECTIVE_DATA_VISIBLE, 1)
      fcurrent = 1
    end
    if fcurrent == 1 and f1dead + f2dead == 2 then
      SetObjectiveData(Objective.Frigates_12, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Frigates_02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      fcurrent = 2
      return
    end
    EndFrame()
  until subtut == 3
  SetObjectiveData(Objective.Frigates_02, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Frigates_12, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Frigates_22, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Dock, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Dock_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Battleships_OM_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Battleships_OM_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
end
