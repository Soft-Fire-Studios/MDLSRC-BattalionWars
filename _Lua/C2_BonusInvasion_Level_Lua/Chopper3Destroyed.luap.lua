function Chopper3Destroyed(owner)
  local loop = 0
  repeat
    if IsDead(Air_Vehicle.EvacuationChopper3) then
      Kill(evacuatechopper3)
      loop = 1
    end
    EndFrame()
  until loop == 1
  DebugOut("Evacuation 3: Transport destroyed. Hunting player")
  SetObjectiveData(Objective_Marker.EvacuationChopper3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
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
  AttackTarget(Troop.EvacuationChopper3Passenger1, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper3Passenger2, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper3Passenger3, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper3Passenger4, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper3Passenger5, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper3Passenger6, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper3Passenger7, GetPlayerUnit())
end
