function JW_AI_Bomber_Command(owner)
  local weather = 0
  script01 = owner
  repeat
    EndFrame()
  until sirencount == 1
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
  WaitFor(3.5)
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
  WaitFor(3.5)
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
  WaitFor(3.5)
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
  repeat
    EndFrame()
  until sirencount == 2
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
  WaitFor(3.5)
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
  WaitFor(3.5)
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
  repeat
    EndFrame()
  until sirencount == 3
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
  WaitFor(3.5)
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
  WaitFor(3.5)
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.PlayerCamera01)
end
