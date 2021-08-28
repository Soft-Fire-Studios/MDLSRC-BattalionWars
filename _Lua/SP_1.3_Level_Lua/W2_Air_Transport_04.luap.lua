function W2_Air_Transport_04(owner)
  Script08 = owner
  AddToGroup(Unit_Group.Wave_2, Ground_Vehicle.AI_Light_Tank_1)
  Despawn(Air_Vehicle.AI_Air_Transport_4)
  repeat
    EndFrame()
  until wave == 2
  WaitFor(8)
  DebugOut("Wave 2 Begins, Spawn Air Transport 4")
  Spawn(Air_Vehicle.AI_Air_Transport_4)
  WaitFor(1)
  LandAirUnit(Air_Vehicle.AI_Air_Transport_4, -60, 1155, constant.ORDER_FORCED, 1, 5, 90)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.AI_Air_Transport_4) == constant.MOVEMENT_STATE_ON_GROUND
  WaitFor(1)
  GoToArea(Ground_Vehicle.AI_Light_Tank_1, -100, 1320, 10)
  WaitFor(1)
  DebugOut("Send Air Transport 4 away from the play area")
  GoToArea(Air_Vehicle.AI_Air_Transport_4, 435, 1335, 10)
  WaitFor(20)
  Despawn(Air_Vehicle.AI_Air_Transport_4)
  DebugOut("Despawn Air Transport 4")
end
