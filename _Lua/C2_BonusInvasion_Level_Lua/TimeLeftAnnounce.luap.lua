function TimeLeftAnnounce(owner)
  announcer = owner
  repeat
    EndFrame()
  until cutscene == 1
  WaitFor(60)
  repeat
    EndFrame()
  until GetTimeLeft() < 480
  PhoneMessage(5, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  DebugOut("8 minutes left")
  repeat
    EndFrame()
  until GetTimeLeft() < 360
  PhoneMessage(6, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  DebugOut("6 minutes left")
  repeat
    EndFrame()
  until GetTimeLeft() < 300
  PhoneMessage(7, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  DebugOut("5 minutes left")
  repeat
    EndFrame()
  until GetTimeLeft() < 240
  PhoneMessage(8, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  DebugOut("4 minutes left")
  repeat
    EndFrame()
  until GetTimeLeft() < 180
  PhoneMessage(9, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  DebugOut("3 minutes left")
  repeat
    EndFrame()
  until GetTimeLeft() < 120
  PhoneMessage(37, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  DebugOut("2 minutes left")
  repeat
    EndFrame()
  until 60 > GetTimeLeft()
  PhoneMessage(38, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  DebugOut("1 minute left")
  repeat
    EndFrame()
  until GetTimeLeft() < 30
  PhoneMessage(39, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  DebugOut("30 seconds left")
  repeat
    EndFrame()
  until GetTimeLeft() < 10
  PhoneMessage(40, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  DebugOut("10 seconds left")
  repeat
    EndFrame()
  until GetTimeLeft() <= 0
  PhoneMessage(44, 0, 2, 5, SpriteID.CO_T_Nova_Sad)
end
