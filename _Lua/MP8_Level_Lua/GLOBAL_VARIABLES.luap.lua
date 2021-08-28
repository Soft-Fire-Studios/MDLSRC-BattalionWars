function GLOBAL_VARIABLES(owner)
  cutsceneabort = 0
  cutscene = 0
  netvariable.player1.cutsceneskipped = 0
  netvariable.player2.cutsceneskipped = 0
  WFhqstate = 1
  WFdocksstate = 1
  AIhqstate = 2
  AIdocksstate = 2
  airbasestate = 0
  WFPlayerFacilities2 = false
  AIPlayerFacilities2 = false
  netvariable.player1.cutsceneoutroskipped = 0
  netvariable.player2.cutsceneoutroskipped = 0
  FrontierWin = false
  XylvanianWin = false
  cutsceneoutroabort = 0
  cutsceneoutroWF = 0
  cutsceneoutroXY = 0
  random = 0
  WFscore = 0
  XYscore = 0
  TimerStarted = false
  NavalGunDefenceWF = 0
  NavalGunOffenceWF = 0
  NavalGunDefenceXY = 0
  NavalGunOffenceXY = 0
  netvariable.player1.SuddenDeath = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(477, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(501, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad)
  end
end
