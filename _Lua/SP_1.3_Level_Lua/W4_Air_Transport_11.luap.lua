function W4_Air_Transport_11(owner)
  Script15 = owner
  AddToGroup(Unit_Group.Wave_4, Troop.AI_Baz_1)
  AddToGroup(Unit_Group.Wave_4, Troop.AI_Baz_2)
  AddToGroup(Unit_Group.Wave_4, Troop.AI_Baz_3)
  AddToGroup(Unit_Group.Wave_4, Troop.AI_Baz_4)
  AddToGroup(Unit_Group.Wave_4, Troop.AI_Baz_5)
  AddToGroup(Unit_Group.Wave_4, Troop.AI_Baz_6)
  Despawn(Air_Vehicle.AI_Air_Transport_11)
  repeat
    EndFrame()
  until wave == 4
  WaitFor(1)
  DebugOut("Wave 4 Begins, Spawn Air Transport 10")
  Spawn(Air_Vehicle.AI_Air_Transport_11)
  WaitFor(1)
  LandAirUnit(Air_Vehicle.AI_Air_Transport_11, -226, 1350, constant.ORDER_FORCED, 1, 5, 135)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.AI_Air_Transport_11) == constant.MOVEMENT_STATE_ON_GROUND
  DebugOut("Air Transport 11 has landed")
  WaitFor(1)
  GoToArea(Troop.AI_Baz_1, -105, 1335, 10)
  GoToArea(Troop.AI_Baz_2, -95, 1335, 10)
  GoToArea(Troop.AI_Baz_3, -85, 1335, 10)
  GoToArea(Troop.AI_Baz_4, -75, 1335, 10)
  GoToArea(Troop.AI_Baz_5, -65, 1335, 10)
  GoToArea(Troop.AI_Baz_6, -55, 1335, 10)
  WaitFor(2)
  DebugOut("Send Air Transport 11 away from the play area")
  GoToArea(Air_Vehicle.AI_Air_Transport_11, -835, 1335, 10)
  WaitFor(25)
  Despawn(Air_Vehicle.AI_Air_Transport_11)
  DebugOut("Despawn Air Transport 11")
  WaitFor(25)
  EnterVehicle(Troop.AI_Baz_1, Capture_Point.Palace)
  EnterVehicle(Troop.AI_Baz_2, Capture_Point.Palace)
  EnterVehicle(Troop.AI_Baz_3, Capture_Point.Palace)
  EnterVehicle(Troop.AI_Baz_4, Capture_Point.Palace)
  EnterVehicle(Troop.AI_Baz_5, Capture_Point.Palace)
  EnterVehicle(Troop.AI_Baz_6, Capture_Point.Palace)
end
