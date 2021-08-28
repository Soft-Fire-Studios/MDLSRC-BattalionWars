function Naval_Cannon_Desertion(owner)
  local tower1dead = false
  local tower1warninggiven = false
  local marker1off = false
  local marker2off = false
  local objectivechanged = 0
  local totalgunsdead = 0
  repeat
    EndFrame()
  until GuardTutorialEnd == true
  repeat
    if IsDead(Building.NavalCannon1) == true and marker1off == false then
      SetObjectiveData(Objective_Marker.DefendSEcannon1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      totalgunsdead = totalgunsdead + 1
      marker1off = true
    end
    EndFrame()
    if IsDead(Building.NavalCannon2) == true and marker2off == false then
      SetObjectiveData(Objective_Marker.DefendSEcannon2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      totalgunsdead = totalgunsdead + 1
      marker2off = true
    end
    EndFrame()
    if totalgunsdead == 1 and objectivechanged == 0 then
      SetObjectiveData(Objective.DefendSEcannons, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSEcannons1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      objectivechanged = 1
    end
    EndFrame()
    if totalgunsdead == 2 and objectivechanged == 1 then
      SetObjectiveData(Objective.DefendSEcannons1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      objectivechanged = 2
    end
    EndFrame()
    if tower1warninggiven == false and IsInArea(GetPlayerUnit(), Map_Zone.Destroy1) == false then
      PhoneMessage(22, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      tower1warninggiven = true
    end
    EndFrame()
    EndFrame()
  until MidCutsceneDocksSetup == 1
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.ShowBaseWaypoint02)
  SetObjectiveData(Objective_Marker.BaseWaypoint01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.BaseWaypoint02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.ShowBaseWaypoint03)
  SetObjectiveData(Objective_Marker.BaseWaypoint02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.BaseWaypoint03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.TriggerHelipadCutscene)
  SetObjectiveData(Objective_Marker.BaseWaypoint03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.BaseWaypoint04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.ShowPortBaseObjective)
  SetObjectiveData(Objective_Marker.BaseWaypoint04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.RecaptureBase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
end
