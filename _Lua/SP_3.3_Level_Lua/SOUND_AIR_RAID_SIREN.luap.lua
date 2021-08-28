function SOUND_AIR_RAID_SIREN(owner)
  repeat
    EndFrame()
  until AirRaid == 1
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.cutscenecam)
  WaitFor(3.5)
  PlayEffect(Scripted_Effect.AirRaid, flag.SOUND, Camera.cutscenecam)
  WaitFor(3.5)
end
