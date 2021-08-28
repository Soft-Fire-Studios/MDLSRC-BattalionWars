function RAT_Cutscene_End_Skip(owner)
  repeat
    EndFrame()
  until CutsceneEndStart == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", CutsceneEndID)
      Kill(CutsceneEndID)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      CutsceneEndStart = 2
    end
    EndFrame()
  until CutsceneEndStart == 2
  DebugOut("the player has completed the level")
  missionend = 1
  missioncomplete = 1
  DeclareVictory(constant.ARMY_TUNDRAN)
  DebugScoring = true
  DebugOut("Debug Scoring = ", DebugScoring)
  DebugOut("Time Taken for level = ", GetTime())
  ListScoringUnits()
  WinMission()
end
