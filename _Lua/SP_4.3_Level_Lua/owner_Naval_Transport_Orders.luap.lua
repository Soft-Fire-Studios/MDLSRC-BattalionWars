function owner_Naval_Transport_Orders(owner)
  repeat
    EndFrame()
  until NavalGunsStart == 1
  while true do
    if NumPassengersInUnit(owner) == 0 then
      WaitFor(3)
      if owner == Water_Vehicle.SENavalTransport01 or owner == Water_Vehicle.SENavalTransport05 then
        GoToArea(owner, GetObjectXPosition(Waypoint.SENavalTransport01Despawn), GetObjectZPosition(Waypoint.SENavalTransport01Despawn), 0, 0, constant.ORDER_FORCED)
      end
      if owner == Water_Vehicle.SENavalTransport02 or owner == Water_Vehicle.SENavalTransport06 then
        GoToArea(owner, GetObjectXPosition(Waypoint.SENavalTransport02Despawn), GetObjectZPosition(Waypoint.SENavalTransport02Despawn), 0, 0, constant.ORDER_FORCED)
      end
      if owner == Water_Vehicle.SENavalTransport03 or owner == Water_Vehicle.SENavalTransport07 then
        GoToArea(owner, GetObjectXPosition(Waypoint.SENavalTransport03Despawn), GetObjectZPosition(Waypoint.SENavalTransport03Despawn), 0, 0, constant.ORDER_FORCED)
      end
      if owner == Water_Vehicle.SENavalTransport04 or owner == Water_Vehicle.SENavalTransport08 then
        GoToArea(owner, GetObjectXPosition(Waypoint.SENavalTransport04Despawn), GetObjectZPosition(Waypoint.SENavalTransport04Despawn), 0, 0, constant.ORDER_FORCED)
      end
      EndFrame()
    end
    if IsInArea(owner, Map_Zone.DespawnSENavalTransports) and NumPassengersInUnit(owner) == 0 then
      Kill(owner, false)
      EndFrame()
    end
    EndFrame()
  end
end
