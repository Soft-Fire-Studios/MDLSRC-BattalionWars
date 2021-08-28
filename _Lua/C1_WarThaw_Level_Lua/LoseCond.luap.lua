function LoseCond(owner)
  repeat
    EndFrame()
  until AllPlayerUnitsDead(0)
  if wonmission == 1 then
    return
  end
  wonmission = 1
  ClearMessageQueue()
  PhoneMessage(66, 0, 0, 4, SpriteID.CO_WF_Herman_Sad)
  PhoneMessage(67, 0, 2, 4, SpriteID.CO_T_Gorgi_Sad)
  DeclareVictory(constant.ARMY_TUNDRAN)
  WaitFor(15)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  LoseMission(301)
  EndFrame()
end
