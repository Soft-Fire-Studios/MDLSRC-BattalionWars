function s2_levelwinlose(owner)
  OutOfBoundsMessageInfo(59, 0, 5, SpriteID.CO_WF_Austin_Sad)
  function s2_LevelWon()
    DebugOut("Level Won")
    DebugOut("Time Taken for level = ", GetTime())
    DebugScoring = true
    DebugOut("Debug Scoring = ", DebugScoring)
    WinMission()
  end
  function s2_LevelLost()
    DebugOut("Level Lost")
    DebugOut("Time Taken for level = ", GetTime())
    LoseMission(301)
  end
end
