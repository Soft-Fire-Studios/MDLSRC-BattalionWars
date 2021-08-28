function EvacuateChopper1(owner)
  evacuatechopper1 = owner
  local passengers = 0
  local loop = 0
  repeat
    EndFrame()
  until actors == 1
  WaitFor(5)
  repeat
    EndFrame()
  until 0 < NumItemsInArea(-150, -315, 150, flag.TYPE_XYLVANIAN) or abandoncity == 1 or GetActionState(Troop.EvacuationChopper1Passenger1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper1Passenger2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper1Passenger3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper1Passenger4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper1Passenger5) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.EvacuationChopper1Passenger6) == constant.ACTION_STATE_ATTACK or GetHealthPercent(Air_Vehicle.EvacuationChopper1) < 100
  DebugOut("Evacuation 1: Trying to get in chopper")
  EnterVehicle(Troop.EvacuationChopper1Passenger1, Air_Vehicle.EvacuationChopper1, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper1Passenger2, Air_Vehicle.EvacuationChopper1, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper1Passenger3, Air_Vehicle.EvacuationChopper1, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper1Passenger4, Air_Vehicle.EvacuationChopper1, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper1Passenger5, Air_Vehicle.EvacuationChopper1, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper1Passenger6, Air_Vehicle.EvacuationChopper1, constant.ORDER_FORCED)
  EnterVehicle(Troop.EvacuationChopper1Passenger7, Air_Vehicle.EvacuationChopper1, constant.ORDER_FORCED)
  GoToArea(Troop.TBazooka13, -50, -370, 5, constant.ORDER_FORCED)
  GoToArea(Troop.TBazooka5, -41, -378, 5, constant.ORDER_FORCED)
  GoToArea(Troop.TBazooka6, -53, -340, 5, constant.ORDER_FORCED)
  GoToArea(Troop.TBazooka2, -51, -329, 5, constant.ORDER_FORCED)
  GoToArea(Troop.TBazooka1, -53, -287, 5, constant.ORDER_FORCED)
  GoToArea(Troop.TBazooka12, -53, -287, 5, constant.ORDER_FORCED)
  if abandoncity == 0 then
    PhoneMessage(10, 0, 2, 8, SpriteID.CO_T_Nova_Sad)
    PhoneMessage(11, 0, 1, 8, SpriteID.CO_X_Vlad_Happy)
  end
  repeat
    passengers = 7
    if IsDead(Troop.EvacuationChopper1Passenger1) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper1Passenger2) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper1Passenger3) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper1Passenger4) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper1Passenger5) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper1Passenger6) then
      passengers = passengers - 1
    end
    if IsDead(Troop.EvacuationChopper1Passenger7) then
      passengers = passengers - 1
    end
    if NumPassengersInUnit(Air_Vehicle.EvacuationChopper1) == passengers then
      GoToArea(Air_Vehicle.EvacuationChopper1, -1236, -38, 10, constant.ORDER_FORCED)
    end
    EndFrame()
  until IsInArea(Air_Vehicle.EvacuationChopper1, -1236, -38, 10)
  Despawn(Air_Vehicle.EvacuationChopper1)
  missionfailed = 1
end
