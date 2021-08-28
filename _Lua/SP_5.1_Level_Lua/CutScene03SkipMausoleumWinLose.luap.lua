function CutScene03SkipMausoleumWinLose(owner)
  repeat
    EndFrame()
  until mausoleumcutscene == 1
  if losemausoleumcutscene == 1 then
    WaitFor(1)
    PrepareSkipCutscene()
    repeat
      if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
        cutsceneskip03 = 1
        DebugOut("Player 1 Killed CutScene02")
      end
      EndFrame()
    until cutsceneskip03 == 1 or cutscenefinished03 == 1
    ClearMessageQueue()
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    if losecondition01 == 1 or losecondition02 == 1 then
      LoseMission(180)
    else
      LoseMission(150)
    end
  end
  if winmausoleumcutscene == 1 then
    WaitFor(1)
    PrepareSkipCutscene()
    repeat
      if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
        cutsceneskip03 = 1
        DebugOut("Player 1 Killed CutScene02")
      end
      EndFrame()
    until cutsceneskip03 == 1 or cutscenefinished03 == 1
    ClearMessageQueue()
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    WinMission()
  end
end
