function CutScene03Skip(owner)
  repeat
    EndFrame()
  until missionend == 1
  PrepareSkipCutscene()
  WaitFor(4)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Cutscene03End = 1
      DebugOut(" In split screen - killed cutscene")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.Cutscene03Skip = 1
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.Cutscene03Skip = 1
    end
    EndFrame()
  until netvariable.player1.Cutscene03Skip == 1 and netvariable.player2.Cutscene03Skip == 1 or Cutscene03End == 1
  Kill(KillCutScene03)
  Kill(KillCutScene04)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  EndOutro()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    NetworkGameOver()
  end
end
