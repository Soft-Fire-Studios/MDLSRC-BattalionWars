function AI_AIR_TRANSPORT_1(owner)
  repeat
    EndFrame()
  until MidCutscene1start == true
  repeat
    EndFrame()
    WaitFor(0.5)
  until GetMovementState(Air_Vehicle.AItransport1) == constant.MOVEMENT_STATE_ON_GROUND or MidCutscene1Skipped == true
  if MidCutscene1Skipped == false then
    ExitVehicle(Troop.AIcontrolledgrunt1, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt2, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt3, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt4, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt5, constant.ID_NONE)
    WaitFor(0.2)
    AIControlledGruntsBegun = true
    WaitFor(2)
    GoToArea(Air_Vehicle.AItransport1, 830, -800, 0, constant.ORDER_FORCED)
    EndFrame()
  end
  EndFrame()
  WaitFor(60)
  Despawn(Air_Vehicle.AItransport1)
  DebugOut("AItransport1 despawned")
end
