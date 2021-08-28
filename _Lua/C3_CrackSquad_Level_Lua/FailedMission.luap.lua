function FailedMission(owner)
  local loop = 0
  repeat
    if startouttro == 1 then
      return
    end
    if AllPlayerUnitsDead(0) then
      Kill(onlygotrecon)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      PhoneMessage(48, 0, 0, 8, SpriteID.CO_WF_Herman_Sad)
      WaitFor(6)
      LoseMission(301)
      loop = 1
    end
    EndFrame()
  until loop == 1
end
