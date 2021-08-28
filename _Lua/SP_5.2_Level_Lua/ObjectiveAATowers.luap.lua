function ObjectiveAATowers(owner)
  scriptObjectiveFrigates = owner
  local numObjectives = 0
  local updateobjectives = 0
  local destroyableobjective1 = 0
  local destroyableobjective2 = 0
  local destroyableobjective1name = Building.ScatteredAATower4
  local destroyableobjective2name = Building.ScatteredAATower5
  local objective0 = Objective.CountAATowers02
  local objective1 = Objective.CountAATowers12
  local objective2 = Objective.CountAATowers22
  repeat
    numObjectives = 0
    if IsDead(destroyableobjective1name) then
      if destroyableobjective1 == 0 then
        SetObjectiveData(Objective_Marker.AATower1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        updateobjectives = 1
        destroyableobjective1 = 1
      end
      numObjectives = numObjectives + 1
    end
    if IsDead(destroyableobjective2name) then
      if destroyableobjective2 == 0 then
        SetObjectiveData(Objective_Marker.AATower2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        updateobjectives = 1
        destroyableobjective2 = 1
      end
      numObjectives = numObjectives + 1
    end
    if updateobjectives == 1 then
      if numObjectives == 1 then
        SetObjectiveData(objective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(objective1, constant.OBJECTIVE_DATA_VISIBLE, 1)
        DebugOut("Objective destroyed")
        updateobjectives = 0
      elseif numObjectives == 2 then
        SetObjectiveData(objective1, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(objective2, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(objective2, constant.OBJECTIVE_DATA_STATE, 1)
        updateobjectives = 2
      end
    end
    EndFrame()
  until updateobjectives == 2
  SetObjectiveData(objective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective1, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective2, constant.OBJECTIVE_DATA_STATE, 1)
  towersdestroyed = 1
  WaitFor(0.2)
  if helipadcaptured == 0 and notincutscene == 0 then
    ClearMessageQueue()
    PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  end
end
