function WonMission(owner)
  repeat
    EndFrame()
  until choppersdead == 4
  if missionlost == 1 then
    return
  end
  ShowTimer(0)
  ClearMessageQueue()
  PhoneMessage(28, 0, 1, 7, SpriteID.CO_X_Vlad_Happy)
  DebugOut("You have 30 seconds before the level ends")
  WaitFor(30)
  if missionlost == 1 then
    return
  end
  missionwon = 1
  FreezePlayer()
  DeclareVictory(constant.ARMY_XYLVANIAN)
  PhoneMessage(29, 0, 1, 10, SpriteID.CO_X_Vlad_Happy)
  WaitFor(10)
  StopScoringTimer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  WinMission()
end
