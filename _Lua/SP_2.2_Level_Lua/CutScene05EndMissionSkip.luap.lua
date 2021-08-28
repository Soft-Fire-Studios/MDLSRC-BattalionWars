function CutScene05EndMissionSkip(owner)
  repeat
    EndFrame()
  until missionend == 1
  WaitFor(3)
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("Mid Cutscene Skipped")
      EndCutscene05 = 1
    end
    EndFrame()
  until EndCutscene05 == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if missionfailed == 1 then
    LoseMission(140)
  elseif missioncomplete == 1 then
    WinMission()
  end
end
