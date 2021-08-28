function C1M6_Level_Win_Lose(owner)
  local debugMessageDone = 0
  while true do
    if C1M1_TanksDestroyed >= 8 and C1M1_StartEndCutscene == 0 then
      C1M1_StartEndCutscene = 1
      DebugOut("C1M1_StartEndCutscene = ", C1M1_StartEndCutscene)
      ClearMessageQueue()
      PhoneMessage(83, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      WaitFor(10)
      DeclareVictory(constant.ARMY_WF)
      StopScoringTimer()
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DebugOut("Mission_Won")
      ClearMessageQueue()
      PhoneMessage(84, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      WaitFor(7)
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      DebugOut("Time Taken for level = ", GetTime())
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
      break
    end
    if AllPlayerUnitsDead(0) and C1M1_StartEndCutscene == 0 then
      C1M1_StartEndCutscene = 1
      DebugOut("C1M1_StartEndCutscene = ", C1M1_StartEndCutscene)
      DeclareVictory(constant.ARMY_TUNDRAN)
      StopScoringTimer()
      DebugOut("Mission_Lost")
      ClearMessageQueue()
      PhoneMessage(85, constant.ID_NONE, 2, 7, SpriteID.CO_T_Nova_Happy)
      PhoneMessage(86, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Herman_Sad)
      WaitFor(16)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
      break
    end
    WaitFor(1)
    EndFrame()
  end
  return
end
