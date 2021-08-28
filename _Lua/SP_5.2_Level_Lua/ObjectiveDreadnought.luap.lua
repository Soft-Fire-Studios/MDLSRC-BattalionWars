function ObjectiveDreadnought(owner)
  scriptObjectiveDreadnought = owner
  local numObjectives = 0
  local updateobjectives = 0
  local destroyableobjective1 = 0
  local destroyableobjective1name = Water_Vehicle.XDreadnought1
  local objective0 = Objective.CountDreadnought01
  local objective1 = Objective.CountDreadnought11
  repeat
    numObjectives = 0
    if IsDead(destroyableobjective1name) then
      if destroyableobjective1 == 0 then
        updateobjectives = 1
        destroyableobjective1 = 1
      end
      numObjectives = numObjectives + 1
    end
    if updateobjectives == 1 and numObjectives == 1 then
      SetObjectiveData(objective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(objective1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(objective1, constant.OBJECTIVE_DATA_STATE, 1)
      updateobjectives = 2
    end
    EndFrame()
  until updateobjectives == 2
  SetObjectiveData(objective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(objective1, constant.OBJECTIVE_DATA_STATE, 1)
  dreadnoughtobjective = 1
  SetObjectiveData(Objective_Marker.XDreadnought1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  if notincutscene == 0 then
    ClearMessageQueue()
    PhoneMessageWithObjective(30, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  end
end
