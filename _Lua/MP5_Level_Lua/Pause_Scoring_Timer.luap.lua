function Pause_Scoring_Timer(owner)
  local InAMidtro = 0
  while true do
    if PauseTimerActive == 1 and InAMidtro == 0 then
      DebugOut("Midtro has begun, start up the Level Pause Timer")
      InAMidtro = 1
    elseif PauseTimerActive == 1 and InAMidtro == 1 then
      WaitFor(1)
      LevelPauseTimer = LevelPauseTimer + 1
    elseif PauseTimerActive == 0 and InAMidtro == 1 then
      DebugOut("Midtro has ended and the player has spent a total of", LevelPauseTimer, "seconds in cutscenes in this level")
      InAMidtro = 0
    else
      EndFrame()
    end
  end
end
