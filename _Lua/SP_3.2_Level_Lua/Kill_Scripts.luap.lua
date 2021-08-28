function Kill_Scripts(owner)
  DebugScoring = true
  repeat
    EndFrame()
  until missionend == 1
  DebugOut("Win / Lose Triggered, Killing All Other Scripts")
  Kill(script01)
  Kill(script02)
  Kill(script03)
  Kill(script04)
  Kill(script05)
  Kill(script06)
  Kill(script07)
  Kill(script09)
  Kill(script10)
  Kill(script12)
end
