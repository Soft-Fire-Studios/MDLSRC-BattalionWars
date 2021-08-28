function C3B_Secondary(owner)
  repeat
    EndFrame()
  until LevelState == 2
  local NumChange = 0
  local marker1 = 0
  local marker2 = 0
  local marker3 = 0
  local marker4 = 0
  local marker5 = 0
  local marker6 = 0
  local marker7 = 0
  SetObjectiveData(Objective_Marker.ObjAA1Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ObjAA1Marker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ObjAA1Marker3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ObjAA1Marker4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ObjAA1Marker5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ObjAA1Marker6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ObjAA1Marker7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  NumChange = 0
  repeat
    if IsDead(Ground_Vehicle.XAA1) and marker1 == 0 then
      SetObjectiveData(Objective_Marker.ObjAA1Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumAADead = NumAADead + 1
      marker1 = 1
      NumChange = 1
    end
    if IsDead(Ground_Vehicle.XAA2) and marker2 == 0 then
      SetObjectiveData(Objective_Marker.ObjAA1Marker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumAADead = NumAADead + 1
      marker2 = 1
      NumChange = 1
    end
    if IsDead(Ground_Vehicle.XAA3) and marker3 == 0 then
      SetObjectiveData(Objective_Marker.ObjAA1Marker3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumAADead = NumAADead + 1
      marker3 = 1
      NumChange = 1
    end
    if IsDead(Ground_Vehicle.XAA4) and marker4 == 0 then
      SetObjectiveData(Objective_Marker.ObjAA1Marker4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumAADead = NumAADead + 1
      marker4 = 1
      NumChange = 1
    end
    if IsDead(Ground_Vehicle.XAA5) and marker5 == 0 then
      SetObjectiveData(Objective_Marker.ObjAA1Marker5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumAADead = NumAADead + 1
      marker5 = 1
      NumChange = 1
    end
    if IsDead(Ground_Vehicle.XAA6) and marker6 == 0 then
      SetObjectiveData(Objective_Marker.ObjAA1Marker6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumAADead = NumAADead + 1
      marker6 = 1
      NumChange = 1
    end
    if IsDead(Ground_Vehicle.XAA7) and marker7 == 0 then
      SetObjectiveData(Objective_Marker.ObjAA1Marker7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumAADead = NumAADead + 1
      marker7 = 1
      NumChange = 1
    end
    if NumChange == 1 then
      if NumAADead == 1 then
        SetObjectiveData(Objective.AA_0of7, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.AA_1of7, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if NumAADead == 2 then
        SetObjectiveData(Objective.AA_1of7, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.AA_2of7, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if NumAADead == 3 then
        SetObjectiveData(Objective.AA_2of7, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.AA_3of7, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if NumAADead == 4 then
        SetObjectiveData(Objective.AA_3of7, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.AA_4of7, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if NumAADead == 5 then
        SetObjectiveData(Objective.AA_4of7, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.AA_5of7, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if NumAADead == 6 then
        SetObjectiveData(Objective.AA_5of7, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.AA_6of7, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if NumAADead == 7 then
        SetObjectiveData(Objective.AA_6of7, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.AA_7of7, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.AA_7of7, constant.OBJECTIVE_DATA_STATE, 1)
      end
      NumChange = 0
    end
    EndFrame()
  until NumAADead == 7
end
