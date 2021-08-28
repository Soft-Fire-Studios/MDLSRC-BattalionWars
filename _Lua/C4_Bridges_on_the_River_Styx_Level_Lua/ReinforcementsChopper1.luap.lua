function ReinforcementsChopper1(owner)
  local loop = 0
  repeat
    if missionfailed == 1 then
      return
    end
    EndFrame()
  until northernpointcaptured == 1
  WaitFor(5)
  repeat
    if GetMovementState(Air_Vehicle.AirTransportReinforcements1) == constant.MOVEMENT_STATE_ON_GROUND then
      ExitVehicle(constant.ID_NONE, Air_Vehicle.AirTransportReinforcements1, constant.ORDER_FORCED)
      loop = 1
    end
    EndFrame()
  until loop == 1
  SetActive(Troop.WFBazookaVet4, constant.ACTIVE)
  SetActive(Troop.WFBazookaVet5, constant.ACTIVE)
  SetActive(Troop.WFBazookaVet6, constant.ACTIVE)
  SetActive(Troop.WFBazookaVet7, constant.ACTIVE)
  SetActive(Troop.WFBazookaVet8, constant.ACTIVE)
  SetActive(Troop.WFBazookaVet9, constant.ACTIVE)
  FollowUnit(Troop.WFBazookaVet4, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFBazookaVet5, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFBazookaVet6, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFBazookaVet7, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFBazookaVet8, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFBazookaVet9, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  DebugOut("Chopper 1 Passengers ejected")
  GoToArea(Air_Vehicle.AirTransportReinforcements1, 50, -1000, 30, constant.ORDER_FORCED)
  repeat
    if IsInArea(Air_Vehicle.AirTransportReinforcements1, 50, -1000, 50) then
      Despawn(Air_Vehicle.AirTransportReinforcements1)
      DebugOut("Chopper 1 has left the game")
      loop = 2
    end
    EndFrame()
  until loop == 2
end
