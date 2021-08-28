function Trans_WF2(owner)
  WaitFor(2)
  repeat
    EndFrame()
  until TransWF2Go == 1
  LandAirUnit(Air_Vehicle.WF_Transport2, 10, 250, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.WF_Transport2) == constant.MOVEMENT_STATE_ON_GROUND
  ExitVehicle(Troop.WF_Grunt11, Air_Vehicle.WF_Transport2)
  ExitVehicle(Troop.WF_Grunt12, Air_Vehicle.WF_Transport2)
  ExitVehicle(Troop.WF_Grunt13, Air_Vehicle.WF_Transport2)
  ExitVehicle(Troop.WF_Grunt14, Air_Vehicle.WF_Transport2)
  ExitVehicle(Troop.WF_Grunt15, Air_Vehicle.WF_Transport2)
  SetActive(Troop.WF_Grunt11, constant.ACTIVE)
  SetActive(Troop.WF_Grunt12, constant.ACTIVE)
  SetActive(Troop.WF_Grunt13, constant.ACTIVE)
  SetActive(Troop.WF_Grunt14, constant.ACTIVE)
  SetActive(Troop.WF_Grunt15, constant.ACTIVE)
  WaitFor(2)
  DebugOut("going home")
  GoToArea(Air_Vehicle.WF_Transport2, 500, -800, 10, nil, constant.ORDER_FORCED)
  WaitFor(30)
  Despawn(Air_Vehicle.WF_Transport2)
end
