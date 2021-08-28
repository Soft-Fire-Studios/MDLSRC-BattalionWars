function AI_AIR_TRANSPORT_2(owner)
  repeat
    EndFrame()
  until MidCutscene1start == true
  repeat
    EndFrame()
    WaitFor(0.5)
  until GetMovementState(Air_Vehicle.AItransport2) == constant.MOVEMENT_STATE_ON_GROUND or MidCutscene1Skipped == true
  if MidCutscene1Skipped == false then
    ExitVehicle(Troop.AIcontrolledgrunt6, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt7, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt8, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt9, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt10, constant.ID_NONE)
    WaitFor(2)
    GoToArea(Air_Vehicle.AItransport2, 830, -800, 0, constant.ORDER_FORCED)
    EndFrame()
  end
  EndFrame()
  WaitFor(60)
  Despawn(Air_Vehicle.AItransport2)
  DebugOut("AItransport2 despawned")
end
