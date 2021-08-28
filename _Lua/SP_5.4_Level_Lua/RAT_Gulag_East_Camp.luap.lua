function RAT_Gulag_East_Camp(owner)
  scriptGulagEastCamp = owner
  local GulagEastOneDone = 0
  local GulagEastDone = 0
  local gulagpDone = 0
  local eastDone = 0
  while missionend == 0 do
    if gulagpDone + eastDone == 1 then
      SetObjectiveData(Objective.Gulag_East_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Gulag_East_2, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if gulagpDone == 0 and gulagp == 1 then
      gulagpDone = 1
      SetObjectiveData(Objective_Marker.Gulag_East_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if eastDone == 0 and east == 1 then
      eastDone = 1
      SetObjectiveData(Objective_Marker.Gulag_East_S_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if GulagEastOneDone == 0 and (gulagp == 1 or east == 1) then
      GulagEastOneDone = 1
      ClearMessageQueue()
      PhoneMessage(68, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
    end
    if GulagEastDone == 0 and gulagp == 1 and east == 1 then
      GulagEastDone = 1
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      ClearMessageQueue()
      PhoneMessageWithObjective(69, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
      SetObjectiveData(Objective_Marker.Gulag_East_S_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Gulag_East_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Gulag_East_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Gulag_East_S, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Gulag_East_S, constant.OBJECTIVE_DATA_STATE, 1)
      break
    end
    EndFrame()
  end
end
