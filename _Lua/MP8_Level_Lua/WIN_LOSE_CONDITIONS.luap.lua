function WIN_LOSE_CONDITIONS(owner)
  cutsceneoutroabort = owner
  WaitFor(1)
  if IsNetworkHost() then
    repeat
      EndFrame()
    until TimerStarted == true and GetTimeLeft() <= 0
    EndFrame()
    WFscore = GetScoreTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_DEAD_HEALTH)
    XYscore = GetScoreTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
    ClearMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_TWO)
    DebugOut("WF score is...", WFscore)
    DebugOut("XY score is...", XYscore)
    if WFscore > XYscore then
      DebugOut("SET P1 WIN")
      SetNetworkMissionComplete(1, true, 1)
      SetNetworkMissionComplete(2, false, 175)
    end
    if XYscore > WFscore then
      DebugOut("SET P2 WIN")
      SetNetworkMissionComplete(2, true, 1)
      SetNetworkMissionComplete(1, false, 175)
    end
    if WFscore == XYscore then
      DebugOut("ITS A DRAW! SUDDEN DEATH MODE")
      netvariable.player1.SuddenDeath = true
      StoreHealthAndScoreTotals()
      ResetHealthAndScoreTotals(false)
      WaitFor(0.1)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(26, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
      repeat
        WFscore = GetScoreTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_DEAD_HEALTH)
        XYscore = GetScoreTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
        EndFrame()
      until WFscore >= 100 or XYscore >= 100
      if WFscore > XYscore then
        DebugOut("SET P1 WIN")
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 175)
      end
      if XYscore > WFscore then
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
        DebugOut("ITS A DRAW! SUDDEN DEATH MODE")
        StoreHealthAndScoreTotals()
        ResetHealthAndScoreTotals(false)
        WaitFor(0.1)
        ClearMessageQueue(constant.PLAYER_TWO)
        PhoneMessage(27, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO)
        repeat
          WFscore = GetScoreTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_DEAD_HEALTH)
          XYscore = GetScoreTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
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
  Despawn(Water_Vehicle.WFfrigate1)
  Despawn(Water_Vehicle.WFsub1)
  Despawn(Water_Vehicle.WFsub2)
  Despawn(Water_Vehicle.WFDread)
  Despawn(Air_Vehicle.WF_Bomber1)
  Despawn(Water_Vehicle.XYfrigate1)
  Despawn(Water_Vehicle.XYsub1)
  Despawn(Water_Vehicle.XYsub2)
  Despawn(Water_Vehicle.XYDread)
  Despawn(Air_Vehicle.XY_Bomber1)
  RepositionSkirmishScoreBoxes(constant.PLAYER_ONE, true)
  RepositionSkirmishScoreBoxes(constant.PLAYER_TWO, true)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    if GetMissionWon() then
      DebugOut("P1 Wins Message")
      FrontierWin = true
      WinMissionMP()
    else
      DebugOut("P1 Loses Message")
      XylvanianWin = true
      WinMissionMP()
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    if GetMissionWon() then
      DebugOut("P2 Wins Message")
      XylvanianWin = true
      WinMissionMP()
    else
      DebugOut("P2 Loses Message")
      FrontierWin = true
      WinMissionMP()
    end
  end
  DebugOut("ALL PLAYER WIN LOSE CHECKS DONE")
  if FrontierWin == true then
    Spawn(Water_Vehicle.WFwinXYDreadnought)
    Spawn(Water_Vehicle.WFwinWFDreadnought)
    SetHealthPercent(Water_Vehicle.WFwinXYDreadnought, 50)
    FollowWaypoint(Water_Vehicle.WFwinWFDreadnought, Waypoint.windread, 0, 0, constant.ORDER_FORCED)
    FollowWaypoint(Water_Vehicle.WFwinXYDreadnought, Waypoint.losedread, 0, 0, constant.ORDER_FORCED)
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
  if XylvanianWin == true then
    Spawn(Water_Vehicle.XYwinXYDreadnought)
    Spawn(Water_Vehicle.XYwinWFDreadnought)
    SetHealthPercent(Water_Vehicle.XYwinWFDreadnought, 50)
    FollowWaypoint(Water_Vehicle.XYwinXYDreadnought, Waypoint.windread, 0, 0, constant.ORDER_FORCED)
    FollowWaypoint(Water_Vehicle.XYwinWFDreadnought, Waypoint.losedread, 0, 0, constant.ORDER_FORCED)
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
    Kill(cutsceneoutroXY)
  end
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndOutro()
  CleanupSkipCutscene()
  if IsNetworkHost() then
    DebugOut("Level Ended Here")
    NetworkGameOver()
  end
end
