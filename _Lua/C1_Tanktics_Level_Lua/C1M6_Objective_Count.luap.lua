function C1M6_Objective_Count(owner)
  local OneDone = 0
  local TwoDone = 0
  local ThreeDone = 0
  local FourDone = 0
  local FiveDone = 0
  local SixDone = 0
  local SevenDone = 0
  local EightDone = 0
  while true do
    if C1M1_TanksDestroyed == 1 and OneDone == 0 then
      OneDone = 1
      SetObjectiveData(Objective.Primary_Zero_Tanks, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_Zero_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_One_Tank, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if C1M1_TanksDestroyed == 2 and TwoDone == 0 then
      TwoDone = 1
      SetObjectiveData(Objective.Primary_One_Tank, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_One_Tank, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_Two_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if C1M1_TanksDestroyed == 3 and ThreeDone == 0 then
      ThreeDone = 1
      SetObjectiveData(Objective.Primary_Two_Tanks, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_Two_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_Three_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if C1M1_TanksDestroyed == 4 and FourDone == 0 then
      FourDone = 1
      SetObjectiveData(Objective.Primary_Three_Tanks, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_Three_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_Four_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if C1M1_TanksDestroyed == 5 and FiveDone == 0 then
      FiveDone = 1
      SetObjectiveData(Objective.Primary_Four_Tanks, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_Four_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_Five_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if C1M1_TanksDestroyed == 6 and SixDone == 0 then
      SixDone = 1
      SetObjectiveData(Objective.Primary_Five_Tanks, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_Five_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_Six_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if C1M1_TanksDestroyed == 7 and SevenDone == 0 then
      SevenDone = 1
      SetObjectiveData(Objective.Primary_Six_Tanks, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_Six_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_Seven_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if C1M1_TanksDestroyed == 8 and EightDone == 0 then
      EightDone = 1
      SetObjectiveData(Objective.Primary_Seven_Tanks, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_Seven_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_Eight_Tanks, constant.OBJECTIVE_DATA_VISIBLE, 1)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
