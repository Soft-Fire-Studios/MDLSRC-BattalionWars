function GLOBAL_VARIABLES(owner)
  cutsceneabort = 0
  cutscene = 0
  netvariable.player1.cutsceneskipped = 0
  netvariable.player2.cutsceneskipped = 0
  WFairbasestate = 0
  WFbarracksstate = 0
  AIairbasestate = 0
  AIbarracksstate = 0
  factorystate = 0
  netvariable.player1.cutsceneoutroskipped = 0
  netvariable.player2.cutsceneoutroskipped = 0
  FrontierWin = false
  AngloWin = false
  cutsceneoutroabort = 0
  cutsceneoutroWF = 0
  cutsceneoutroAI = 0
  WFPlayerFacilities2 = false
  AIPlayerFacilities2 = false
  random = 0
  AIscore = 0
  WFscore = 0
  TimerStarted = false
  netvariable.player1.SuddenDeath = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(477, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(495, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad)
  end
end
