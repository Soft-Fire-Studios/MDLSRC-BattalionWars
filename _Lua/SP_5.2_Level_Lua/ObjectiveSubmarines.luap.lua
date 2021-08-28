function ObjectiveSubmarines(owner)
  scriptObjectiveSubmarines = owner
  local numObjectives = 0
  local updateobjectives = 0
  local destroyableobjective1 = 0
  local destroyableobjective2 = 0
  local destroyableobjective3 = 0
  local destroyableobjective4 = 0
  local destroyableobjective5 = 0
  local destroyableobjective6 = 0
  local destroyableobjective7 = 0
  local destroyableobjective1name = Water_Vehicle.Submarine1
  local destroyableobjective2name = Water_Vehicle.Submarine2
  local destroyableobjective3name = Water_Vehicle.Submarine3
  local destroyableobjective4name = Water_Vehicle.Submarine4
  local destroyableobjective5name = Water_Vehicle.Submarine5
  local destroyableobjective6name = Water_Vehicle.Submarine6
  local destroyableobjective7name = Water_Vehicle.Submarine7
  local objective0 = Objective.CountSubmarines07
  local objective1 = Objective.CountSubmarines17
  local objective2 = Objective.CountSubmarines27
  local objective3 = Objective.CountSubmarines37
  local objective4 = Objective.CountSubmarines47
  local objective5 = Objective.CountSubmarines57
  local objective6 = Objective.CountSubmarines67
  local objective7 = Objective.CountSubmarines77
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
    if IsDead(destroyableobjective7name) then
      if destroyableobjective7 == 0 then
        updateobjectives = 1
        destroyableobjective7 = 1
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
        DebugOut("Objective destroyed")
        updateobjectives = 0
      elseif numObjectives == 7 then
        SetObjectiveData(objective6, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(objective7, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(objective7, constant.OBJECTIVE_DATA_STATE, 1)
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
  SetObjectiveData(objective6, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective7, constant.OBJECTIVE_DATA_STATE, 1)
  submarineobjective = 1
  WaitFor(0.5)
  if notincutscene == 0 then
    ClearMessageQueue()
    PhoneMessageWithObjective(1, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  end
  if 2 > GunshipPatrol then
    GunshipPatrol = 2
  end
  FollowWaypoint(Air_Vehicle.XGunship1, Waypoint.GunshipPatrol3, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Air_Vehicle.XGunship2, Waypoint.GunshipPatrol3, 0, 0, constant.ORDER_NORMAL)
end
