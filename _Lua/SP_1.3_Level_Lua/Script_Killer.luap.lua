function Script_Killer(owner)
  DebugScoring = false
  repeat
    if DebugScoring == true then
      GetMissionRatings()
      WaitFor(10)
    else
      EndFrame()
    end
  until missionend == 1
  Kill(Script01)
  Kill(Script02)
  Kill(Script03)
  Kill(Script04)
  Kill(Script05)
  Kill(Script06)
  Kill(Script07)
  Kill(Script08)
  Kill(Script09)
  Kill(Script10)
  Kill(Script11)
  Kill(Script12)
  Kill(Script13)
  Kill(Script14)
  Kill(Script15)
end
