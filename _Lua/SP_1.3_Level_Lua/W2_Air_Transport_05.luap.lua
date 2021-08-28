function W2_Air_Transport_05(owner)
  Script09 = owner
  AddToGroup(Unit_Group.Wave_2, Ground_Vehicle.AI_Light_Tank_2)
  Despawn(Air_Vehicle.AI_Air_Transport_5)
  repeat
    EndFrame()
  until wave == 2
  WaitFor(8)
  DebugOut("Wave 2 Begins, Spawn Air Transport 5")
  Spawn(Air_Vehicle.AI_Air_Transport_5)
  WaitFor(1)
  LandAirUnit(Air_Vehicle.AI_Air_Transport_5, 25, 1155, constant.ORDER_FORCED, 1, 5, 270)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.AI_Air_Transport_5) == constant.MOVEMENT_STATE_ON_GROUND
  DebugOut("Air Transport 5 has landed")
  WaitFor(1)
  GoToArea(Ground_Vehicle.AI_Light_Tank_2, -65, 1320, 10)
  WaitFor(1)
  DebugOut("Send Air Transport 5 away from the play area")
  GoToArea(Air_Vehicle.AI_Air_Transport_5, 435, 1335, 10)
  GoToArea(Ground_Vehicle.AI_Light_Tank_2, -20, 1310, 10)
  WaitFor(20)
  Despawn(Air_Vehicle.AI_Air_Transport_5)
  DebugOut("Despawn Air Transport 5")
end
