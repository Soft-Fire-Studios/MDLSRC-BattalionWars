function EvacuateChopper2(owner)
  evacuatechopper2 = owner
  local passengers = 0
  repeat
    EndFrame()
  until actors == 1
  WaitFor(5)
  repeat
    WaitFor(1)
    EndFrame()
  until 0 < NumItemsInArea(-428, -359, 100, flag.TYPE_XYLVANIAN) or abandoncity == 1 or GetActionState(Troop.EvacuationChopper2Passenger1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper2Passenger2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper2Passenger3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper2Passenger4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper2Passenger5) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper2Passenger6) == constant.ACTION_STATE_ATTACK or 100 > GetHealthPercent(Air_Vehicle.EvacuationChopper2)
  DebugOut("Evacuation 2: Trying to get in chopper")
  if abandoncity == 0 then
    PhoneMessage(18, 0, 2, 5, SpriteID.CO_T_Nova_Sad)
    PhoneMessage(19, 0, 1, 8, SpriteID.CO_X_Vlad_Happy)
  end
  EnterVehicle(Troop.EvacuationChopper2Passenger1, Air_Vehicle.EvacuationChopper2, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper2Passenger2, Air_Vehicle.EvacuationChopper2, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper2Passenger3, Air_Vehicle.EvacuationChopper2, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper2Passenger4, Air_Vehicle.EvacuationChopper2, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper2Passenger5, Air_Vehicle.EvacuationChopper2, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper2Passenger6, Air_Vehicle.EvacuationChopper2, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper2Passenger7, Air_Vehicle.EvacuationChopper2, constant.ORDER_FORCED)
  repeat
    passengers = 7
    if IsDead(Troop.EvacuationChopper2Passenger1) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper2Passenger2) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper2Passenger3) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper2Passenger4) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper2Passenger5) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper2Passenger6) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper2Passenger7) then
      passengers = passengers - 1
    end
    if NumPassengersInUnit(Air_Vehicle.EvacuationChopper2) == passengers then
      GoToArea(Air_Vehicle.EvacuationChopper2, -1236, -38, 10, constant.ORDER_FORCED)
    end
    EndFrame()
  until IsInArea(Air_Vehicle.EvacuationChopper2, -1236, -38, 10)
  Despawn(Air_Vehicle.EvacuationChopper2)
  missionfailed = 1
end
