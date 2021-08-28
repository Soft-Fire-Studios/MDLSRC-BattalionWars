function Ice_Station_X_Cutscene04_Skipped(owner)
  repeat
    if GetCurrentMissionAttempted() == true and Cutscene04Begun == 1 and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(Cutscene04Dead)
      Cutscene04Finished = 1
    end
    EndFrame()
  until Cutscene04Finished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_TUNDRAN, 0)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 0)
  EndOutro()
  DeclareVictory(constant.ARMY_TUNDRAN)
  WinMission()
end
