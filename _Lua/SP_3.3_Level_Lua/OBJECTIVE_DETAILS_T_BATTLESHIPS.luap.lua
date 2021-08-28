function OBJECTIVE_DETAILS_T_BATTLESHIPS(owner)
  local battleship1dead = 0
  local battleship2dead = 0
  local battleship3dead = 0
  local battleship4dead = 0
  local numbattleshipsdead = 0
  local Battleship1objective = 0
  local Battleship2objective = 0
  local Battleship3objective = 0
  local Battleship4objective = 0
  repeat
    EndFrame()
  until BattleshipOrder1 == true
  SetObjectiveData(Objective_Marker.battleship1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.battleship2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.battleship3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.battleship4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.destroybattleship0, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    if battleship1dead == 0 and IsDead(Water_Vehicle.TBattleship1) then
      numbattleshipsdead = numbattleshipsdead + 1
      SetObjectiveData(Objective_Marker.battleship1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      battleship1dead = 1
    end
    if battleship2dead == 0 and IsDead(Water_Vehicle.TBattleship2) then
      numbattleshipsdead = numbattleshipsdead + 1
      SetObjectiveData(Objective_Marker.battleship2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      battleship2dead = 1
    end
    if battleship3dead == 0 and IsDead(Water_Vehicle.TBattleship3) then
      numbattleshipsdead = numbattleshipsdead + 1
      SetObjectiveData(Objective_Marker.battleship3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      battleship3dead = 1
    end
    if battleship4dead == 0 and IsDead(Water_Vehicle.TBattleship4) then
      numbattleshipsdead = numbattleshipsdead + 1
      SetObjectiveData(Objective_Marker.battleship4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      battleship4dead = 1
    end
    if numbattleshipsdead == 1 and Battleship1objective == 0 then
      SetObjectiveData(Objective.destroybattleship0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      Battleship1objective = 1
    end
    if numbattleshipsdead == 2 and Battleship2objective == 0 then
      SetObjectiveData(Objective.destroybattleship0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      Battleship2objective = 1
    end
    if numbattleshipsdead == 3 and Battleship3objective == 0 then
      SetObjectiveData(Objective.destroybattleship0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship2, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      Battleship3objective = 1
    end
    if numbattleshipsdead == 4 and Battleship4objective == 0 then
      SetObjectiveData(Objective.destroybattleship0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship2, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship3, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.destroybattleship3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.destroybattleship4, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.destroybattleship4, constant.OBJECTIVE_DATA_STATE, 1)
      Battleship4objective = 1
      PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      battleshipsdead = true
    end
    EndFrame()
    WaitFor(0.1)
  until missionover == 1 or battleshipsdead == true
  WaitFor(2)
  EndFrame()
  if battleshipsdead == true and BattleshipsDeadMessage == false and DreadnoughtTime == false then
    PhoneMessageWithObjective(128, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  end
  EndFrame()
end
