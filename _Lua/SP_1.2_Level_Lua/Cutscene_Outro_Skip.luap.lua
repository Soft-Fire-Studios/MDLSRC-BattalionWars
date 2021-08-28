function Cutscene_Outro_Skip(owner)
  repeat
    EndFrame()
  until MissionWin == 1
  WaitFor(2)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(outrocutscene)
      DebugOut("Outro cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      OutroCutsceneEnded = true
      EndFrame()
    else
    end
    EndFrame()
  until OutroCutsceneEnded == true
  EndOutro()
  WinMission()
end
