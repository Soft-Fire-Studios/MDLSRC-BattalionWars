function owner_Despawn_Air_Transports(owner)
  repeat
    if NumPassengersInUnit(owner) == 1 then
      if owner == Air_Vehicle.SEAirTransport01 and SEAirTransport01TakenOff == 0 then
        SEAirTransport01TakenOff = 1
        GoToArea(owner, GetObjectXPosition(Waypoint.SEAirTransport01Despawn), GetObjectZPosition(Waypoint.SEAirTransport01Despawn), 0, 0, constant.ORDER_FORCED)
        DebugOut("AIR TRANSPORT ONE ORDERED AWAY")
      elseif owner == Air_Vehicle.SEAirTransport02 and SEAirTransport02TakenOff == 0 then
        SEAirTransport02TakenOff = 1
        GoToArea(owner, GetObjectXPosition(Waypoint.SEAirTransport02Despawn), GetObjectZPosition(Waypoint.SEAirTransport02Despawn), 0, 0, constant.ORDER_FORCED)
        DebugOut("AIR TRANSPORT TWO ORDERED AWAY")
      elseif owner == Air_Vehicle.SEAirTransport03 and SEAirTransport03TakenOff == 0 then
        SEAirTransport03TakenOff = 1
        GoToArea(owner, GetObjectXPosition(Waypoint.SEAirTransport01Despawn), GetObjectZPosition(Waypoint.SEAirTransport01Despawn), 0, 0, constant.ORDER_FORCED)
        DebugOut("AIR TRANSPORT THREE ORDERED AWAY")
      else
        if owner == Air_Vehicle.SEAirTransport04 and SEAirTransport04TakenOff == 0 then
          SEAirTransport04TakenOff = 1
          GoToArea(owner, GetObjectXPosition(Waypoint.SEAirTransport02Despawn), GetObjectZPosition(Waypoint.SEAirTransport02Despawn), 0, 0, constant.ORDER_FORCED)
          DebugOut("AIR TRANSPORT FOUR ORDERED AWAY")
        else
        end
      end
      EndFrame()
    end
    if IsInArea(owner, Map_Zone.DespawnSEAirTransports) or IsInArea(owner, Map_Zone.DespawnSEAirTransports2) then
      Despawn(owner, false)
      DebugOut("AIR TRANSPORT SAFE DISTANCE AWAY, TRANSPORT DESPAWNED")
    end
    EndFrame()
    EndFrame()
  until MissionOver == 1
end
