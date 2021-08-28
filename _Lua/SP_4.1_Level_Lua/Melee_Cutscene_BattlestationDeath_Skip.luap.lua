function Melee_Cutscene_BattlestationDeath_Skip(owner)
  repeat
    EndFrame()
  until CutsceneBattlestationDeathBegins == 1
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(CutsceneBattlestationDeathDead)
      CutsceneBattlestationDeathComplete = 1
    end
    EndFrame()
  until CutsceneBattlestationDeathComplete == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  FreezePlayer(constant.PLAYER_ONE)
  DeclareVictory(constant.ARMY_SOLAR)
  LoseMission(171)
end
