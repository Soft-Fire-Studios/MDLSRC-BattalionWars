function C1Bonus_Level_Win_Lose(owner)
  while true do
    if AllBazookaDead == 1 and AllHeavyTankDead == 1 and AllGruntDead == 1 then
      WaitFor(6)
      DebugOut("Mission_Won")
      ClearMessageQueue()
      DeclareVictory(constant.ARMY_TUNDRAN)
      StopScoringTimer()
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      PhoneMessage(24, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
      PhoneMessage(25, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
      PhoneMessage(26, constant.ID_NONE, 0, 6, SpriteID.CO_Herman_Sad)
      WaitFor(18)
      DebugOut("Level Won - WF invasion have been defeated")
      DebugOut("Time Taken for level = ", GetTime())
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
      break
    end
    if 0 >= NumItemsInWorld(flag.TYPE_WFRONTIER) then
      WaitFor(6)
      DebugOut("Mission_Won")
      ClearMessageQueue()
      DeclareVictory(constant.ARMY_TUNDRAN)
      StopScoringTimer()
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      PhoneMessage(24, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
      PhoneMessage(25, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
      PhoneMessage(26, constant.ID_NONE, 0, 6, SpriteID.CO_Herman_Sad)
      WaitFor(18)
      DebugOut("Level Won - all WF troops have been killed")
      DebugOut("Time Taken for level = ", GetTime())
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
      break
    end
    if AllPlayerUnitsDead(0) then
      WaitFor(6)
      DebugOut("Mission_Lost")
      ClearMessageQueue()
      DeclareVictory(constant.ARMY_WF)
      StopScoringTimer()
      PhoneMessage(20, constant.ID_NONE, 2, 8, SpriteID.CO_Nova_Sad)
      PhoneMessage(19, constant.ID_NONE, 0, 6, SpriteID.CO_Herman_Happy)
      WaitFor(14)
      DebugOut("Level Lost - all Tundrans are dead!")
      DebugOut("Time Taken for level = ", GetTime())
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
      break
    end
    WaitFor(1)
    EndFrame()
  end
  EndFrame()
  return
end
