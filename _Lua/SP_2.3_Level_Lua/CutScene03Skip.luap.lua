function CutScene03Skip(owner)
  repeat
    EndFrame()
  until tundranHQ == 2
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      cutscenefinished03 = 1
      DebugOut("*CutScene03Skip* - Player 1 Killed CutScene03")
    end
    EndFrame()
  until cutscenefinished03 == 1
  ClearMessageQueue()
  Kill(cutscene03kill)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  DeclareVictory(constant.ARMY_WF)
  WinMission()
end
