function owner_Anglo_Air_Transports(owner)
  repeat
    EndFrame()
  until GetMovementState(owner) == constant.MOVEMENT_STATE_ON_GROUND
  if owner == Air_Vehicle.AIairtransport3 then
    ExitVehicle(Ground_Vehicle.AIlighttank7, constant.ID_NONE)
    WaitFor(1)
    GoToArea(owner, -964, -161, 10, 0, constant.ORDER_FORCED)
    WaitFor(40)
    Despawn(owner)
  end
  EndFrame()
  if owner == Air_Vehicle.AIairtransport4 then
    ExitVehicle(Troop.AIgruntG1, constant.ID_NONE)
    ExitVehicle(Troop.AIgruntG2, constant.ID_NONE)
    ExitVehicle(Troop.AIgruntG3, constant.ID_NONE)
    ExitVehicle(Troop.AIgruntG4, constant.ID_NONE)
    WaitFor(1)
    GoToArea(owner, -964, -161, 10, 0, constant.ORDER_FORCED)
    WaitFor(40)
    Despawn(owner)
  end
  EndFrame()
  if owner == Air_Vehicle.AIairtransport5 then
    ExitVehicle(Troop.AIgruntG5, constant.ID_NONE)
    ExitVehicle(Troop.AIgruntG6, constant.ID_NONE)
    ExitVehicle(Troop.AIgruntG7, constant.ID_NONE)
    ExitVehicle(Troop.AIgruntG8, constant.ID_NONE)
    WaitFor(1)
    GoToArea(owner, -964, -161, 10, 0, constant.ORDER_FORCED)
    WaitFor(40)
    Despawn(owner)
  end
  EndFrame()
end
