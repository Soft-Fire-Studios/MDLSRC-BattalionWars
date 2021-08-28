function C1M1_Tutorial02(owner)
  Tutorial02script = owner
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.SpyRun0001) then
      C1M1_Global_Variable = 2
      DebugOut("C1M1 Global Variable = ", C1M1_Global_Variable)
      SetObjectiveData(Objective_Marker.ObjectiveOne, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Move, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.FindSpy, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      PhoneMessage(175, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      C1M1_Global_Variable = 4
      DebugOut("C1M1 Global Variable = ", C1M1_Global_Variable)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
