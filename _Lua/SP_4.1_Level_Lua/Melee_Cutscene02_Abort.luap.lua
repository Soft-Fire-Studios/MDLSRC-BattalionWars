function Melee_Cutscene02_Abort(owner)
  repeat
    EndFrame()
  until Cutscene02Begins == 1
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Cutscene02Complete = 1
    end
    EndFrame()
  until Cutscene02Complete == 1
end
