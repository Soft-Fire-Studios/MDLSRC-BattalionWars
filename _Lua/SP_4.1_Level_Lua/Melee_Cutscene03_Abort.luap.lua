function Melee_Cutscene03_Abort(owner)
  repeat
    EndFrame()
  until Cutscene03Begins == 1
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Cutscene03Complete = 1
    end
    EndFrame()
  until Cutscene03Complete == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndOutro()
  WinMission()
end
