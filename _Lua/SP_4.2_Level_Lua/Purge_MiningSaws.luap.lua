function Purge_MiningSaws(owner)
  repeat
    EndFrame()
  until cutsceneshowforcefieldend == 1
  SetObjectiveData(Objective_Marker.Mine, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Saw01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Saw02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Saw03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  local Saw01 = 0
  local Saw02 = 0
  local Saw03 = 0
  local SawCount = 3
  local SawCount3Done = 0
  local SawCount2Done = 0
  local SawCount1Done = 0
  local SawCount0Done = 0
  while true do
    if Saw01 == 0 and IsDead(Building.Saw01) then
      Saw01 = 1
      SawCount = SawCount - 1
      DebugOut("Remaining Saws = ", SawCount)
      SetObjectiveData(Objective_Marker.Saw01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if Saw02 == 0 and IsDead(Building.Saw02) then
      Saw02 = 1
      SawCount = SawCount - 1
      DebugOut("Remaining Saws = ", SawCount)
      SetObjectiveData(Objective_Marker.Saw02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if Saw03 == 0 and IsDead(Building.Saw03) then
      Saw03 = 1
      SawCount = SawCount - 1
      DebugOut("Remaining Saws = ", SawCount)
      SetObjectiveData(Objective_Marker.Saw03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if SawCount ~= 3 or SawCount3Done == 0 then
    end
    if SawCount == 2 and SawCount2Done == 0 then
      SawCount2Done = 1
      SetObjectiveData(Objective.Saw03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Saw02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(63, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
    end
    if SawCount == 1 and SawCount1Done == 0 then
      SawCount1Done = 1
      SetObjectiveData(Objective.Saw02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Saw01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(64, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
    end
    if SawCount <= 0 and SawCount0Done == 0 then
      SawCount0Done = 1
      SetObjectiveData(Objective.Saw01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Saw00, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Saw00, constant.OBJECTIVE_DATA_STATE, 1)
    end
    EndFrame()
  end
end
