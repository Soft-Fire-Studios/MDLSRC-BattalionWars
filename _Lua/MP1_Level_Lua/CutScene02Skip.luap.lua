function CutScene02Skip(owner)
  Despawn(Troop.P1CutsceneTroop)
  Despawn(Troop.P2CutsceneTroop)
  repeat
    EndFrame()
  until missionend == 1
  WaitFor(3)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      cutscenefinished02 = 1
      DebugOut(" In split screen - killed cutscene")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.skip02 = 1
      DebugOut("Player 1 Killed CutScene02 - Solar Victory Cut-Scene")
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.skip02 = 1
      DebugOut("Player 2 Killed CutScene02 - Solar Victory Cut-Scene")
    end
    EndFrame()
  until netvariable.player1.skip02 == 1 and netvariable.player2.skip02 == 1 or cutscenefinished02 == 1
  Kill(cutscene02)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  EndIntro()
  DebugOut("Level Ended Here")
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    NetworkGameOver()
  end
end
