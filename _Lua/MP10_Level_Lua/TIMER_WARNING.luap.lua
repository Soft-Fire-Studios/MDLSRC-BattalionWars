function TIMER_WARNING(owner)
  local TimerWarningGiven = false
  repeat
    WaitFor(0.5)
    if TimerStarted == true and TimerWarningGiven == false and GetTimeLeft() <= 60 then
      PhoneMessage(101, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      PhoneMessage(102, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
      TimerWarningGiven = true
    end
    EndFrame()
  until TimerWarningGiven == true
end
