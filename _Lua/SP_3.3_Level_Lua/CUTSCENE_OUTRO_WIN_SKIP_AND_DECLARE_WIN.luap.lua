function CUTSCENE_OUTRO_WIN_SKIP_AND_DECLARE_WIN(owner)
  repeat
    EndFrame()
    WaitFor(0.1)
  until dreadnaughtdead == 1
  StopScoringTimer()
  DebugOut("Mission won")
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      ClearMessageQueue()
      DebugOut("cutscene skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Kill(outrocutscene)
      OutroCutsceneEnded = true
    else
    end
    EndFrame()
  until OutroCutsceneEnded == true
  EndOutro()
  WinMission()
end
