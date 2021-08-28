function s2_captureCheck(owner)
  local OneCapturePointTaken = 0
  local TwoCapturePointTaken = 0
  local ThreeCapturePointTaken = 0
  while true do
    if CapturePointsCaptured == 1 and OneCapturePointTaken == 0 then
      OneCapturePointTaken = 1
      SetObjectiveData(Objective.Primary_MiningBaseNone, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_MiningBaseNone, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_MiningBaseOne, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if CapturePointsCaptured == 2 and TwoCapturePointTaken == 0 then
      TwoCapturePointTaken = 1
      SetObjectiveData(Objective.Primary_MiningBaseOne, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_MiningBaseOne, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_MiningBaseTwo, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if CapturePointsCaptured == 3 and ThreeCapturePointTaken == 0 then
      ThreeCapturePointTaken = 1
      SetObjectiveData(Objective.Primary_MiningBaseTwo, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Primary_MiningBaseTwo, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Primary_MiningBaseThree, constant.OBJECTIVE_DATA_VISIBLE, 1)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
