function CountRockets(owner)
  scriptCountRockets = owner
  local numObjectives = 0
  local updateobjectives = 0
  local destroyableobjective1 = 0
  local destroyableobjective2 = 0
  local destroyableobjective3 = 0
  local destroyableobjective1name = Building.OuterIslandRockets
  local destroyableobjective2name = Building.RuinsRockets
  local destroyableobjective3name = Building.TopHillRockets
  local objectivemarker1name = Objective_Marker.BottomHillRockets
  local objectivemarker2name = Objective_Marker.RuinsRockets
  local objectivemarker3name = Objective_Marker.TopHillRockets
  repeat
    numObjectives = 0
    if IsDead(destroyableobjective1name) then
      if destroyableobjective1 == 0 then
        SetObjectiveData(objectivemarker1name, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        updateobjectives = 1
        destroyableobjective1 = 1
      end
      numObjectives = numObjectives + 1
    end
    if IsDead(destroyableobjective2name) then
      if destroyableobjective2 == 0 then
        SetObjectiveData(objectivemarker2name, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        updateobjectives = 1
        destroyableobjective2 = 1
      end
      numObjectives = numObjectives + 1
    end
    if IsDead(destroyableobjective3name) then
      if destroyableobjective3 == 0 then
        SetObjectiveData(objectivemarker3name, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        updateobjectives = 1
        destroyableobjective3 = 1
      end
      numObjectives = numObjectives + 1
    end
    if updateobjectives == 1 then
      if numObjectives == 1 then
        SetObjectiveData(Objective.RocketObjective03, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RocketObjective13, constant.OBJECTIVE_DATA_VISIBLE, 1)
        DebugOut("One Missile destroyed")
        updateobjectives = 0
      elseif numObjectives == 2 then
        SetObjectiveData(Objective.RocketObjective13, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RocketObjective23, constant.OBJECTIVE_DATA_VISIBLE, 1)
        DebugOut("Two Missiles destroyed")
        updateobjectives = 0
      elseif numObjectives == 3 then
        SetObjectiveData(Objective.RocketObjective23, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RocketObjective33, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RocketObjective33, constant.OBJECTIVE_DATA_STATE, 1)
        updateobjectives = 2
      end
    end
    EndFrame()
  until updateobjectives == 2
end
