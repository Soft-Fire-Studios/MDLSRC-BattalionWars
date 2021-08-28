function RANDOM(owner)
  repeat
    random = GetRandom(255)
    EndFrame()
  until GetMissionEnded()
end
