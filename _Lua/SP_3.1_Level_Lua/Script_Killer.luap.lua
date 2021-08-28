function Script_Killer(owner)
  local dockkill = 0
  DebugScoring = false
  repeat
    if dock == 1 and dockkill == 0 then
      Kill(script09)
      dockkill = 1
    end
    if DebugScoring == true then
      GetMissionRatings()
      WaitFor(20)
    else
      EndFrame()
    end
  until missionend == 1
  if DebugScoring == true then
    GetMissionRatings()
  end
  Kill(script02)
  Kill(script03)
  Kill(script04)
  Kill(script05)
  Kill(script06)
  Kill(script08)
  Kill(aascript)
  if dockkill == 0 then
    Kill(script09)
  end
  Kill(script10)
  Kill(script11)
  Kill(Air_Vehicle.CS_Gunship_1)
  Kill(Air_Vehicle.CS_Gunship_2)
  Kill(Air_Vehicle.CS_Gunship_3)
  Kill(Air_Vehicle.CS_Gunship_4)
  Kill(Air_Vehicle.CS_Gunship_5)
  Kill(Air_Vehicle.CS_Gunship_6)
end
