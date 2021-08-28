function Global_Variables(owner)
  netvariable.player1.cutsceneskipped = 0
  netvariable.player2.cutsceneskipped = 0
  cutscene = 0
  cutsceneabort = 0
  cutscenefinished = 0
  CutsceneHasEnded = 0
  CutsceneOutroHasEnded = 0
  cutsceneplayer1wins = owner
  cutsceneplayer2wins = owner
  gamestate = 0
  missionend = 0
  scriptMessages = 0
  netvariable.player1.player1wins = 0
  netvariable.player1.player2wins = 0
  OutroCutsceneStarted = 0
  MissionOver = 0
  netvariable.player1.skip = 0
  netvariable.player2.skip = 0
  netvariable.player1.skipoutro = 0
  netvariable.player2.skipoutro = 0
  Player1Army = flag.TYPE_WFRONTIER
  Player2Army = flag.TYPE_XYLVANIAN
  CurrentPlayer1SpawnX = -95
  CurrentPlayer1SpawnZ = 980
  CurrentPlayer2SpawnX = -134
  CurrentPlayer2SpawnZ = 514
  CurrentPlayer1Direction = 180
  CurrentPlayer2Direction = 30
  Player1UnitTimer = 30
  Player1GruntTimer = 10
  Player2UnitTimer = 30
  Player2GruntTimer = 10
  Player1LastGruntRevived = 0
  Player2LastGruntRevived = 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(478, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(500, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad)
  end
end
