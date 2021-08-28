function WF_TRANSPORT_2(owner)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.WFtransport2) == constant.MOVEMENT_STATE_ON_GROUND
  ExitVehicle(Ground_Vehicle.WFrecon1, constant.ID_NONE)
  SetActive(Ground_Vehicle.WFrecon1, constant.ACTIVE)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.WFrecon1, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  WaitFor(10)
  GoToArea(Air_Vehicle.WFtransport2, -329, -1288, 0, constant.ORDER_FORCED)
  EndFrame()
  WaitFor(40)
  Despawn(Air_Vehicle.WFtransport2)
end
