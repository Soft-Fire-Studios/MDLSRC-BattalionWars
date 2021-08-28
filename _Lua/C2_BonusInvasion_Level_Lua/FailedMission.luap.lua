function FailedMission(owner)
  local loop = 0
  repeat
    if missionwon == 1 then
      return
    end
    if AllPlayerUnitsDead(0) then
      missionlost = 1
      DeclareVictory(constant.ARMY_TUNDRAN)
      PhoneMessage(42, 0, 1, 8, SpriteID.CO_X_Vlad_Sad)
      PhoneMessage(43, 0, 1, 8, SpriteID.CO_X_Vlad_Sad)
      WaitFor(16)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
      loop = 1
    end
    EndFrame()
  until loop == 1
end
