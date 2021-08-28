function TIMER_WARNING(owner)
  local TimerWarningGiven = false
  repeat
    WaitFor(0.5)
    if TimerStarted == true and TimerWarningGiven == false and GetTimeLeft() <= 60 then
      PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(88, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
      TimerWarningGiven = true
    end
    EndFrame()
  until TimerWarningGiven == true
end
