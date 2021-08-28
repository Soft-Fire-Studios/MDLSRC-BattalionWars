function EvacuateChopper3(owner)
  evacuatechopper3 = owner
  local passengers = 0
  repeat
    EndFrame()
  until actors == 1
  WaitFor(10)
  repeat
    WaitFor(1)
    EndFrame()
  until 0 < NumItemsInArea(-500, -48, 100, flag.TYPE_XYLVANIAN) or abandoncity == 1 or GetActionState(Troop.EvacuationChopper3Passenger1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper3Passenger2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper3Passenger3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper3Passenger4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper3Passenger5) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper3Passenger6) == constant.ACTION_STATE_ATTACK or 100 > GetHealthPercent(Air_Vehicle.EvacuationChopper3)
  DebugOut("Evacuation 3: Trying to get in chopper")
  if abandoncity == 0 then
    PhoneMessage(22, 0, 2, 5, SpriteID.CO_T_Nova_Sad)
    PhoneMessage(23, 0, 1, 8, SpriteID.CO_X_Vlad_Happy)
  end
  GoToArea(Ground_Vehicle.TLight6, -486, -49, 5)
  EnterVehicle(Troop.EvacuationChopper3Passenger1, Air_Vehicle.EvacuationChopper3, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper3Passenger2, Air_Vehicle.EvacuationChopper3, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper3Passenger3, Air_Vehicle.EvacuationChopper3, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper3Passenger4, Air_Vehicle.EvacuationChopper3, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper3Passenger5, Air_Vehicle.EvacuationChopper3, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper3Passenger6, Air_Vehicle.EvacuationChopper3, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper3Passenger7, Air_Vehicle.EvacuationChopper3, constant.ORDER_FORCED)
  repeat
    passengers = 7
    if IsDead(Troop.EvacuationChopper3Passenger1) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper3Passenger2) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper3Passenger3) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper3Passenger4) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper3Passenger5) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper3Passenger6) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper3Passenger7) then
      passengers = passengers - 1
    end
    if NumPassengersInUnit(Air_Vehicle.EvacuationChopper3) == passengers then
      GoToArea(Air_Vehicle.EvacuationChopper3, -1236, -38, 10, constant.ORDER_FORCED)
    end
    EndFrame()
  until IsInArea(Air_Vehicle.EvacuationChopper3, -1236, -38, 10)
  Despawn(Air_Vehicle.EvacuationChopper3)
  missionfailed = 1
end
