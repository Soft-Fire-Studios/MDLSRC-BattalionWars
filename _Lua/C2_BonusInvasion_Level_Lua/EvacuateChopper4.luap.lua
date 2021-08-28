function EvacuateChopper4(owner)
  evacuatechopper4 = owner
  local passengers = 0
  repeat
    EndFrame()
  until actors == 1
  WaitFor(5)
  repeat
    WaitFor(1)
    EndFrame()
  until 0 < NumItemsInArea(-707, -390, 100, flag.TYPE_XYLVANIAN) or abandoncity == 1 or GetActionState(Troop.EvacuationChopper4Passenger1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper4Passenger2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper4Passenger3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper4Passenger4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper4Passenger5) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper4Passenger6) == constant.ACTION_STATE_ATTACK or 100 > GetHealthPercent(Air_Vehicle.EvacuationChopper4)
  DebugOut("Evacuation 4: Trying to get in chopper")
  if abandoncity == 0 then
    PhoneMessage(20, 0, 2, 8, SpriteID.CO_T_Nova_Sad)
    PhoneMessage(21, 0, 1, 8, SpriteID.CO_X_Vlad_Happy)
  end
  EnterVehicle(Troop.EvacuationChopper4Passenger1, Air_Vehicle.EvacuationChopper4, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper4Passenger2, Air_Vehicle.EvacuationChopper4, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper4Passenger3, Air_Vehicle.EvacuationChopper4, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper4Passenger4, Air_Vehicle.EvacuationChopper4, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper4Passenger5, Air_Vehicle.EvacuationChopper4, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper4Passenger6, Air_Vehicle.EvacuationChopper4, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper4Passenger7, Air_Vehicle.EvacuationChopper4, constant.ORDER_FORCED)
  repeat
    passengers = 7
    if IsDead(Troop.EvacuationChopper4Passenger1) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper4Passenger2) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper4Passenger3) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper4Passenger4) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper4Passenger5) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper4Passenger6) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper4Passenger7) then
      passengers = passengers - 1
    end
    if NumPassengersInUnit(Air_Vehicle.EvacuationChopper4) == passengers then
      GoToArea(Air_Vehicle.EvacuationChopper4, -1236, -38, 10, constant.ORDER_FORCED)
    end
    EndFrame()
  until IsInArea(Air_Vehicle.EvacuationChopper4, -1236, -38, 10)
  Despawn(Air_Vehicle.EvacuationChopper4)
  missionfailed = 1
end
