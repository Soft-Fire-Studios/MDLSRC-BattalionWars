function TIMER_WARNING(owner)
  local TimerWarningGiven = false
  repeat
    WaitFor(0.5)
    if TimerStarted == true and TimerWarningGiven == false and GetTimeLeft() <= 60 then
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
      PhoneMessage(67, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO)
      TimerWarningGiven = true
    end
    EndFrame()
  until TimerWarningGiven == true
end
