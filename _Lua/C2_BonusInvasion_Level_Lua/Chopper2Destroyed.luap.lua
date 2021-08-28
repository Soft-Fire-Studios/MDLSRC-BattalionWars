function Chopper2Destroyed(owner)
  local loop = 0
  repeat
    if IsDead(Air_Vehicle.EvacuationChopper2) then
      Kill(evacuatechopper2)
      loop = 1
    end
    EndFrame()
  until loop == 1
  DebugOut("Evacuation 2: Transport destroyed. Hunting player")
  SetObjectiveData(Objective_Marker.EvacuationChopper2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  choppersdead = choppersdead + 1
  if choppersdead == 1 then
    ClearMessageQueue()
    PhoneMessage(31, 0, 2, 6, SpriteID.CO_T_Nova_Sad)
    PhoneMessage(32, 0, 1, 6, SpriteID.CO_X_Vlad_Happy)
  end
  if choppersdead == 2 then
    ClearMessageQueue()
    PhoneMessage(33, 0, 2, 6, SpriteID.CO_T_Nova_Sad)
    PhoneMessage(34, 0, 1, 6, SpriteID.CO_X_Vlad_Happy)
  end
  if choppersdead == 3 then
    ClearMessageQueue()
    PhoneMessage(35, 0, 2, 6, SpriteID.CO_T_Nova_Sad)
    PhoneMessage(36, 0, 1, 6, SpriteID.CO_X_Vlad_Happy)
  end
  AttackTarget(Troop.EvacuationChopper2Passenger1, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper2Passenger2, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper2Passenger3, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper2Passenger4, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper2Passenger5, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper2Passenger6, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper2Passenger7, GetPlayerUnit())
end
