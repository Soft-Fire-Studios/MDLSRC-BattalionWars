function C1Bonus_WFgrunt_Objective(owner)
  local WFgrunt0001IsDead = 0
  local WFgrunt0002IsDead = 0
  local WFgrunt0003IsDead = 0
  local WFgrunt0004IsDead = 0
  local WFgrunt0005IsDead = 0
  local WFgrunt0006IsDead = 0
  local WFgrunt0007IsDead = 0
  local WFgrunt0008IsDead = 0
  local WFgrunt0009IsDead = 0
  local WFgrunt0010IsDead = 0
  local WFgruntDeadCount = 0
  local WFgruntOneRemainingMessageDone = 0
  local WFgruntObjective01 = 0
  local WFgruntObjective02 = 0
  local WFgruntObjective03 = 0
  local WFgruntObjective04 = 0
  local WFgruntObjective05 = 0
  local WFgruntObjective06 = 0
  local WFgruntObjective07 = 0
  local WFgruntObjective08 = 0
  local WFgruntObjective09 = 0
  local WFgruntObjective10 = 0
  while true do
    if IsDead(Troop.WFgrunt0001) and IsDead(Troop.WFgrunt0002) and IsDead(Troop.WFgrunt0003) and IsDead(Troop.WFgrunt0004) and IsDead(Troop.WFgrunt0005) and IsDead(Troop.WFgrunt0006) and IsDead(Troop.WFgrunt0007) and IsDead(Troop.WFgrunt0008) and IsDead(Troop.WFgrunt0009) and IsDead(Troop.WFgrunt0010) and AllGruntDead == 0 then
      AllGruntDead = 1
      WaitFor(1)
      DebugOut("all WF grunt men have been killed")
      SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_10, constant.OBJECTIVE_DATA_STATE, 1)
      PhoneMessage(29, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
    end
    if WFgruntDeadCount == 10 and AllGruntDead == 0 then
      AllGruntDead = 1
      WaitFor(1)
      DebugOut("all WF grunt men have been killed")
      SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_10, constant.OBJECTIVE_DATA_STATE, 1)
      PhoneMessage(29, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
    end
    if WFgruntDeadCount == 1 and WFgruntObjective01 == 0 then
      WFgruntObjective01 = 1
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFgruntDeadCount == 2 and WFgruntObjective02 == 0 then
      WFgruntObjective02 = 1
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFgruntDeadCount == 3 and WFgruntObjective03 == 0 then
      WFgruntObjective03 = 1
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFgruntDeadCount == 4 and WFgruntObjective04 == 0 then
      WFgruntObjective04 = 1
      SetObjectiveData(Objective.Fortress_3, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_4, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFgruntDeadCount == 5 and WFgruntObjective05 == 0 then
      WFgruntObjective05 = 1
      SetObjectiveData(Objective.Fortress_4, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_5, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFgruntDeadCount == 6 and WFgruntObjective06 == 0 then
      WFgruntObjective06 = 1
      SetObjectiveData(Objective.Fortress_5, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_6, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFgruntDeadCount == 7 and WFgruntObjective07 == 0 then
      WFgruntObjective07 = 1
      SetObjectiveData(Objective.Fortress_6, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_7, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFgruntDeadCount == 8 and WFgruntObjective08 == 0 then
      WFgruntObjective08 = 1
      SetObjectiveData(Objective.Fortress_7, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_8, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFgruntDeadCount == 9 and WFgruntObjective09 == 0 then
      WFgruntObjective09 = 1
      SetObjectiveData(Objective.Fortress_8, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_9, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFgruntDeadCount == 10 and WFgruntObjective10 == 0 then
      WFgruntObjective10 = 1
      SetObjectiveData(Objective.Fortress_9, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Fortress_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fortress_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if IsDead(Troop.WFgrunt0001) and WFgrunt0001IsDead == 0 then
      WFgrunt0001IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if IsDead(Troop.WFgrunt0002) and WFgrunt0002IsDead == 0 then
      WFgrunt0002IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if IsDead(Troop.WFgrunt0003) and WFgrunt0003IsDead == 0 then
      WFgrunt0003IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if IsDead(Troop.WFgrunt0004) and WFgrunt0004IsDead == 0 then
      WFgrunt0004IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if IsDead(Troop.WFgrunt0005) and WFgrunt0005IsDead == 0 then
      WFgrunt0005IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if IsDead(Troop.WFgrunt0006) and WFgrunt0006IsDead == 0 then
      WFgrunt0006IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if IsDead(Troop.WFgrunt0007) and WFgrunt0007IsDead == 0 then
      WFgrunt0007IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if IsDead(Troop.WFgrunt0008) and WFgrunt0008IsDead == 0 then
      WFgrunt0008IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if IsDead(Troop.WFgrunt0009) and WFgrunt0009IsDead == 0 then
      WFgrunt0009IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if IsDead(Troop.WFgrunt0010) and WFgrunt0010IsDead == 0 then
      WFgrunt0010IsDead = 1
      WFgruntDeadCount = WFgruntDeadCount + 1
      DebugOut("Number of WF grunts dead = ", WFgruntDeadCount)
    end
    if WFgruntDeadCount == 9 and WFgruntOneRemainingMessageDone == 0 then
      PhoneMessage(34, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
      WFgruntOneRemainingMessageDone = 1
      if not IsDead(Troop.WFgrunt0001) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0001)
      end
      if not IsDead(Troop.WFgrunt0002) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0002)
      end
      if not IsDead(Troop.WFgrunt0003) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0003)
      end
      if not IsDead(Troop.WFgrunt0004) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0004)
      end
      if not IsDead(Troop.WFgrunt0005) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0005)
      end
      if not IsDead(Troop.WFgrunt0006) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0006)
      end
      if not IsDead(Troop.WFgrunt0007) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0007)
      end
      if not IsDead(Troop.WFgrunt0008) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0008)
      end
      if not IsDead(Troop.WFgrunt0009) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0009)
      end
      if not IsDead(Troop.WFgrunt0010) then
        SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFgrunt0010)
      end
      SetObjectiveData(Objective_Marker.Grunt_Objective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    EndFrame()
  end
  EndFrame()
  return
end
