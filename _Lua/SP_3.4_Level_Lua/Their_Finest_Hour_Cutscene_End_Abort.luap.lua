function Their_Finest_Hour_Cutscene_End_Abort(owner)
  CutsceneEndAbort = owner
  repeat
    EndFrame()
  until CutsceneEndBegun == 1
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      SetInvulnerable(flag.TYPE_ANGLO, 0)
      Kill(CutsceneEnd)
      DebugOut("Killed CutsceneEnd")
      CutsceneEndFinished = 1
    end
    EndFrame()
  until CutsceneEndFinished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndOutro()
  WinMission()
end
