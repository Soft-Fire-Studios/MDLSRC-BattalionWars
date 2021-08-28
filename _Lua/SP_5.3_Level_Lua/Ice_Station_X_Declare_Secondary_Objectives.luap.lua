function Ice_Station_X_Declare_Secondary_Objectives(owner)
  repeat
    EndFrame()
  until Cutscene01Finished == 1
  WaitFor(1.5)
  PhoneMessage(8, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  PhoneMessageWithObjective(10, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  SetObjectiveData(Objective_Marker.Centre_Fort_POWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.East_Beach_POWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Free_Centre_Fort_POWs, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Free_East_Beach_POWs, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Exit_Start_Cove) == false
  DebugOut("Player Enters <Exit Start Cove>")
  PhoneMessage(16, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
end
