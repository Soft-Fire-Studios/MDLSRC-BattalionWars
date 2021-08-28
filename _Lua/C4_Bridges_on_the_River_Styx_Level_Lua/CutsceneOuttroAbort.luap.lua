function CutsceneOuttroAbort(owner)
  repeat
    EndFrame()
  until roadtox == 1
  FreezePlayer()
  repeat
    if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED) then
      endlevel = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  until endlevel == 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 0.2)
  Kill(cutsceneouttro)
  WinMission()
end
