function MP3_Cutscene_End_Skip(owner)
  local EndCutscene = function()
    DebugOut("Killed cutscene", cutsceneEndID)
    if cutsceneEndID >= 2 then
      Kill(cutsceneEndID)
    end
    CutsceneEnd = 1
    DebugScoring = true
    DebugOut("Debug Scoring = ", DebugScoring)
    DebugOut("Time Taken for level = ", GetTime())
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.winner == 1 then
      DebugOut("WF WIN P1")
      if IsNetworkHost() == true then
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 166)
        NetworkGameOver()
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.winner == 1 then
      DebugOut("WF WIN P2")
      if IsNetworkHost() == true then
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 166)
        NetworkGameOver()
      end
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.winner == 2 then
      DebugOut("TUNDRANS WIN P1")
      if IsNetworkHost() == true then
        SetNetworkMissionComplete(1, false, 176)
        SetNetworkMissionComplete(2, true, 1)
        NetworkGameOver()
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.winner == 2 then
      DebugOut("TUNDRANS WIN P2")
      if IsNetworkHost() == true then
        SetNetworkMissionComplete(1, false, 176)
        SetNetworkMissionComplete(2, true, 1)
        NetworkGameOver()
      end
    end
  end
  repeat
    EndFrame()
  until missionend == 1
  WaitFor(2)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.cutsceneendskipped = 1
      DebugOut("Killed cutscene end player1")
      EndCutscene()
      break
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.cutsceneendskipped = 1
      DebugOut("Killed cutscene end player2")
      EndCutscene()
      break
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and IsNetworkPlayer(constant.PLAYER_TWO) and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or netvariable.player2.cutsceneendskipped == 1 or netvariable.player1.cutsceneendskipped == 1) then
      netvariable.player1.cutsceneendskipped = 1
      netvariable.player2.cutsceneendskipped = 1
      DebugOut("Killed end  level cutscene player1&2 - split screen")
      EndCutscene()
      break
    end
    EndFrame()
  until CutsceneEnd == 1
  CleanupSkipCutscene()
end
