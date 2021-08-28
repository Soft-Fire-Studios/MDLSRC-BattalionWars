function Their_Finest_Hour_SE_AttackWave_AirTransports(owner)
  SetTickScriptWhenDead(owner, 1)
  repeat
    if NumPassengersInUnit(owner) == 1 and GetMovementState(owner) == constant.MOVEMENT_STATE_ON_GROUND then
      GoToArea(owner, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
    end
    EndFrame()
    if IsInArea(owner, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 25) then
      Kill(owner)
    end
    EndFrame()
  until AttackWaveReinforcements == 1
end
