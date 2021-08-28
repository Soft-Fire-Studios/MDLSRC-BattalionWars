function Cutscene02_Abort(owner)
  repeat
    EndFrame()
  until Cutscene02Begins == 1
  PrepareSkipCutscene()
  WaitFor(1)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      netvariable.player2.skip02 = 1
      netvariable.player1.skip02 = 1
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.skip02 = 1
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.skip02 = 1
    end
    EndFrame()
  until CheckSkipCutscene() or netvariable.player1.skip02 == 1 and netvariable.player2.skip02 == 1
  Cutscene02Finished = 1
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
    SetNetworkMissionComplete(1, true)
    SetNetworkMissionComplete(2, false, 185)
    DebugOut("Level Ended Here")
    NetworkGameOver()
  end
end
