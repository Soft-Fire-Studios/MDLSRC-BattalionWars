function LostMission(owner)
  repeat
    EndFrame()
  until missionfailed == 1
  if missionwon == 1 then
    return
  end
  DeclareVictory(constant.ARMY_TUNDRAN)
  if AllPlayerUnitsDead(0) then
    EndFrame()
    do break end
    while GetPlayerUnit() == nil do
      EndFrame()
    end
  end
  FreezePlayer()
  Kill(announcer)
  missionlost = 1
  ClearMessageQueue()
  PhoneMessage(24, 0, 1, 9, SpriteID.CO_X_Vlad_Sad)
  PhoneMessage(26, 0, 2, 5, SpriteID.CO_T_Nova_Happy)
  PhoneMessage(27, 0, 2, 8, SpriteID.CO_T_Nova_Happy)
  WaitFor(26)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  LoseMission(310)
end
