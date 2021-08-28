function GlobalVariables01(owner)
  cutscene01 = 0
  cutscenefinished01 = 0
  cutscene02 = 0
  cutscenefinished02 = 0
  fuelstations = 0
  pow01 = 0
  netvariable.player1.missionend = 0
  netvariable.player1.battlestationCO = 0
  netvariable.player1.Player1 = 0
  missionend = 0
  netvariable.player1.skip01 = 0
  netvariable.player2.skip01 = 0
  netvariable.player1.skip02 = 0
  netvariable.player2.skip02 = 0
  netvariable.player1.COBanter03 = 0
  netvariable.player1.COBanter04 = 0
  netvariable.player1.ffhealth = 0
  solarforcefieldpow = 0
  objectivezone01 = 0
  CurrentPlayer1SpawnX = -94
  CurrentPlayer1SpawnZ = 772
  CurrentPlayer1Dir = 180
  CurrentPlayer2SpawnX = -91
  CurrentPlayer2SpawnZ = 485
  CurrentPlayer2Dir = 0
  MissionStarted = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(506, 4, 6, SpriteID.CO_L_Ferrok_Happy)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(490, 3, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad)
  end
end
