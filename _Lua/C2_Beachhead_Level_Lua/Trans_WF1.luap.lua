function Trans_WF1(owner)
  WaitFor(2)
  repeat
    EndFrame()
  until TransWF1Go == 1
  LandAirUnit(Air_Vehicle.WF_Transport1, 195, 220, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.WF_Transport1) == constant.MOVEMENT_STATE_ON_GROUND
  ExitVehicle(Troop.WF_Chain4, Air_Vehicle.WF_Transport1)
  ExitVehicle(Troop.WF_Chain5, Air_Vehicle.WF_Transport1)
  ExitVehicle(Troop.WF_Bazooka4, Air_Vehicle.WF_Transport1)
  ExitVehicle(Troop.WF_Bazooka5, Air_Vehicle.WF_Transport1)
  ExitVehicle(Ground_Vehicle.AntiAirVehicle, Air_Vehicle.WF_Transport1)
  SetActive(Troop.WF_Chain4, constant.ACTIVE)
  SetActive(Troop.WF_Chain5, constant.ACTIVE)
  SetActive(Troop.WF_Bazooka4, constant.ACTIVE)
  SetActive(Troop.WF_Bazooka5, constant.ACTIVE)
  SetActive(Ground_Vehicle.AntiAirVehicle, constant.ACTIVE)
  WaitFor(1)
  DebugOut("going home")
  GoToArea(Air_Vehicle.WF_Transport1, 400, -700, 10, nil, constant.ORDER_FORCED)
  WaitFor(30)
  Despawn(Air_Vehicle.WF_Transport1)
end
