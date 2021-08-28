function FailedMission(owner)
  local loop = 0
  repeat
    EndFrame()
  until alldone == 1
  if roadtox == 1 then
    return
  end
  repeat
    if AllPlayerUnitsDead(0) then
      DeclareVictory(constant.ARMY_XYLVANIAN)
      PhoneMessage(49, 0, 0, 5, SpriteID.CO_WF_Herman_Sad)
      WaitFor(6)
      LoseMission(301)
      loop = 1
    end
    EndFrame()
  until loop == 1
end
