function W1_Air_Transport_01(owner)
  Script05 = owner
  AddToGroup(Unit_Group.Wave_1, Troop.AI_Grunt_1)
  AddToGroup(Unit_Group.Wave_1, Troop.AI_Grunt_2)
  AddToGroup(Unit_Group.Wave_1, Troop.AI_Grunt_3)
  AddToGroup(Unit_Group.Wave_1, Troop.AI_Grunt_4)
  Despawn(Air_Vehicle.AI_Air_Transport_1)
  repeat
    EndFrame()
  until wave == 1
  WaitFor(4)
  DebugOut("Wave 1 Begins, Spawn Air Transport 1")
  Spawn(Air_Vehicle.AI_Air_Transport_1)
  WaitFor(1)
  LandAirUnit(Air_Vehicle.AI_Air_Transport_1, -127, 1160, constant.ORDER_FORCED, 1, 5, 270)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.AI_Air_Transport_1) == constant.MOVEMENT_STATE_ON_GROUND
  DebugOut("Air Transport 1 has landed")
  WaitFor(1)
  EnterVehicle(Troop.AI_Grunt_1, Capture_Point.Palace)
  EnterVehicle(Troop.AI_Grunt_2, Capture_Point.Palace)
  EnterVehicle(Troop.AI_Grunt_3, Capture_Point.Palace)
  EnterVehicle(Troop.AI_Grunt_4, Capture_Point.Palace)
  WaitFor(1)
  DebugOut("Send Air Transport 1 away from the play area")
  GoToArea(Air_Vehicle.AI_Air_Transport_1, 435, 1335, 10)
  wave = 2
  WaitFor(20)
  Despawn(Air_Vehicle.AI_Air_Transport_1)
  DebugOut("Despawn Air Transport 1")
end
