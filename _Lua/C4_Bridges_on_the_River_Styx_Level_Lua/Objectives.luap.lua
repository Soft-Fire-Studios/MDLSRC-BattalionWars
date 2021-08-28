function Objectives(owner)
  repeat
    if missionfailed == 1 then
      return
    end
    EndFrame()
  until twoleft == 1
  SetObjectiveData(Objective.CapturedNone, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.CapturedNone, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.CapturedOne, constant.OBJECTIVE_DATA_VISIBLE, 1)
  DebugOut("First Capture Point Completed")
  repeat
    if missionfailed == 1 then
      return
    end
    EndFrame()
  until oneleft == 1
  SetObjectiveData(Objective.CapturedOne, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.CapturedOne, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.CapturedTwo, constant.OBJECTIVE_DATA_VISIBLE, 1)
  DebugOut("Second Capture Point Completed")
  repeat
    if missionfailed == 1 then
      return
    end
    EndFrame()
  until alldone == 1
  SetObjectiveData(Objective.CapturedTwo, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.CapturedTwo, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.CapturedAll, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.CapturedAll, constant.OBJECTIVE_DATA_STATE, 1)
  DebugOut("All Capture Points Completed")
  Kill(announcer)
  if ambushbeaten == 0 then
    SetObjectiveData(Objective.PitOfDeath, constant.OBJECTIVE_DATA_VISIBLE, 1)
    SetObjectiveData(Objective_Marker.PitOfDeath, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  end
  DebugOut("Pit Of Death Objective active")
  repeat
    if missionfailed == 1 then
      return
    end
    EndFrame()
  until playerinambush == 1 or ambushbeaten == 1
  DebugOut("Pit Of Death Objective completed")
  repeat
    EndFrame()
  until playerinambush == victory
  SetObjectiveData(Objective.PitOfDeath, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.PoD01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Exit, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Exit, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
end
