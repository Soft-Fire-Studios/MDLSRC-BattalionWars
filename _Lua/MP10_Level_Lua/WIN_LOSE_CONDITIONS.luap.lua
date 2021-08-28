function WIN_LOSE_CONDITIONS(owner)
  WaitFor(1)
  if IsNetworkHost() then
    repeat
      EndFrame()
    until TimerStarted == true and GetTimeLeft() <= 0
    EndFrame()
    SEscore = GetScoreTotals(flag.TYPE_UNDERWORLD, constant.TOTAL_DEAD_HEALTH)
    ILscore = GetScoreTotals(flag.TYPE_SOLAR, constant.TOTAL_DEAD_HEALTH)
    ClearMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_TWO)
    DebugOut("SE score is...", SEscore)
    DebugOut("IL score is...", ILscore)
    if SEscore > ILscore then
      DebugOut("SET P1 WIN")
      SetNetworkMissionComplete(1, true, 1)
      SetNetworkMissionComplete(2, false, 175)
    end
    if ILscore > SEscore then
      DebugOut("SET P2 WIN")
      SetNetworkMissionComplete(2, true, 1)
      SetNetworkMissionComplete(1, false, 175)
    end
    if SEscore == ILscore then
      DebugOut("ITS A DRAW! SUDDEN DEATH MODE")
      netvariable.player1.SuddenDeath = true
      StoreHealthAndScoreTotals()
      ResetHealthAndScoreTotals(false)
      WaitFor(0.1)
      PhoneMessage(83, constant.ID_NONE, CO01_DialogBoxColour, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      repeat
        SEscore = GetScoreTotals(flag.TYPE_UNDERWORLD, constant.TOTAL_DEAD_HEALTH)
        ILscore = GetScoreTotals(flag.TYPE_SOLAR, constant.TOTAL_DEAD_HEALTH)
        EndFrame()
      until SEscore >= 100 or ILscore >= 100
      if SEscore > ILscore then
        DebugOut("SET P1 WIN")
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 175)
      end
      if ILscore > SEscore then
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
        PhoneMessage(84, constant.ID_NONE, CO02_DialogBoxColour, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        repeat
          SEscore = GetScoreTotals(flag.TYPE_UNDERWORLD, constant.TOTAL_DEAD_HEALTH)
          ILscore = GetScoreTotals(flag.TYPE_SOLAR, constant.TOTAL_DEAD_HEALTH)
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
  Despawn(Troop.SEAntiAir1)
  Despawn(Troop.SEGrunt1)
  Despawn(Troop.SEGrunt2)
  Despawn(Troop.SEGrunt3)
  Despawn(Troop.SEGrunt4)
  Despawn(Troop.SE_Player)
  Despawn(Troop.SEHose1)
  Despawn(Troop.SEHose2)
  Despawn(Troop.SEBazooka1)
  Despawn(Troop.SEBazooka2)
  Despawn(Troop.SEBazooka3)
  Despawn(Troop.SEBazooka4)
  Despawn(Troop.ILAntiAir1)
  Despawn(Troop.ILGrunt1)
  Despawn(Troop.ILGrunt2)
  Despawn(Troop.ILGrunt3)
  Despawn(Troop.ILGrunt4)
  Despawn(Troop.IL_Player)
  Despawn(Troop.ILHose1)
  Despawn(Troop.ILHose2)
  Despawn(Troop.ILBazooka1)
  Despawn(Troop.ILBazooka2)
  Despawn(Troop.ILBazooka3)
  Despawn(Troop.ILBazooka4)
  Despawn(Air_Vehicle.ILGunship)
  Despawn(Air_Vehicle.SEGunship)
  Despawn(Ground_Vehicle.ILhTank)
  Despawn(Ground_Vehicle.SEhTank)
  Spawn(Troop.WinCutsceneLegionTroop1)
  Spawn(Troop.WinCutsceneLegionTroop2)
  Spawn(Troop.WinCutsceneLegionTroop3)
  Spawn(Troop.WinCutsceneLegionTroop4)
  Spawn(Troop.WinCutsceneLegionTroop5)
  Spawn(Troop.WinCutsceneLegionTroop6)
  Spawn(Troop.WinCutsceneLegionTroop7)
  Spawn(Troop.WinCutsceneLegionTroop8)
  Spawn(Troop.WinCutsceneLegionTroop9)
  Spawn(Troop.WinCutsceneLegionTroop10)
  Spawn(Troop.WinCutsceneLegionTroop11)
  Spawn(Troop.WinCutsceneLegionTroop12)
  Spawn(Troop.WinCutsceneSolarTroop1)
  Spawn(Troop.WinCutsceneSolarTroop2)
  Spawn(Troop.WinCutsceneSolarTroop3)
  Spawn(Troop.WinCutsceneSolarTroop4)
  Spawn(Troop.WinCutsceneSolarTroop5)
  Spawn(Troop.WinCutsceneSolarTroop6)
  Spawn(Troop.WinCutsceneSolarTroop7)
  Spawn(Troop.WinCutsceneSolarTroop8)
  Spawn(Troop.WinCutsceneSolarTroop9)
  Spawn(Troop.WinCutsceneSolarTroop10)
  Spawn(Troop.WinCutsceneSolarTroop11)
  Spawn(Troop.WinCutsceneSolarTroop12)
  RepositionSkirmishScoreBoxes(constant.PLAYER_ONE, true)
  RepositionSkirmishScoreBoxes(constant.PLAYER_TWO, true)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    if GetMissionWon() then
      SolarWin = true
      DeclareVictory(constant.ARMY_SOLAR)
      WinMissionMP()
    else
      LegionWin = true
      DeclareVictory(constant.ARMY_UNDERWORLD)
      WinMissionMP()
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    if GetMissionWon() then
      LegionWin = true
      DeclareVictory(constant.ARMY_UNDERWORLD)
      WinMissionMP()
    else
      SolarWin = true
      DeclareVictory(constant.ARMY_SOLAR)
      WinMissionMP()
    end
  end
  DebugOut("ALL PLAYER WIN LOSE CHECKS DONE")
  if SolarWin == true then
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
    Kill(cutsceneoutroSE)
  end
  if LegionWin == true then
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
    Kill(cutsceneoutroIL)
  end
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndOutro()
  CleanupSkipCutscene()
  if IsNetworkHost() then
    DebugOut("Level Ended Here")
    NetworkGameOver()
  end
end
