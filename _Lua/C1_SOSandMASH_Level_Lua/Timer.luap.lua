function Timer(owner)
  WaitFor(1)
  repeat
    EndFrame()
  until TimeOn == 1
  SetTimer(300)
  ShowTimer(1)
  DebugOut("Timer Kicked Off")
  if NumFlagsCaptured < 3 then
    PhoneMessage(68, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
    PhoneMessage(69, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
  end
  repeat
    EndFrame()
  until GetTimeLeft() <= 180
  if NumFlagsCaptured < 3 then
    PhoneMessage(70, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
  end
  repeat
    EndFrame()
  until GetTimeLeft() <= 120
  if NumFlagsCaptured < 3 then
    PhoneMessage(71, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
  end
  repeat
    EndFrame()
  until GetTimeLeft() <= 60
  if NumFlagsCaptured < 3 then
    PhoneMessage(72, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
  end
  repeat
    EndFrame()
  until GetTimeLeft() <= 30
  if NumFlagsCaptured < 3 then
    PhoneMessage(73, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
  end
  repeat
    EndFrame()
  until 0 >= GetTimeLeft()
  if NumFlagsCaptured < 3 then
    TimeLose = 1
  end
end
