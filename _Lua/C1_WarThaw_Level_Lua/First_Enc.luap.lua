function First_Enc(owner)
  first = owner
  repeat
    EndFrame()
  until cutscene == 1
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.Trigger1)
  SetActive(Troop.WF2_Rifleman, constant.ACTIVE)
  SetActive(Troop.WF3_Rifleman, constant.ACTIVE)
  SetActive(Troop.WF4_Rifleman, constant.ACTIVE)
  SetActive(Troop.WF5_Rifleman, constant.ACTIVE)
  SetObjectiveData(Objective.Phase1, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.Phase2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  PhoneMessage(2, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
  repeat
    EndFrame()
  until IsDead(Troop.T1_Rifleman)
  ClearMessageQueue()
  PhoneMessage(5, 0, 0, 3, SpriteID.CO_WF_Herman_Happy)
  PhoneMessage(47, 0, 2, 3, SpriteID.CO_T_Gorgi_Sad)
end
