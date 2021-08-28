function JW_Script_Killer(owner)
  DebugScoring = false
  repeat
    if DebugScoring == true then
      GetMissionRatings()
      WaitFor(10)
    else
      EndFrame()
    end
  until missionend == 1
  Kill(script01)
  Kill(script02)
  Kill(script03)
  Kill(script04)
  Kill(script05)
  Kill(script06)
end
