function GlobalVars(owner)
  player1wins = 0
  player2wins = 0
  scriptMessages = 0
  scriptObjectives = 0
  scriptWinLoseConditions = 0
  gamestate = 0
  cutscene = 0
  cutscenefinished = 0
  cutsceneabort = 0
  cutsceneskipped = 0
  cutsceneoutroskipped = 0
  CutsceneHasEnded = 0
  OutroCutsceneCanBeSkipped = 0
  MissionOver = 0
  netvariable.player1.skip = 0
  netvariable.player2.skip = 0
  netvariable.player1.skipoutro = 0
  netvariable.player2.skipoutro = 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(500, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(484, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad)
  end
  Player1Army = flag.TYPE_XYLVANIAN
  Player2Army = flag.TYPE_TUNDRAN
  CurrentPlayer1SpawnX = -40.9
  CurrentPlayer1SpawnZ = -1242
  CurrentPlayer1WaterSpawnX = 0
  CurrentPlayer1WaterSpawnZ = 0
  CurrentPlayer2SpawnX = -20
  CurrentPlayer2SpawnZ = -858
  CurrentPlayer2WaterSpawnX = 0
  CurrentPlayer2WaterSpawnZ = 0
  CurrentPlayer1Direction = 0
  CurrentPlayer2Direction = 180
  Player1UnitTimer = 30
  Player1GruntTimer = 10
  Player2UnitTimer = 30
  Player2GruntTimer = 10
  Player1LastGruntRevived = 0
  Player2LastGruntRevived = 0
end
