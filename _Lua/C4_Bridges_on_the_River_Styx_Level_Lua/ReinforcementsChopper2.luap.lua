function ReinforcementsChopper2(owner)
  local loop = 0
  repeat
    if missionfailed == 1 then
      return
    end
    EndFrame()
  until northernpointcaptured == 1
  repeat
    if GetMovementState(Air_Vehicle.AirTransportReinforcements2) == constant.MOVEMENT_STATE_ON_GROUND then
      ExitVehicle(constant.ID_NONE, Air_Vehicle.AirTransportReinforcements2, constant.ORDER_FORCED)
      loop = 1
    end
    EndFrame()
  until loop == 1
  SetActive(Troop.WFGrunt6, constant.ACTIVE)
  SetActive(Troop.WFGrunt7, constant.ACTIVE)
  SetActive(Troop.WFGrunt8, constant.ACTIVE)
  SetActive(Troop.WFGrunt9, constant.ACTIVE)
  SetActive(Troop.WFGrunt10, constant.ACTIVE)
  SetActive(Troop.WFGrunt13, constant.ACTIVE)
  FollowUnit(Troop.WFGrunt6, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFGrunt7, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFGrunt8, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFGrunt9, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFGrunt10, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFGrunt13, GetPlayerUnit(), 10, constant.ORDER_NORMAL)
  DebugOut("Chopper 2 Passengers ejected")
  GoToArea(Air_Vehicle.AirTransportReinforcements2, 50, -1000, 30, constant.ORDER_FORCED)
  repeat
    if IsInArea(Air_Vehicle.AirTransportReinforcements2, 50, -1000, 50) then
      Despawn(Air_Vehicle.AirTransportReinforcements2)
      DebugOut("Chopper 2 has left the game")
      loop = 2
    end
    EndFrame()
  until loop == 2
end
