function OWNER_RADAR_GUN(owner)
  repeat
    EndFrame()
    WaitFor(0.1)
  until IsDead(Building.radar)
  Kill(owner)
end
