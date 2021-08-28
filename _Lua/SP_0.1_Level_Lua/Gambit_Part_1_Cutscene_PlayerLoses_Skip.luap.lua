function Gambit_Part_1_Cutscene_PlayerLoses_Skip(owner)
  WaitFor(1.5)
  repeat
    if cutscenePlayerLosesBegin > 1 and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", cutscenePlayerLoses)
      if cutscenePlayerLoses > 0 then
        Kill(cutscenePlayerLoses)
      end
      ClearMessageQueue(constant.PLAYER_ONE)
      EndOutro()
      cutsceneEndIsOver = 1
    end
    EndFrame()
  until cutsceneEndIsOver == 1
end
