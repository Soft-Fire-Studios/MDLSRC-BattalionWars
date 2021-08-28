function CutScene04Skip(owner)
  repeat
    EndFrame()
  until cutscene04skip == 1
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      cutscenefinished04 = 1
      DebugOut("*CutScene04Skip* - In split screen - killed cutscene 04")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.skip04 = 1
      DebugOut("*CutScene04Skip* - Player 1 Killed CutScene04")
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.skip04 = 1
      DebugOut("*CutScene04Skip* - Player 2 Killed CutScene04")
    end
    EndFrame()
  until netvariable.player1.skip04 == 1 and netvariable.player2.skip04 == 1 or cutscenefinished04 == 1
  Kill(cutscene04)
  Kill(Ground_Vehicle.XylvanianBattlestation01)
  Kill(Ground_Vehicle.XylvanianBattlestation02)
  Kill(Ground_Vehicle.XylvanianBattlestation03)
  Kill(Ground_Vehicle.XylvanianBattlestation04)
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ClearMessageQueue(constant.PLAYER_ONE)
    StopScoringTimer()
    WinMissionCOOP()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ClearMessageQueue(constant.PLAYER_TWO)
    StopScoringTimer()
    WinMissionCOOP()
  end
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  WaitFor(1)
  DebugOut("1.")
  if IsNetworkHost() then
    NetworkGameOver()
  end
end
