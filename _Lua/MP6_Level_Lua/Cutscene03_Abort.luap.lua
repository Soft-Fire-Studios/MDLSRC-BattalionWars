function Cutscene03_Abort(owner)
  repeat
    EndFrame()
  until Cutscene03Begins == 1
  PrepareSkipCutscene()
  WaitFor(1)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      netvariable.player2.skip03 = 1
      netvariable.player1.skip03 = 1
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.skip03 = 1
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.skip03 = 1
    end
    EndFrame()
    EndFrame()
  until CheckSkipCutscene() or netvariable.player1.skip03 == 1 and netvariable.player2.skip03 == 1
  Cutscene03Finished = 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Kill(cutsceneabort)
  EndOutro()
  CleanupSkipCutscene()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WinMissionMP()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    WinMissionMP()
  end
  if IsNetworkHost() then
    SetNetworkMissionComplete(2, true)
    SetNetworkMissionComplete(1, false, 184)
    DebugOut("Level Ended Here")
    NetworkGameOver()
  end
end
