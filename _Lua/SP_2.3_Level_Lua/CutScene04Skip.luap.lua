function CutScene04Skip(owner)
  repeat
    EndFrame()
  until cutscene04 == 1
  DebugOut("CutScene04Skip - End Cutscene 1")
  WaitFor(1)
  PrepareSkipCutscene()
  DebugOut("CutScene04Skip - End Cutscene 2")
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      cutscenefinished04 = 1
      DebugOut("*CutScene04Skip* - Player 1 Killed CutScene04")
    end
    EndFrame()
    DebugOut("CutScene04Skip - End Cutscene 3")
  until cutscenefinished04 == 1
  DebugOut("CutScene04Skip - End Cutscene 4")
  ClearMessageQueue()
  Kill(cutscene04kill)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  DebugOut("CutScene04Skip - End Cutscene 5")
  LoseMission(175)
end
