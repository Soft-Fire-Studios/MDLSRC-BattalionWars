function WF_TRANSPORT_1(owner)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.WFtransport1) == constant.MOVEMENT_STATE_ON_GROUND
  ExitVehicle(Troop.WFassault01, constant.ID_NONE)
  ExitVehicle(Troop.WFassault02, constant.ID_NONE)
  ExitVehicle(Troop.WFassault03, constant.ID_NONE)
  ExitVehicle(Troop.WFassault04, constant.ID_NONE)
  SetActive(Troop.WFassault01, constant.ACTIVE)
  SetActive(Troop.WFassault02, constant.ACTIVE)
  SetActive(Troop.WFassault03, constant.ACTIVE)
  SetActive(Troop.WFassault04, constant.ACTIVE)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.WFassault01, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFassault02, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFassault03, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.WFassault04, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  WaitFor(1)
  GoToArea(Air_Vehicle.WFtransport1, -329, -1288, 0, constant.ORDER_FORCED)
  EndFrame()
  WaitFor(40)
  Despawn(Air_Vehicle.WFtransport1)
end
