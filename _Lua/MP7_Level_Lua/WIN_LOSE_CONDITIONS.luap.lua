function WIN_LOSE_CONDITIONS(owner)
  cutsceneoutroabort = owner
  WaitFor(1)
  if IsNetworkHost() then
    repeat
      EndFrame()
    until TimerStarted == true and GetTimeLeft() <= 0
    EndFrame()
    Tscore = GetScoreTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_DEAD_HEALTH)
    XYscore = GetScoreTotals(flag.TYPE_TUNDRAN, constant.TOTAL_DEAD_HEALTH)
    ClearMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_TWO)
    DebugOut("T score is...", Tscore)
    DebugOut("XY score is...", XYscore)
    if XYscore > Tscore then
      DebugOut("SET P1 WIN")
      SetNetworkMissionComplete(1, true, 1)
      SetNetworkMissionComplete(2, false, 175)
    end
    if Tscore > XYscore then
      DebugOut("SET P2 WIN")
      SetNetworkMissionComplete(2, true, 1)
      SetNetworkMissionComplete(1, false, 175)
    end
    if Tscore == XYscore then
      DebugOut("ITS A DRAW! SUDDEN DEATH MODE")
      netvariable.player1.SuddenDeath = true
      StoreHealthAndScoreTotals()
      ResetHealthAndScoreTotals(false)
      WaitFor(0.1)
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
      repeat
        Tscore = GetScoreTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_DEAD_HEALTH)
        XYscore = GetScoreTotals(flag.TYPE_TUNDRAN, constant.TOTAL_DEAD_HEALTH)
        EndFrame()
      until Tscore >= 100 or XYscore >= 100
      if XYscore > Tscore then
        DebugOut("SET P1 WIN")
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 175)
      end
      if Tscore > XYscore then
        DebugOut("SET P2 WIN")
        SetNetworkMissionComplete(2, true, 1)
        SetNetworkMissionComplete(1, false, 175)
      end
    end
    EndFrame()
    DebugOut("Mission Set Ended on host")
    FreezePlayer(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      repeat
        EndFrame()
      until TimerStarted == true and GetTimeLeft() <= 0
      if netvariable.player1.SuddenDeath == true then
        StoreHealthAndScoreTotals()
        ResetHealthAndScoreTotals(false)
        WaitFor(0.1)
        PhoneMessage(65, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
        repeat
          Tscore = GetScoreTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_DEAD_HEALTH)
          XYscore = GetScoreTotals(flag.TYPE_TUNDRAN, constant.TOTAL_DEAD_HEALTH)
          EndFrame()
        until GetMissionEnded()
      end
      EndFrame()
    until GetMissionEnded()
  end
  EndFrame()
  StopScoringTimer()
  PrepareSkipCutscene()
  DebugOut("Mission Set Ended 2")
  FreezePlayer(constant.PLAYER_TWO)
  DebugOut("LEVEL ENDED")
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.Player1TransferUnit)
  Spawn(Troop.Player2TransferUnit)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.Player1TransferUnit, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.Player2TransferUnit, true, true)
  EndFrame()
  Despawn(Troop.Xgrunt1)
  Despawn(Troop.Xgrunt2)
  Despawn(Troop.Xgrunt3)
  Despawn(Troop.Xgrunt4)
  Despawn(Troop.Xgrunt5)
  Despawn(Troop.Xgrunt6)
  Despawn(Troop.Xgrunt7)
  Despawn(Troop.Xbazooka01)
  Despawn(Troop.Xbazooka02)
  Despawn(Troop.Xbazooka03)
  Despawn(Troop.Xbazooka04)
  Despawn(Troop.Xbazooka05)
  Despawn(Air_Vehicle.Xgunship1)
  Despawn(Air_Vehicle.Xgunship2)
  Despawn(Ground_Vehicle.Xantiairtank1)
  Despawn(Ground_Vehicle.Xbattlestation)
  Despawn(Troop.Tgrunt1)
  Despawn(Troop.Tgrunt2)
  Despawn(Troop.Tgrunt3)
  Despawn(Troop.Tgrunt4)
  Despawn(Troop.Tgrunt5)
  Despawn(Troop.Tgrunt6)
  Despawn(Troop.Tgrunt7)
  Despawn(Troop.Tbazooka1)
  Despawn(Troop.Tbazooka2)
  Despawn(Troop.Tbazooka3)
  Despawn(Troop.Tbazooka4)
  Despawn(Troop.Tbazooka5)
  Despawn(Air_Vehicle.Tgunship1)
  Despawn(Air_Vehicle.Tgunship2)
  Despawn(Ground_Vehicle.Tantiair)
  Despawn(Ground_Vehicle.Tbattlestation)
  Spawn(Troop.TcutsceneGrunt1)
  Spawn(Troop.TcutsceneGrunt2)
  Spawn(Troop.TcutsceneGrunt3)
  Spawn(Troop.TcutsceneGrunt4)
  Spawn(Troop.TcutsceneGrunt5)
  Spawn(Troop.TcutsceneGrunt6)
  Spawn(Troop.TcutsceneGrunt7)
  Spawn(Troop.TcutsceneGrunt8)
  Spawn(Troop.TcutsceneGrunt9)
  Spawn(Troop.TcutsceneGrunt10)
  Spawn(Troop.TcutsceneGrunt11)
  Spawn(Troop.TcutsceneGrunt12)
  Spawn(Troop.XcutsceneGrunt1)
  Spawn(Troop.XcutsceneGrunt2)
  Spawn(Troop.XcutsceneGrunt3)
  Spawn(Troop.XcutsceneGrunt4)
  Spawn(Troop.XcutsceneGrunt5)
  Spawn(Troop.XcutsceneGrunt6)
  Spawn(Troop.XcutsceneGrunt7)
  Spawn(Troop.XcutsceneGrunt8)
  Spawn(Troop.XcutsceneGrunt9)
  Spawn(Troop.XcutsceneGrunt10)
  Spawn(Troop.XcutsceneGrunt11)
  Spawn(Troop.XcutsceneGrunt12)
  Spawn(Air_Vehicle.CutsceneXYGunship1)
  Spawn(Air_Vehicle.CutsceneXYGunship2)
  Spawn(Air_Vehicle.CutsceneTTGunship1)
  Spawn(Air_Vehicle.CutsceneTTGunship2)
  RepositionSkirmishScoreBoxes(constant.PLAYER_ONE, true)
  RepositionSkirmishScoreBoxes(constant.PLAYER_TWO, true)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    if GetMissionWon() then
      DebugOut("P1 Wins mission message")
      XylvanianWin = true
      DeclareVictory(constant.ARMY_XYLVANIAN)
      WinMissionMP()
    else
      DebugOut("P1 Loses mission message")
      TundranWin = true
      DeclareVictory(constant.ARMY_TUNDRAN)
      WinMissionMP()
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    if GetMissionWon() then
      DebugOut("P2 Wins mission message")
      TundranWin = true
      DeclareVictory(constant.ARMY_TUNDRAN)
      WinMissionMP()
    else
      DebugOut("P2 Loses mission message")
      XylvanianWin = true
      DeclareVictory(constant.ARMY_XYLVANIAN)
      WinMissionMP()
    end
  end
  DebugOut("ALL PLAYER WIN LOSE CHECKS DONE")
  if XylvanianWin == true then
    WaitFor(1)
    repeat
      if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
        netvariable.player1.cutsceneoutroskipped = 1
        DebugOut("Killed cutscene player1")
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
        netvariable.player2.cutsceneoutroskipped = 1
        DebugOut("Killed cutscene player2")
      end
      EndFrame()
    until netvariable.player1.cutsceneoutroskipped == 1 and netvariable.player2.cutsceneoutroskipped == 1
    Kill(cutsceneoutroX)
  end
  if TundranWin == true then
    WaitFor(1)
    repeat
      if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
        netvariable.player1.cutsceneoutroskipped = 1
        DebugOut("Killed cutscene player1")
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
        netvariable.player2.cutsceneoutroskipped = 1
        DebugOut("Killed cutscene player2")
      end
      EndFrame()
    until netvariable.player1.cutsceneoutroskipped == 1 and netvariable.player2.cutsceneoutroskipped == 1
    Kill(cutsceneoutroT)
  end
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndOutro()
  CleanupSkipCutscene()
  if IsNetworkHost() then
    DebugOut("Level Ended Here")
    NetworkGameOver()
  end
end
