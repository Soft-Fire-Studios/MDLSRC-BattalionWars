function TIMER_WARNING(owner)
  local TimerWarningGiven = false
  repeat
    WaitFor(0.5)
    if TimerStarted == true and TimerWarningGiven == false and GetTimeLeft() <= 60 then
      PhoneMessage(87, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
      PhoneMessage(86, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
      TimerWarningGiven = true
    end
    EndFrame()
  until TimerWarningGiven == true
end
