function Cutscene_Outro_Skip(owner)
  repeat
    EndFrame()
  until OutroCutsceneStart == 1
  WaitFor(3)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(OutroCutscene)
      DebugOut("OutroCutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      OutroCutsceneEnd = 1
      EndFrame()
    else
    end
    EndFrame()
  until OutroCutsceneEnd == 1
  Kill(OutroCutscene)
  ListScoringUnits()
  WinMission()
end
