function C1Bonus_WFheavyTank_Objective(owner)
  local WFheavyTank0001IsDead = 0
  local WFheavyTank0002IsDead = 0
  local WFheavyTank0003IsDead = 0
  local WFheavyTank0004IsDead = 0
  local WFheavyTank0005IsDead = 0
  local WFheavyTank0006IsDead = 0
  local WFheavyTank0007IsDead = 0
  local WFheavyTank0008IsDead = 0
  local WFheavyTankDeadCount = 0
  local WFheavyTankOneRemainingMessageDone = 0
  local WFheavyTankObjective01 = 0
  local WFheavyTankObjective02 = 0
  local WFheavyTankObjective03 = 0
  local WFheavyTankObjective04 = 0
  local WFheavyTankObjective05 = 0
  local WFheavyTankObjective06 = 0
  local WFheavyTankObjective07 = 0
  local WFheavyTankObjective08 = 0
  while true do
    if IsDead(Ground_Vehicle.WFheavyTank0001) and IsDead(Ground_Vehicle.WFheavyTank0002) and IsDead(Ground_Vehicle.WFheavyTank0003) and IsDead(Ground_Vehicle.WFheavyTank0004) and IsDead(Ground_Vehicle.WFheavyTank0005) and IsDead(Ground_Vehicle.WFheavyTank0006) and IsDead(Ground_Vehicle.WFheavyTank0007) and IsDead(Ground_Vehicle.WFheavyTank0008) and AllHeavyTankDead == 0 then
      AllHeavyTankDead = 1
      WaitFor(1)
      DebugOut("all WF Heavy Tanks have been killed")
      SetObjectiveData(Objective.Heavy_Tanks_8, constant.OBJECTIVE_DATA_STATE, 1)
      PhoneMessage(28, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
    end
    if WFheavyTankDeadCount == 8 and AllHeavyTankDead == 0 then
      AllHeavyTankDead = 1
      WaitFor(1)
      DebugOut("all WF Heavy Tanks have been killed")
      SetObjectiveData(Objective.Heavy_Tanks_8, constant.OBJECTIVE_DATA_STATE, 1)
      PhoneMessage(28, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
    end
    if WFheavyTankDeadCount == 1 and WFheavyTankObjective01 == 0 then
      WFheavyTankObjective01 = 1
      SetObjectiveData(Objective.Heavy_Tanks_0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Heavy_Tanks_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_1, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFheavyTankDeadCount == 2 and WFheavyTankObjective02 == 0 then
      WFheavyTankObjective02 = 1
      SetObjectiveData(Objective.Heavy_Tanks_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Heavy_Tanks_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_2, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFheavyTankDeadCount == 3 and WFheavyTankObjective03 == 0 then
      WFheavyTankObjective03 = 1
      SetObjectiveData(Objective.Heavy_Tanks_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_2, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Heavy_Tanks_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFheavyTankDeadCount == 4 and WFheavyTankObjective04 == 0 then
      WFheavyTankObjective04 = 1
      SetObjectiveData(Objective.Heavy_Tanks_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_3, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Heavy_Tanks_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_4, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFheavyTankDeadCount == 5 and WFheavyTankObjective05 == 0 then
      WFheavyTankObjective05 = 1
      SetObjectiveData(Objective.Heavy_Tanks_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_4, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Heavy_Tanks_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_5, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFheavyTankDeadCount == 6 and WFheavyTankObjective06 == 0 then
      WFheavyTankObjective06 = 1
      SetObjectiveData(Objective.Heavy_Tanks_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_5, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Heavy_Tanks_5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_6, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFheavyTankDeadCount == 7 and WFheavyTankObjective07 == 0 then
      WFheavyTankObjective07 = 1
      SetObjectiveData(Objective.Heavy_Tanks_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_6, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Heavy_Tanks_6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_7, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFheavyTankDeadCount == 8 and WFheavyTankObjective08 == 0 then
      WFheavyTankObjective08 = 1
      SetObjectiveData(Objective.Heavy_Tanks_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_7, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Heavy_Tanks_7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Heavy_Tanks_8, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if IsDead(Ground_Vehicle.WFheavyTank0001) and WFheavyTank0001IsDead == 0 then
      WFheavyTank0001IsDead = 1
      WFheavyTankDeadCount = WFheavyTankDeadCount + 1
      DebugOut("Number of WF heavy tanks dead = ", WFheavyTankDeadCount)
      SetObjectiveData(Objective_Marker.TankObjective0001, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.WFheavyTank0002) and WFheavyTank0002IsDead == 0 then
      WFheavyTank0002IsDead = 1
      WFheavyTankDeadCount = WFheavyTankDeadCount + 1
      DebugOut("Number of WF heavy tanks dead = ", WFheavyTankDeadCount)
      SetObjectiveData(Objective_Marker.TankObjective0002, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.WFheavyTank0003) and WFheavyTank0003IsDead == 0 then
      WFheavyTank0003IsDead = 1
      WFheavyTankDeadCount = WFheavyTankDeadCount + 1
      DebugOut("Number of WF heavy tanks dead = ", WFheavyTankDeadCount)
      SetObjectiveData(Objective_Marker.TankObjective0003, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.WFheavyTank0004) and WFheavyTank0004IsDead == 0 then
      WFheavyTank0004IsDead = 1
      WFheavyTankDeadCount = WFheavyTankDeadCount + 1
      DebugOut("Number of WF heavy tanks dead = ", WFheavyTankDeadCount)
      SetObjectiveData(Objective_Marker.TankObjective0004, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.WFheavyTank0005) and WFheavyTank0005IsDead == 0 then
      WFheavyTank0005IsDead = 1
      WFheavyTankDeadCount = WFheavyTankDeadCount + 1
      DebugOut("Number of WF heavy tanks dead = ", WFheavyTankDeadCount)
      SetObjectiveData(Objective_Marker.TankObjective0005, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.WFheavyTank0006) and WFheavyTank0006IsDead == 0 then
      WFheavyTank0006IsDead = 1
      WFheavyTankDeadCount = WFheavyTankDeadCount + 1
      DebugOut("Number of WF heavy tanks dead = ", WFheavyTankDeadCount)
      SetObjectiveData(Objective_Marker.TankObjective0006, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.WFheavyTank0007) and WFheavyTank0007IsDead == 0 then
      WFheavyTank0007IsDead = 1
      WFheavyTankDeadCount = WFheavyTankDeadCount + 1
      DebugOut("Number of WF heavy tanks dead = ", WFheavyTankDeadCount)
      SetObjectiveData(Objective_Marker.TankObjective0007, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.WFheavyTank0008) and WFheavyTank0008IsDead == 0 then
      WFheavyTank0008IsDead = 1
      WFheavyTankDeadCount = WFheavyTankDeadCount + 1
      DebugOut("Number of WF heavy tanks dead = ", WFheavyTankDeadCount)
      SetObjectiveData(Objective_Marker.TankObjective0008, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if WFheavyTankDeadCount == 7 and WFheavyTankOneRemainingMessageDone == 0 then
      PhoneMessage(33, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
      WFheavyTankOneRemainingMessageDone = 1
    end
    EndFrame()
  end
  EndFrame()
  return
end
