function WIN_LOSE_CONDITIONS(owner)
  WaitFor(1)
  if IsNetworkHost() then
    repeat
      EndFrame()
    until TimerStarted == true and GetTimeLeft() <= 0
    EndFrame()
    WFscore = GetScoreTotals(flag.TYPE_ANGLO, constant.TOTAL_DEAD_HEALTH)
    AIscore = GetScoreTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
    ClearMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_TWO)
    DebugOut("AI score is...", AIscore)
    DebugOut("WF score is...", WFscore)
    if WFscore > AIscore then
      DebugOut("SET P1 WIN")
      SetNetworkMissionComplete(1, true, 1)
      SetNetworkMissionComplete(2, false, 175)
    end
    if AIscore > WFscore then
      DebugOut("SET P2 WIN")
      SetNetworkMissionComplete(2, true, 1)
      SetNetworkMissionComplete(1, false, 175)
    end
    if WFscore == AIscore then
      DebugOut("ITS A DRAW! SUDDEN DEATH MODE")
      netvariable.player1.SuddenDeath = true
      StoreHealthAndScoreTotals()
      ResetHealthAndScoreTotals(false)
      WaitFor(0.1)
      PhoneMessage(83, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
      repeat
        WFscore = GetScoreTotals(flag.TYPE_ANGLO, constant.TOTAL_DEAD_HEALTH)
        AIscore = GetScoreTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
        EndFrame()
      until WFscore >= 100 or AIscore >= 100
      if WFscore > AIscore then
        DebugOut("SET P1 WIN")
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 175)
      end
      if AIscore > WFscore then
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
        PhoneMessage(84, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        repeat
          WFscore = GetScoreTotals(flag.TYPE_ANGLO, constant.TOTAL_DEAD_HEALTH)
          AIscore = GetScoreTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
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
  Despawn(Troop.WF_Player)
  Despawn(Troop.WFbazooka1)
  Despawn(Troop.WFbazooka2)
  Despawn(Troop.WFbazooka3)
  Despawn(Troop.WF_AAvet1)
  Despawn(Troop.WF_Grunt1)
  Despawn(Troop.WF_Grunt2)
  Despawn(Troop.WF_Grunt3)
  Despawn(Troop.WF_Grunt4)
  Despawn(Troop.WF_Grunt5)
  Despawn(Air_Vehicle.WF_Bomber1)
  Despawn(Air_Vehicle.AI_Bomber1)
  Despawn(Ground_Vehicle.AI_HTank1)
  Despawn(Ground_Vehicle.WF_HTank1)
  Despawn(Troop.AI_Player)
  Despawn(Troop.AIbazooka1)
  Despawn(Troop.AIbazooka2)
  Despawn(Troop.AIbazooka3)
  Despawn(Troop.AI_AA_vet1)
  Despawn(Troop.AI_Grunt1)
  Despawn(Troop.AI_Grunt2)
  Despawn(Troop.AI_Grunt3)
  Despawn(Troop.AI_Grunt4)
  Despawn(Troop.AI_Grunt5)
  Spawn(Troop.WFWinners1)
  Spawn(Troop.WFWinners2)
  Spawn(Troop.WFWinners3)
  Spawn(Troop.WFWinners4)
  Spawn(Troop.WFWinners5)
  Spawn(Troop.WFWinners6)
  Spawn(Troop.WFWinners7)
  Spawn(Troop.WFWinners8)
  Spawn(Troop.WFWinners9)
  Spawn(Troop.WFWinners11)
  Spawn(Troop.AIWinners1)
  Spawn(Troop.AIWinners2)
  Spawn(Troop.AIWinners3)
  Spawn(Troop.AIWinners4)
  Spawn(Troop.AIWinners5)
  Spawn(Troop.AIWinners7)
  Spawn(Troop.AIWinners8)
  Spawn(Troop.AIWinners9)
  Spawn(Troop.AIWinners10)
  Spawn(Troop.AIWinners11)
  RepositionSkirmishScoreBoxes(constant.PLAYER_ONE, true)
  RepositionSkirmishScoreBoxes(constant.PLAYER_TWO, true)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    if GetMissionWon() then
      DebugOut("P1 Wins Message")
      FrontierWin = true
      DeclareVictory(constant.ARMY_WF)
      WinMissionMP()
    else
      AngloWin = true
      DebugOut("P1 Loses Message")
      DeclareVictory(constant.ARMY_ANGLO)
      WinMissionMP()
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    if GetMissionWon() then
      AngloWin = true
      DebugOut("P2 Wins Message")
      DeclareVictory(constant.ARMY_ANGLO)
      WinMissionMP()
    else
      FrontierWin = true
      DebugOut("P2 Loses Message")
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
  if AngloWin == true then
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
    Kill(cutsceneoutroAI)
  end
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndOutro()
  CleanupSkipCutscene()
  if IsNetworkHost() then
    DebugOut("Level Ended Here")
    NetworkGameOver()
  end
end
