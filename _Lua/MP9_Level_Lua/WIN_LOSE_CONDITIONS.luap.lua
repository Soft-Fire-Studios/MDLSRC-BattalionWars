function WIN_LOSE_CONDITIONS(owner)
  WaitFor(1)
  if IsNetworkHost() then
    repeat
      EndFrame()
    until TimerStarted == true and GetTimeLeft() <= 0
    EndFrame()
    WFscore = GetScoreTotals(flag.TYPE_TUNDRAN, constant.TOTAL_DEAD_HEALTH)
    Tscore = GetScoreTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
    ClearMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_TWO)
    DebugOut("T score is...", Tscore)
    DebugOut("WF score is...", WFscore)
    if WFscore > Tscore then
      DebugOut("SET P1 WIN")
      SetNetworkMissionComplete(1, true, 1)
      SetNetworkMissionComplete(2, false, 175)
    end
    if Tscore > WFscore then
      DebugOut("SET P2 WIN")
      SetNetworkMissionComplete(2, true, 1)
      SetNetworkMissionComplete(1, false, 175)
    end
    if WFscore == Tscore then
      DebugOut("ITS A DRAW! SUDDEN DEATH MODE")
      netvariable.player1.SuddenDeath = true
      StoreHealthAndScoreTotals()
      ResetHealthAndScoreTotals(false)
      WaitFor(0.1)
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      repeat
        Tscore = GetScoreTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
        WFscore = GetScoreTotals(flag.TYPE_TUNDRAN, constant.TOTAL_DEAD_HEALTH)
        EndFrame()
      until WFscore >= 100 or Tscore >= 100
      if WFscore > Tscore then
        DebugOut("SET P1 WIN")
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 175)
      end
      if Tscore > WFscore then
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
        PhoneMessage(66, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        repeat
          Tscore = GetScoreTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
          WFscore = GetScoreTotals(flag.TYPE_TUNDRAN, constant.TOTAL_DEAD_HEALTH)
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
  Despawn(Ground_Vehicle.WFhtank1)
  Despawn(Troop.WFgrunt1)
  Despawn(Troop.WFgrunt2)
  Despawn(Troop.WFgrunt3)
  Despawn(Troop.WFgrunt4)
  Despawn(Troop.WFgrunt5)
  Despawn(Troop.WFAA1)
  Despawn(Troop.WFBazooka1)
  Despawn(Troop.WFBazooka2)
  Despawn(Ground_Vehicle.Thtank1)
  Despawn(Troop.Tgrunt1)
  Despawn(Troop.Tgrunt2)
  Despawn(Troop.Tgrunt3)
  Despawn(Troop.Tgrunt4)
  Despawn(Troop.Tgrunt5)
  Despawn(Troop.TAA1)
  Despawn(Troop.TBazooka1)
  Despawn(Troop.TBazooka2)
  Despawn(Air_Vehicle.TGunship1)
  Despawn(Air_Vehicle.WFGunship1)
  Spawn(Troop.WFWinOutroGrunt1)
  Spawn(Troop.WFWinOutroGrunt2)
  Spawn(Troop.WFWinOutroGrunt3)
  Spawn(Troop.WFWinOutroGrunt4)
  Spawn(Troop.WFWinOutroGrunt5)
  Spawn(Troop.WFWinOutroGrunt6)
  Spawn(Troop.WFWinOutroGrunt7)
  Spawn(Troop.WFWinOutroGrunt8)
  Spawn(Troop.TTWinOutroGrunt1)
  Spawn(Troop.TTWinOutroGrunt2)
  Spawn(Troop.TTWinOutroGrunt3)
  Spawn(Troop.TTWinOutroGrunt4)
  Spawn(Troop.TTWinOutroGrunt5)
  Spawn(Troop.TTWinOutroGrunt6)
  Spawn(Troop.TTWinOutroGrunt7)
  Spawn(Troop.TTWinOutroGrunt8)
  RepositionSkirmishScoreBoxes(constant.PLAYER_ONE, true)
  RepositionSkirmishScoreBoxes(constant.PLAYER_TWO, true)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    if GetMissionWon() then
      DebugOut("P1 Wins Message")
      FrontierWin = true
      DeclareVictory(constant.ARMY_WF)
      WinMissionMP()
    else
      DebugOut("P1 Loses Message")
      TundranWin = true
      DeclareVictory(constant.ARMY_TUNDRAN)
      WinMissionMP()
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    if GetMissionWon() then
      DebugOut("P2 Wins Message")
      TundranWin = true
      DeclareVictory(constant.ARMY_TUNDRAN)
      WinMissionMP()
    else
      DebugOut("P2 Loses Message")
      FrontierWin = true
      DeclareVictory(constant.ARMY_WF)
      WinMissionMP()
    end
  end
  DebugOut("ALL PLAYER WIN LOSE CHECKS DONE")
  if FrontierWin == true then
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
    Kill(cutsceneoutroWF)
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
