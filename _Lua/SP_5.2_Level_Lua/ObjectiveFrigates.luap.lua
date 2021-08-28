function ObjectiveFrigates(owner)
  scriptObjectiveFrigates = owner
  local numObjectives = 0
  local updateobjectives = 0
  local destroyableobjective1 = 0
  local destroyableobjective2 = 0
  local destroyableobjective3 = 0
  local destroyableobjective1name = Water_Vehicle.Frigate1
  local destroyableobjective2name = Water_Vehicle.Frigate2
  local destroyableobjective3name = Water_Vehicle.Frigate3
  local objective0 = Objective.CountFrigate03
  local objective1 = Objective.CountFrigate13
  local objective2 = Objective.CountFrigate23
  local objective3 = Objective.CountFrigate33
  repeat
    numObjectives = 0
    if IsDead(destroyableobjective1name) then
      if destroyableobjective1 == 0 then
        updateobjectives = 1
        destroyableobjective1 = 1
      end
      numObjectives = numObjectives + 1
    end
    if IsDead(destroyableobjective2name) then
      if destroyableobjective2 == 0 then
        updateobjectives = 1
        destroyableobjective2 = 1
      end
      numObjectives = numObjectives + 1
    end
    if IsDead(destroyableobjective3name) then
      if destroyableobjective3 == 0 then
        updateobjectives = 1
        destroyableobjective3 = 1
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
        DebugOut("Objective destroyed")
        updateobjectives = 0
      elseif numObjectives == 3 then
        SetObjectiveData(objective2, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(objective3, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(objective3, constant.OBJECTIVE_DATA_STATE, 1)
        updateobjectives = 2
      end
    end
    EndFrame()
  until updateobjectives == 2
  SetObjectiveData(objective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective1, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective2, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective3, constant.OBJECTIVE_DATA_STATE, 1)
  frigateobjective = 1
  if notincutscene == 0 then
    ClearMessageQueue()
    PhoneMessageWithObjective(5, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  end
end
