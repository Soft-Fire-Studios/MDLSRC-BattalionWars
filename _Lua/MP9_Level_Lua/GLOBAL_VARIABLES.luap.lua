function GLOBAL_VARIABLES(owner)
  cutsceneabort = 0
  cutscene = 0
  netvariable.player1.cutsceneskipped = 0
  netvariable.player2.cutsceneskipped = 0
  WFairbasestate = 0
  Tairbasestate = 0
  barracksstate = 0
  factorystate = 0
  WFPlayerFacilities2 = false
  TPlayerFacilities2 = false
  netvariable.player1.cutsceneoutroskipped = 0
  netvariable.player2.cutsceneoutroskipped = 0
  FrontierWin = false
  TundranWin = false
  cutsceneoutroabort = 0
  cutsceneoutroWF = 0
  cutsceneoutroT = 0
  random = 0
  Tscore = 0
  WFscore = 0
  TimerStarted = false
  netvariable.player1.SuddenDeath = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(478, constant.ARMY_WF, 6, SpriteID.CO_WF_Young_Herman_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(482, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Young_Gorgi_Sad)
  end
end
