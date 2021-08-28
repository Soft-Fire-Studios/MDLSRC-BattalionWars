function CUTSCENE_OUTRO_LOSE_SKIP(owner)
  repeat
    EndFrame()
  until StatueDead == true
  DebugOut("Mission lost")
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      ClearMessageQueue()
      DebugOut("cutscene skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Kill(outrocutscenelose)
      OutroCutsceneEndedLose = true
    else
    end
    EndFrame()
  until OutroCutsceneEndedLose == true
  EndOutro()
  LoseMission(164)
end
