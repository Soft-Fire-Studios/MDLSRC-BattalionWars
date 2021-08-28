function GLOBAL_VARIABLES(owner)
  cutsceneabort = 0
  cutscene = 0
  netvariable.player1.cutsceneskipped = 0
  netvariable.player2.cutsceneskipped = 0
  Xairbasestate = 1
  Xfactorystate = 0
  Xbarracksstate = 1
  Tairbasestate = 2
  Tfactorystate = 0
  Tbarracksstate = 2
  XPlayerFacilities2 = false
  TPlayerFacilities2 = false
  netvariable.player1.cutsceneoutroskipped = 0
  netvariable.player2.cutsceneoutroskipped = 0
  XylvanianWin = false
  TundranWin = false
  cutsceneoutroabort = 0
  cutsceneoutroX = 0
  cutsceneoutroT = 0
  random = 0
  Tscore = 0
  XYscore = 0
  TimerStarted = false
  netvariable.player1.SuddenDeath = false
  PlayEffect(Scripted_Effect.Snow, flag.VISUAL, Camera.Player1Cam)
  PlayEffect(Scripted_Effect.Snow, flag.VISUAL, Camera.Player2Cam)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(500, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(482, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Ghost_Gorgi_Sad)
  end
end
