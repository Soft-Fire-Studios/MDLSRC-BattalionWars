function Timer(owner)
  WaitFor(2)
  TimerScript = owner
  repeat
    EndFrame()
  until TimeGo == 1
  SetTimer(360)
  ShowTimer(1)
  repeat
    EndFrame()
  until GetTimeLeft() <= 240
  if 2 < LevelState then
    PhoneMessage(36, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
  end
  repeat
    EndFrame()
  until GetTimeLeft() <= 120
  PhoneMessage(37, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
  repeat
    EndFrame()
  until GetTimeLeft() <= 60
  PhoneMessage(38, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
  repeat
    EndFrame()
  until GetTimeLeft() <= 30
  PhoneMessage(39, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
  repeat
    EndFrame()
  until GetTimeLeft() <= 0
  TimeUp = 1
end
