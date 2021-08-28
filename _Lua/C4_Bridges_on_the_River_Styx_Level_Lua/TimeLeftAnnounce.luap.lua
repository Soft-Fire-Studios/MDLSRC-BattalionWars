function TimeLeftAnnounce(owner)
  announcer = owner
  repeat
    EndFrame()
  until cutscene == 1
  WaitFor(5)
  repeat
    EndFrame()
  until GetTimeLeft() < 300
  PhoneMessage(37, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
  DebugOut("5 minutes left")
  repeat
    EndFrame()
  until GetTimeLeft() < 240
  PhoneMessage(38, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
  DebugOut("4 minutes left")
  repeat
    EndFrame()
  until GetTimeLeft() < 180
  PhoneMessage(39, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
  DebugOut("3 minutes left")
  repeat
    EndFrame()
  until GetTimeLeft() < 120
  PhoneMessage(40, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
  DebugOut("2 minutes left")
  repeat
    EndFrame()
  until GetTimeLeft() < 60
  PhoneMessage(41, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
  DebugOut("1 minute left")
  repeat
    EndFrame()
  until GetTimeLeft() < 30
  PhoneMessage(42, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
  DebugOut("30 seconds left")
  repeat
    EndFrame()
  until GetTimeLeft() < 10
  DebugOut("10 seconds left")
  PhoneMessage(43, 0, 0, 5, SpriteID.CO_WF_Herman_Sad)
end
