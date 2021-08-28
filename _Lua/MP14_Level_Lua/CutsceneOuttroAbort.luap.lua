function CutsceneOuttroAbort(owner)
  scriptCutsceneOutroAbort = owner
  repeat
    EndFrame()
  until startouttro == 1
  WinMissionCOOP()
  FreezePlayer(constant.PLAYER_ONE)
  FreezePlayer(constant.PLAYER_TWO)
  PrepareSkipCutscene()
  cutscenefinished = 0
  WaitFor(1)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        Kill(scriptCutsceneOutro)
        cutscenefinished = 1
        DebugOut(" In split screen - killed cutscene")
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if CheckSkipCutscene() then
        Kill(scriptCutsceneOutro)
        netvariable.player1.skippedoutro = 1
        DebugOut("Killed cutscene")
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if CheckSkipCutscene() then
        Kill(scriptCutsceneOutro)
        netvariable.player2.skippedoutro = 1
        DebugOut("Killed cutscene")
      end
      EndFrame()
    end
  until netvariable.player1.skippedoutro == 1 or netvariable.player2.skippedoutro == 1 or cutscenefinished == 1
  Kill(scriptCutsceneOutro)
  DebugOut("Killed cutscene outro")
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  DebugOut("Mission Won")
  DeclareVictory(constant.ARMY_WF)
  DeclareVictory(constant.ARMY_SOLAR)
  if IsNetworkHost() then
    NetworkGameOver()
  end
end
