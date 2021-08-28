function Gambit_Part_1_WinLose(owner)
  local PlayerLoses = function()
    MissionOver = 1
    DebugOut("Mission Lost!")
    DeclareVictory(constant.ARMY_UNDERWORLD)
    FreezePlayer(constant.PLAYER_ONE)
    StopScoringTimer()
    if 1 <= DrainGateBlownUp then
      if not IsDead(Troop.Sgrunt02) then
        SetActive(Troop.Sgrunt02, constant.INACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.Sgrunt03) then
        SetActive(Troop.Sgrunt03, constant.INACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.Sgrunt04) then
        SetActive(Troop.Sgrunt04, constant.INACTIVE, constant.ADJUST_WEAPON)
      end
    end
    if 1 <= PlayerEnteredDrain and not IsDead(Troop.Sstaffbearer01) then
      SetActive(Troop.Sstaffbearer01, constant.INACTIVE, constant.ADJUST_WEAPON)
    end
    cutscenePlayerLosesBegin = 1
    repeat
      EndFrame()
    until cutsceneEndIsOver == 1
    PlayEffect(Scripted_Effect.Null, 3, 0, 0, 0)
    DebugScoring = true
    DebugOut("Debug Scoring = ", DebugScoring)
    DebugOut("Time Taken for level = ", GetTime())
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    LoseMission(196)
  end
  while true do
    if IsInArea(Troop.Sstaffbearer01, Map_Zone.Tower01) or IsInArea(GetPlayerUnit(), Map_Zone.Tower01) then
      if MissionOver == 0 then
        MissionOver = 1
        DebugOut("Mission Won!")
        FreezePlayer(constant.PLAYER_ONE)
        StopScoringTimer()
        SetObjectiveData(Objective_Marker.Tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        cutscenePlayerWinsBegin = 1
        repeat
          EndFrame()
        until cutsceneEndIsOver == 1
        DebugScoring = true
        DebugOut("Debug Scoring = ", DebugScoring)
        DebugOut("Time Taken for level = ", GetTime())
        ListScoringUnits()
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        WinMission()
        break
      end
      EndFrame()
    end
    if AllPlayerUnitsDead(constant.PLAYER_ONE) then
      if MissionOver == 0 then
        DebugOut("Player has no units")
        PlayerLoses()
        break
      end
      EndFrame()
    end
    if (IsDead(GetPlayerUnit()) or IsDead(Troop.Sgrunt01)) and MissionOver == 0 then
      DebugOut("Player is dead")
      PlayerLoses()
      break
    end
    if IsDead(Troop.Sstaffbearer01) and MissionOver == 0 then
      DebugOut("Staff Bearer is dead")
      PlayerLoses()
      break
    end
    EndFrame()
  end
end
