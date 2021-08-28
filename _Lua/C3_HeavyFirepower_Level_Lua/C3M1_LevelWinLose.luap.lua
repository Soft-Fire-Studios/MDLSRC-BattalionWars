function C3M1_LevelWinLose(owner)
  while true do
    if IsDead(Ground_Vehicle.Xbattlestation0001) and IsDead(Ground_Vehicle.Xbattlestation0002) and LevelEnding == 0 then
      LevelEnding = 1
      DebugOut("Mission_Won")
      ClearMessageQueue()
      RemoveRadarEdgeObject(Ground_Vehicle.Xbattlestation0001)
      WaitFor(2)
      DeclareVictory(constant.ARMY_WF)
      StopScoringTimer()
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      ClearMessageQueue()
      PhoneMessage(47, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(48, constant.ID_NONE, 3, 4, SpriteID.CO_SE_Leiqo_Happy)
      PhoneMessage(49, constant.ID_NONE, 3, 4, SpriteID.CO_SE_Leiqo_Happy)
      WaitFor(20)
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      DebugOut("Time Taken for level = ", GetTime())
      DebugOut("Level Won - Battlestation has been destroyed")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
      break
    end
    if AllPlayerUnitsDead(0) and LevelEnding == 0 then
      LevelEnding = 1
      DeclareVictory(constant.ARMY_XYLVANIAN)
      StopScoringTimer()
      ClearMessageQueue()
      PhoneMessage(39, constant.ID_NONE, 1, 4, SpriteID.CO_X_Ingrid_Happy)
      PhoneMessage(40, constant.ID_NONE, 1, 4, SpriteID.CO_X_Ingrid_Happy)
      PhoneMessage(41, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Sad)
      WaitFor(24)
      DebugOut("Level Lost - all WF are dead!")
      DebugOut("Time Taken for level = ", GetTime())
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
      break
    end
    if IsInArea(Ground_Vehicle.Xbattlestation0001, 350, -265, 30) and LevelEnding == 0 then
      LevelEnding = 1
      DeclareVictory(constant.ARMY_XYLVANIAN)
      StopScoringTimer()
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      ClearMessageQueue()
      PhoneMessage(39, constant.ID_NONE, 1, 4, SpriteID.CO_X_Ingrid_Happy)
      PhoneMessage(40, constant.ID_NONE, 1, 4, SpriteID.CO_X_Ingrid_Happy)
      PhoneMessage(41, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Sad)
      WaitFor(24)
      DebugOut("Time Taken for level = ", GetTime())
      DebugOut("Level Lost - Battlestation has made it to the Base")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(307)
      break
    end
    EndFrame()
  end
  return
end
