function CutsceneOuttroAbort(owner)
  repeat
    EndFrame()
  until startouttro == 1
  FreezePlayer()
  WaitFor(1)
  repeat
    if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED) then
      Kill(cutsceneouttro)
      cutsceneouttro = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  until cutsceneouttro == 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  WinMission()
end
