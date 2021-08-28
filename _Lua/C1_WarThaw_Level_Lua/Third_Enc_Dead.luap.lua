function Third_Enc_Dead(owner)
  Despawn(Air_Vehicle.WF2_Bomber)
  thirdencdead = owner
  repeat
    EndFrame()
  until IsDead(Troop.T4_Rifleman) and IsDead(Troop.T5_Rifleman)
  SetObjectiveData(Objective.Phase2, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.MGnest, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.MGNestMark, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  PhoneMessage(11, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
  EndFrame()
end
