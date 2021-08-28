function CutsceneOutroAbort(owner)
  repeat
    EndFrame()
  until OutroCutsceneStarted == 1
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if CheckSkipCutscene() then
        DebugOut("Player 1 Killed cutscene")
        Kill(cutsceneplayer1wins)
        Kill(cutsceneplayer2wins)
        netvariable.player1.skipoutro = 1
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if CheckSkipCutscene() then
        DebugOut("Player 2 Killed cutscene")
        Kill(cutsceneplayer1wins)
        Kill(cutsceneplayer2wins)
        netvariable.player2.skipoutro = 1
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        DebugOut(" In split screen - killed cutscene")
        Kill(cutsceneplayer1wins)
        Kill(cutsceneplayer2wins)
        MissionOver = 1
      end
      EndFrame()
    end
    EndFrame()
  until netvariable.player1.skipoutro == 1 and netvariable.player2.skipoutro == 1 or MissionOver == 1
  Kill(cutsceneplayer1wins)
  Kill(cutsceneplayer2wins)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  DebugOut(" Mission ended")
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    NetworkGameOver()
  end
end
