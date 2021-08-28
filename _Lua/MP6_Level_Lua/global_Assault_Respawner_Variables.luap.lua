function global_Assault_Respawner_Variables(owner)
  Player1Army = flag.TYPE_XYLVANIAN
  Player2Army = flag.TYPE_TUNDRAN
  CurrentPlayer1SpawnX = GetObjectXPosition(Waypoint.XNSpawnLand01)
  CurrentPlayer1SpawnZ = GetObjectZPosition(Waypoint.XNSpawnLand01)
  CurrentPlayer1WaterSpawnX = GetObjectXPosition(Waypoint.XNSpawnWater01)
  CurrentPlayer1WaterSpawnZ = GetObjectZPosition(Waypoint.XNSpawnWater01)
  CurrentPlayer2SpawnX = GetObjectXPosition(Waypoint.TTSpawnLand01)
  CurrentPlayer2SpawnZ = GetObjectZPosition(Waypoint.TTSpawnLand01)
  CurrentPlayer2WaterSpawnX = 0
  CurrentPlayer2WaterSpawnZ = 0
  CurrentPlayer1Direction = 180
  CurrentPlayer2Direction = 270
  Player1UnitTimer = 30
  Player1GruntTimer = 10
  Player1BattleshipTimerStart = 60
  Player1BattleshipTimerEnd = 48
  Player2BomberTimer = 30
  Player2UnitTimer = 30
  Player2GruntTimer = 10
end
