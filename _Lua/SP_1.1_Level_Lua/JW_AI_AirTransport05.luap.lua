function JW_AI_AirTransport05(owner)
  while true do
    if GetMovementState(owner) == constant.MOVEMENT_STATE_ON_GROUND then
      break
    else
      LandAirUnit(owner, GetObjectXPosition(Waypoint.AI_AirTransport05), GetObjectZPosition(Waypoint.AI_AirTransport05), constant.ORDER_FORCED)
      WaitFor(3)
    end
    EndFrame()
  end
  repeat
    EndFrame()
  until GetMovementState(owner) == constant.MOVEMENT_STATE_ON_GROUND
  while NumPassengersInUnit(owner) > 1 do
    ExitVehicle(constant.ID_NONE, owner)
    EndFrame()
  end
  GoToArea(owner, GetObjectXPosition(Waypoint.AI_AirTransport01_Despawn), GetObjectZPosition(Waypoint.AI_AirTransport01_Despawn), 5, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(owner, GetObjectXPosition(Waypoint.AI_AirTransport01_Despawn), GetObjectZPosition(Waypoint.AI_AirTransport01_Despawn), 25)
  Despawn(owner)
end
