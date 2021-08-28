function CutsceneOutroAbort(owner)
  repeat
    EndFrame()
  until OutroCutsceneCanBeSkipped == 1
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        Kill(scriptWinLoseConditions)
        DebugOut(" In split screen - killed cutscene")
        MissionOver = 1
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if CheckSkipCutscene() then
        Kill(scriptWinLoseConditions)
        DebugOut("Killed cutscene")
        netvariable.player1.skipoutro = 1
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if CheckSkipCutscene() then
        Kill(scriptWinLoseConditions)
        DebugOut("Killed cutscene")
        netvariable.player2.skipoutro = 1
      end
      EndFrame()
    end
    EndFrame()
  until netvariable.player1.skipoutro == 1 and netvariable.player2.skipoutro == 1 or MissionOver == 1
  Kill(scriptWinLoseConditions)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  if IsNetworkHost() then
    DebugOut("Level Ended Here")
    NetworkGameOver()
  end
end
