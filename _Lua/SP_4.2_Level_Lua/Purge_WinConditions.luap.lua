function Purge_WinConditions(owner)
  while missionend == 0 do
    if ForcefieldDown >= 1 and IsDead(Air_Vehicle.SolarGunship01) and IsDead(Air_Vehicle.SolarGunship02) and IsDead(Ground_Vehicle.Stank12) and IsDead(Ground_Vehicle.SolarHeavyTank02) and IsDead(Ground_Vehicle.SolarHeavyTank03) and IsDead(Ground_Vehicle.Stank10) then
      missionend = 1
      ShowTimer(0)
      FreezePlayer(constant.PLAYER_ONE)
      StopScoringTimer()
      SetInvulnerable(flag.TYPE_SOLAR, true)
      SetInvulnerable(flag.TYPE_UNDERWORLD, true)
      SetObjectiveData(Objective.SolarHQObjective01, constant.OBJECTIVE_DATA_STATE, 1)
      cutsceneEndBegin = 1
      repeat
        EndFrame()
      until cutsceneEndIsOver == 1
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      DebugOut("Time Taken for level = ", GetTime())
      ListScoringUnits()
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
      break
    end
    WaitFor(1)
    EndFrame()
  end
end
