function AAObjectives(owner)
  local loop = 0
  while loop == 0 do
    if aasites == 1 then
      SetObjectiveData(Objective.AA_Sites, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AA_Units_1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      PhoneMessage(44, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(45, constant.ID_NONE, 1, 6, SpriteID.CO_X_Ubel_Sad)
      loop = 1
    end
    EndFrame()
  end
  EndFrame()
  while loop == 1 do
    if aasites == 2 then
      SetObjectiveData(Objective.AA_Units_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AA_Units_2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      PhoneMessage(46, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      loop = 2
      EndFrame()
    end
    EndFrame()
  end
  while loop == 2 do
    if aasites == 3 then
      SetObjectiveData(Objective.AA_Units_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AA_Units_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      PhoneMessage(48, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(49, constant.ID_NONE, 1, 6, SpriteID.CO_X_Ubel_Sad)
      PhoneMessage(50, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad)
      loop = 3
      EndFrame()
    end
    EndFrame()
  end
  while loop == 3 do
    if aasites == 4 then
      SetObjectiveData(Objective.AA_Units_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AA_Units_4, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      PhoneMessage(55, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      loop = 4
      EndFrame()
    end
    EndFrame()
  end
  while loop == 4 do
    if aasites == 5 then
      SetObjectiveData(Objective.AA_Units_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AA_Units_5, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      loop = 5
      EndFrame()
    end
    EndFrame()
  end
  EndFrame()
end
