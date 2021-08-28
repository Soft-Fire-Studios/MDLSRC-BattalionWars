function GLOBAL_VARIABLES(owner)
  Flag01 = flag.TYPE_SOLAR
  Flag02 = flag.TYPE_UNDERWORLD
  CO01_Happy = SpriteID.CO_SE_Leiqo_Helmet_Happy
  CO01_Sad = SpriteID.CO_SE_Leiqo_Helmet_Sad
  CO02_Happy = SpriteID.CO_L_Ferrok_Happy
  CO02_Sad = SpriteID.CO_L_Ferrok_Sad
  CO01_DialogBoxColour = constant.ARMY_SOLAR
  CO02_DialogBoxColour = constant.ARMY_UNDERWORLD
  LevelOver = false
  Winner = 0
  cutsceneabort = 0
  cutsceneskipped = 0
  cutscene = 0
  netvariable.player1.cutsceneskipped = 0
  netvariable.player2.cutsceneskipped = 0
  factorystate = 0
  SEbarracksstate = 2
  ILbarracksstate = 1
  SEFactoryTutorial = false
  SEBarracksTutorial = false
  SEHQTutorial = false
  ILFactoryTutorial = false
  ILBarracksTutorial = false
  ILHQTutorial = false
  netvariable.player1.cutsceneoutroskipped = 0
  netvariable.player2.cutsceneoutroskipped = 0
  SolarWin = false
  LegionWin = false
  cutsceneoutroabort = 0
  cutsceneoutroSE = 0
  cutsceneoutroIL = 0
  random = 0
  SEPlayerFacilities2 = false
  ILPlayerFacilities2 = false
  SEscore = 0
  ILscore = 0
  TimerStarted = false
  netvariable.player1.SuddenDeath = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(490, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(506, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad)
  end
end
