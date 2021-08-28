function Purge_CutsceneFailSiegeGunsSkip(owner)
  repeat
    EndFrame()
  until cutsceneFailGunBegin >= 1
  WaitFor(2)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", cutsceneFailGunID)
      Kill(cutsceneFailGunID)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutsceneFailGunIsOver = 1
    end
    EndFrame()
  until cutsceneFailGunIsOver == 1
end
