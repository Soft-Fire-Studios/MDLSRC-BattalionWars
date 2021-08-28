function Chopper1Destroyed(owner)
  local loop = 0
  repeat
    if IsDead(Air_Vehicle.EvacuationChopper1) then
      Kill(evacuatechopper1)
      loop = 1
    end
    WaitFor(0.5)
    EndFrame()
  until loop == 1
  DebugOut("Evacuation 1: Transport destroyed.  Hunting player")
  SetObjectiveData(Objective_Marker.EvacuationChopper1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
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
  AttackTarget(Troop.EvacuationChopper1Passenger1, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper1Passenger2, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper1Passenger3, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper1Passenger4, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper1Passenger5, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper1Passenger6, GetPlayerUnit())
  AttackTarget(Troop.EvacuationChopper1Passenger7, GetPlayerUnit())
end
