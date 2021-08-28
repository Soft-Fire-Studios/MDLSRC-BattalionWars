function Objective02XAABuildings(owner)
  local AA01 = 0
  local AA02 = 0
  local AA03 = 0
  local AAObjective01 = 0
  local AAObjective02 = 0
  local AA = 0
  while missionend == 0 do
    if AA01 == 0 and IsDead(Building.XAA01) then
      SetObjectiveData(Objective_Marker.AAMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      AA01 = 1
      AA = AA + 1
      DebugOut("*Objective02XAABuildings* - AA01 is dead")
    end
    EndFrame()
    if AA02 == 0 and IsDead(Building.XAA02) then
      SetObjectiveData(Objective_Marker.AAMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      AA02 = 1
      AA = AA + 1
      DebugOut("*Objective02XAABuildings* - AA02 is dead")
    end
    EndFrame()
    if AA03 == 0 and IsDead(Building.XAA03) then
      SetObjectiveData(Objective_Marker.AAMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      AA03 = 1
      AA = AA + 1
      DebugOut("*Objective02XAABuildings* - AA03 is dead")
    end
    EndFrame()
    if AA == 1 and AAObjective01 == 0 then
      SetObjectiveData(Objective.PowerGenerator00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PowerGenerator01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      AAObjective01 = 1
    end
    EndFrame()
    if AA == 2 and AAObjective02 == 0 then
      SetObjectiveData(Objective.PowerGenerator00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PowerGenerator01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PowerGenerator02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      AAObjective02 = 1
    end
    EndFrame()
    if AA == 3 then
      SetObjectiveData(Objective.PowerGenerator00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PowerGenerator01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PowerGenerator02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PowerGenerator03, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.PowerGenerator03, constant.OBJECTIVE_DATA_STATE, 1)
      aatowers = 2
      break
    end
    EndFrame()
  end
end
