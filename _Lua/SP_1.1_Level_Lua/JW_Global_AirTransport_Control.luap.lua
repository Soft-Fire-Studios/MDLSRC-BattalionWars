function JW_Global_AirTransport_Control(owner)
  KillGlobalAirControl = owner
  local LetsSpawnSomeAirTransports = 0
  local AirTransport01Despawned = 0
  local AirTransport02Despawned = 0
  local AirTransport03Despawned = 0
  local AirTransport04Despawned = 0
  Despawn(Air_Vehicle.AI_Flyover_AirTransport01)
  Despawn(Air_Vehicle.AI_Flyover_AirTransport02)
  Despawn(Air_Vehicle.AI_Flyover_AirTransport03)
  Despawn(Air_Vehicle.AI_Flyover_AirTransport04)
end
