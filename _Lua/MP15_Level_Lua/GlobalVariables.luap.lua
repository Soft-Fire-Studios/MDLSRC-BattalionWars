function GlobalVariables(owner)
  PauseTimerActive = 0
  inacutscene = true
  netvariable.player1.skip01 = 0
  netvariable.player2.skip01 = 0
  cutscene01 = 0
  cutscenefinished01 = 0
  netvariable.player1.skip02 = 0
  netvariable.player2.skip02 = 0
  cutscene02 = 0
  cutscenefinished02 = 0
  cutscene02skip = 0
  netvariable.player1.skip03 = 0
  netvariable.player2.skip03 = 0
  cutscene03 = 0
  cutscenefinished03 = 0
  cutscene03skip = 0
  netvariable.player1.skip04 = 0
  netvariable.player2.skip04 = 0
  cutscene04 = 0
  cutscenefinished04 = 0
  cutscene04skip = 0
  netvariable.player1.xbscamera = 0
  missionend = 0
  netvariable.player1.p1unitsdead01 = 0
  netvariable.player2.p2unitsdead01 = 0
  netvariable.player1.p1unitsdead02 = 0
  netvariable.player2.p2unitsdead02 = 0
  netvariable.player1.p1unitsdead03 = 0
  netvariable.player2.p2unitsdead03 = 0
  netvariable.player1.maushealth = 0
  killgunship01 = 0
  fuelstorage = 0
  aatowers = 0
  vladsbigdrill = 0
  startup = 0
  netvariable.player1.vladshealth = 0
  netvariable.player1.fighterrespawn01 = 0
  netvariable.player1.tbsdead = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(484, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(477, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Sad)
  end
end
