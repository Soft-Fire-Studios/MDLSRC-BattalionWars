function ObjectiveBattleship(owner)
  scriptObjectiveBattleship = owner
  local numObjectives = 0
  local updateobjectives = 0
  local destroyableobjective1 = 0
  local destroyableobjective2 = 0
  local destroyableobjective3 = 0
  local destroyableobjective4 = 0
  local destroyableobjective5 = 0
  local destroyableobjective6 = 0
  local destroyableobjective1name = Water_Vehicle.Battleship1
  local destroyableobjective2name = Water_Vehicle.Battleship2
  local destroyableobjective3name = Water_Vehicle.Battleship4
  local destroyableobjective4name = Water_Vehicle.Battleship5
  local destroyableobjective5name = Water_Vehicle.Battleship6
  local destroyableobjective6name = Water_Vehicle.Battleship7
  local objective0 = Objective.CountBattleships07
  local objective1 = Objective.CountBattleships17
  local objective2 = Objective.CountBattleships27
  local objective3 = Objective.CountBattleships37
  local objective4 = Objective.CountBattleships47
  local objective5 = Objective.CountBattleships57
  local objective6 = Objective.CountBattleships67
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
    if IsDead(destroyableobjective4name) then
      if destroyableobjective4 == 0 then
        updateobjectives = 1
        destroyableobjective4 = 1
      end
      numObjectives = numObjectives + 1
    end
    if IsDead(destroyableobjective5name) then
      if destroyableobjective5 == 0 then
        updateobjectives = 1
        destroyableobjective5 = 1
      end
      numObjectives = numObjectives + 1
    end
    if IsDead(destroyableobjective6name) then
      if destroyableobjective6 == 0 then
        updateobjectives = 1
        destroyableobjective6 = 1
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
        DebugOut("Objective destroyed")
        updateobjectives = 0
      elseif numObjectives == 4 then
        SetObjectiveData(objective3, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(objective4, constant.OBJECTIVE_DATA_VISIBLE, 1)
        DebugOut("Objective destroyed")
        updateobjectives = 0
      elseif numObjectives == 5 then
        SetObjectiveData(objective4, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(objective5, constant.OBJECTIVE_DATA_VISIBLE, 1)
        DebugOut("Objective destroyed")
        updateobjectives = 0
      elseif numObjectives == 6 then
        SetObjectiveData(objective5, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(objective6, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(objective6, constant.OBJECTIVE_DATA_STATE, 1)
        updateobjectives = 2
      end
    end
    EndFrame()
  until updateobjectives == 2
  SetObjectiveData(objective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective1, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective2, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective3, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective4, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective5, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective6, constant.OBJECTIVE_DATA_STATE, 1)
  battleshipobjective = 1
  WaitFor(0.5)
  if notincutscene == 0 then
    ClearMessageQueue()
    PhoneMessageWithObjective(3, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
    PhoneMessage(4, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
  end
end
