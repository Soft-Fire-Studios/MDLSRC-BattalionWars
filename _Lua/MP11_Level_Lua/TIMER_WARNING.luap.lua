function TIMER_WARNING(owner)
  local TimerWarningGiven = false
  repeat
    WaitFor(0.5)
    if TimerStarted == true and TimerWarningGiven == false and GetTimeLeft() <= 60 then
      PhoneMessage(102, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
      PhoneMessage(103, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
      TimerWarningGiven = true
    end
    EndFrame()
  until TimerWarningGiven == true
end
