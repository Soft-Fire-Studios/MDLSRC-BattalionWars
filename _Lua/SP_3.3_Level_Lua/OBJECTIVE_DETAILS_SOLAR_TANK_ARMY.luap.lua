function OBJECTIVE_DETAILS_SOLAR_TANK_ARMY(owner)
  local tank1dead = 0
  local tank2dead = 0
  local tank3dead = 0
  local tank4dead = 0
  local numtankdead = 0
  local Tank1objective = 0
  local Tank2objective = 0
  local Tank3objective = 0
  local Tank4objective = 0
  repeat
    EndFrame()
  until SolarTankArmyOrdered == true
  SetObjectiveData(Objective_Marker.SEtank1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SEtank2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SEtank3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SEtank4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    if tank1dead == 0 and IsDead(Ground_Vehicle.SEltankA1) then
      SetObjectiveData(Objective_Marker.SEtank1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      numtankdead = numtankdead + 1
      tank1dead = 1
    end
    EndFrame()
    if tank2dead == 0 and IsDead(Ground_Vehicle.SEltankA2) then
      SetObjectiveData(Objective_Marker.SEtank2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      numtankdead = numtankdead + 1
      tank2dead = 1
    end
    EndFrame()
    if tank3dead == 0 and IsDead(Ground_Vehicle.SEltankA3) then
      SetObjectiveData(Objective_Marker.SEtank3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      numtankdead = numtankdead + 1
      tank3dead = 1
    end
    EndFrame()
    if tank4dead == 0 and IsDead(Ground_Vehicle.SEltankA4) then
      SetObjectiveData(Objective_Marker.SEtank4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      numtankdead = numtankdead + 1
      tank4dead = 1
    end
    EndFrame()
    if numtankdead == 1 and Tank1objective == 0 then
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      Tank1objective = 1
    end
    EndFrame()
    if numtankdead == 2 and Tank2objective == 0 then
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      Tank2objective = 1
    end
    EndFrame()
    if numtankdead == 3 and Tank3objective == 0 then
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks2, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      Tank3objective = 1
    end
    EndFrame()
    if numtankdead == 4 and Tank4objective == 0 then
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks2, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks3, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SEtanks3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEtanks4, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.SEtanks4, constant.OBJECTIVE_DATA_STATE, 1)
      Tank4objective = 1
      PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      TanksDead = true
    end
    EndFrame()
    WaitFor(0.1)
  until TanksDead == true or missionover == 1
  WaitFor(2)
  EndFrame()
  if TanksDead == true and TanksDeadMessage == false and DreadnoughtTime == false then
    PhoneMessageWithObjective(127, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  end
  EndFrame()
end
