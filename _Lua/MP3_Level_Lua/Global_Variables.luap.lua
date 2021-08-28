function Global_Variables(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(478, constant.ARMY_WF, 6, SpriteID.CO_WF_Young_Herman_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(482, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Young_Gorgi_Sad)
  end
  FreezeDelay = 0.5
  Player1Army = flag.TYPE_WFRONTIER
  Player2Army = flag.TYPE_TUNDRAN
  CurrentPlayer1SpawnX = 160
  CurrentPlayer1SpawnZ = 600
  CurrentPlayer1Direction = 180
  CurrentPlayer2SpawnX = -20
  CurrentPlayer2SpawnZ = -265
  CurrentPlayer2Direction = 0
  Player1UnitTimer = 15
  Player1GruntTimer = 15
  Player2UnitTimer = 15
  Player2GruntTimer = 20
  Player1LastGruntRevived = 0
  Player2LastGruntRevived = 0
  netvariable.player1.cutsceneskipped = 0
  netvariable.player2.cutsceneskipped = 0
  netvariable.player1.cutscenemidskipped = 0
  netvariable.player2.cutscenemidskipped = 0
  netvariable.player1.cutscenemidbomberskipped = 0
  netvariable.player2.cutscenemidbomberskipped = 0
  netvariable.player1.cutsceneendskipped = 0
  netvariable.player2.cutsceneendskipped = 0
  netvariable.player1.winner = 0
  netvariable.player2.winner = 0
  netvariable.player1.Helipad01Dialog = 0
  netvariable.player2.Helipad01Dialog = 0
  netvariable.player1.Helipad02Dialog = 0
  netvariable.player2.Helipad02Dialog = 0
  netvariable.player1.Helipad01Captured = 0
  netvariable.player2.Helipad01Captured = 0
  netvariable.player1.Helipad02Captured = 0
  netvariable.player2.Helipad02Captured = 0
  cutscene = 0
  missionend = 0
  cutsceneStart = 0
  cutsceneMidID = 0
  CutsceneMid = 0
  cutsceneEndID = 0
  CutsceneEnd = 0
  cutsceneMidBomberID = 0
  CutsceneMidBomber = 0
  Blimp7DeadObjective = 0
  NumberOfBlimpsDead = 0
  NumberOfRefuelStationDead = 0
  ObjectiveOneIsDone = 0
  ObjectiveTwoIsDone = 0
  BothObjectivesAreDone = 0
  Helipad01Captured = 0
  Helipad02Captured = 0
  MissionTimeLeft = 0
  TimerShown = 0
  WFtransport01XLandingCoord = GetObjectXPosition(Destroyable_Object.Helipad01) + 15
  WFtransport01ZLandingCoord = GetObjectZPosition(Destroyable_Object.Helipad01) + 8
  DebugOut("Helipad 01 X = ", WFtransport01XLandingCoord, "Helipad 01 Z = ", WFtransport01ZLandingCoord)
  WFtransport02XLandingCoord = GetObjectXPosition(Destroyable_Object.Helipad02) + 12
  WFtransport02ZLandingCoord = GetObjectZPosition(Destroyable_Object.Helipad02) + 5
  DebugOut("Helipad 02 X = ", WFtransport02XLandingCoord, "Helipad 02 Z = ", WFtransport02ZLandingCoord)
  WFtransport03XLandingCoord = 145
  WFtransport03ZLandingCoord = -305
  WFtransport04XLandingCoord = 110
  WFtransport04ZLandingCoord = -320
  WFtransport05XLandingCoord = 85
  WFtransport05ZLandingCoord = -335
  WFtransport06XLandingCoord = 40
  WFtransport06ZLandingCoord = -325
  WFfighter1XLandingCoord = GetObjectXPosition(Air_Vehicle.WFfighter1)
  WFfighter1ZLandingCoord = GetObjectZPosition(Air_Vehicle.WFfighter1)
  WFfighter2XLandingCoord = GetObjectXPosition(Air_Vehicle.WFfighter2)
  WFfighter2ZLandingCoord = GetObjectZPosition(Air_Vehicle.WFfighter2)
  WFfighter3XLandingCoord = GetObjectXPosition(Air_Vehicle.WFfighter3)
  WFfighter3ZLandingCoord = GetObjectZPosition(Air_Vehicle.WFfighter3)
  TTfighter1XLandingCoord = GetObjectXPosition(Air_Vehicle.TTfighter1)
  TTfighter1ZLandingCoord = GetObjectZPosition(Air_Vehicle.TTfighter1)
  TTfighter2XLandingCoord = GetObjectXPosition(Air_Vehicle.TTfighter2)
  TTfighter2ZLandingCoord = GetObjectZPosition(Air_Vehicle.TTfighter2)
end
