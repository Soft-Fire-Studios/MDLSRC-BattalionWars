function OBJECTIVE_DETAILS_AI_CONTROLLED_GRUNTS(owner)
  local grunt1dead = 0
  local grunt2dead = 0
  local grunt3dead = 0
  local grunt4dead = 0
  local grunt5dead = 0
  local grunt6dead = 0
  local grunt7dead = 0
  local grunt8dead = 0
  local grunt9dead = 0
  local grunt10dead = 0
  local gruntObjective1 = 0
  local gruntObjective2 = 0
  local gruntObjective3 = 0
  local gruntObjective4 = 0
  local gruntObjective5 = 0
  local gruntObjective6 = 0
  local gruntObjective7 = 0
  local gruntObjective8 = 0
  local gruntObjective9 = 0
  repeat
    EndFrame()
  until AIControlledGruntsBegun == true
  SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    if grunt1dead == 0 and IsDead(Troop.AIcontrolledgrunt1) then
      numgruntsdead = numgruntsdead + 1
      grunt1dead = 1
    end
    if grunt2dead == 0 and IsDead(Troop.AIcontrolledgrunt2) then
      numgruntsdead = numgruntsdead + 1
      grunt2dead = 1
    end
    if grunt3dead == 0 and IsDead(Troop.AIcontrolledgrunt3) then
      numgruntsdead = numgruntsdead + 1
      grunt3dead = 1
    end
    if grunt4dead == 0 and IsDead(Troop.AIcontrolledgrunt4) then
      numgruntsdead = numgruntsdead + 1
      grunt4dead = 1
    end
    if grunt5dead == 0 and IsDead(Troop.AIcontrolledgrunt5) then
      numgruntsdead = numgruntsdead + 1
      grunt5dead = 1
    end
    if grunt6dead == 0 and IsDead(Troop.AIcontrolledgrunt6) then
      numgruntsdead = numgruntsdead + 1
      grunt6dead = 1
    end
    if grunt7dead == 0 and IsDead(Troop.AIcontrolledgrunt7) then
      numgruntsdead = numgruntsdead + 1
      grunt7dead = 1
    end
    if grunt8dead == 0 and IsDead(Troop.AIcontrolledgrunt8) then
      numgruntsdead = numgruntsdead + 1
      grunt8dead = 1
    end
    if grunt9dead == 0 and IsDead(Troop.AIcontrolledgrunt9) then
      numgruntsdead = numgruntsdead + 1
      grunt9dead = 1
    end
    if grunt10dead == 0 and IsDead(Troop.AIcontrolledgrunt10) then
      numgruntsdead = numgruntsdead + 1
      grunt10dead = 1
    end
    if numgruntsdead == 1 and gruntObjective1 == 0 then
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 1)
      gruntObjective1 = 1
    end
    if numgruntsdead == 2 and gruntObjective2 == 0 then
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 1)
      gruntObjective2 = 1
    end
    if numgruntsdead == 3 and gruntObjective3 == 0 then
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt7, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(110, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      gruntObjective3 = 1
    end
    if numgruntsdead == 4 and gruntObjective4 == 0 then
      SetObjectiveData(Objective.AIGrunt7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt6, constant.OBJECTIVE_DATA_VISIBLE, 1)
      gruntObjective4 = 1
    end
    if numgruntsdead == 5 and gruntObjective5 == 0 then
      SetObjectiveData(Objective.AIGrunt6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt5, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(111, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      gruntObjective5 = 1
    end
    if numgruntsdead == 6 and gruntObjective6 == 0 then
      SetObjectiveData(Objective.AIGrunt5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt4, constant.OBJECTIVE_DATA_VISIBLE, 1)
      gruntObjective6 = 1
    end
    if numgruntsdead == 7 and gruntObjective7 == 0 then
      SetObjectiveData(Objective.AIGrunt4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      gruntObjective7 = 1
    end
    if numgruntsdead == 8 and gruntObjective8 == 0 then
      SetObjectiveData(Objective.AIGrunt3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      gruntObjective8 = 1
    end
    if numgruntsdead == 9 and gruntObjective9 == 0 then
      SetObjectiveData(Objective.AIGrunt2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(112, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      gruntObjective9 = 1
    end
    EndFrame()
    WaitFor(0.1)
  until CutsceneStatueTriggered == true
end
