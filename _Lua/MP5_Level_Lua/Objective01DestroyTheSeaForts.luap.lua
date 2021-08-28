function Objective01DestroyTheSeaForts(owner)
  local seaforts = 0
  local seafort01 = 0
  local seafort02 = 0
  local seafort01Objective = 0
  local seafort02Objective = 0
  repeat
    EndFrame()
  until GetHealthPercent(Building.SeaFort01) < 90 or 90 > GetHealthPercent(Building.SeaFort02)
  PhoneMessage(29, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(26, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
  while missionend == 0 do
    if seafort01 == 0 and IsDead(Building.SeaFort01) then
      SetObjectiveData(Objective_Marker.Objective01DestroySeaFort01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Objective01ProtectSeaFort01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(Building.AA1)
      Kill(Building.AA2)
      Kill(Building.AA3)
      Kill(Building.AA4)
      Kill(Building.AA5)
      Kill(Building.AA6)
      seaforts = seaforts + 1
      seafort01 = 1
      DebugOut("*Objective01DestroyTheSeaForts* - Sea Fort 01 has been destroyed")
    end
    EndFrame()
    if seafort02 == 0 and IsDead(Building.SeaFort02) then
      SetObjectiveData(Objective_Marker.Objective01DestroySeaFort02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Objective01ProtectSeaFort02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(Building.AAA1)
      Kill(Building.AAA2)
      Kill(Building.AAA3)
      Kill(Building.AAA4)
      Kill(Building.AAA5)
      Kill(Building.AAA6)
      seaforts = seaforts + 1
      seafort02 = 1
      DebugOut("*Objective01DestroyTheSeaForts* - Sea Fort 02 has been destroyed")
    end
    EndFrame()
    if seaforts == 1 and seafort01Objective == 0 then
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      PhoneMessage(16, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.Player1DestroySeaFort00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Player1DestroySeaFort01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Player2ProtectSeaFort02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Player2ProtectSeaFort01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      seafort01Objective = 1
    end
    EndFrame()
    if seaforts == 2 and seafort02Objective == 0 then
      PauseTimerActive = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectivesResult(true, false, false)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectivesResult(false, true, true)
      end
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetInvulnerable(flag.TYPE_SOLAR, 1)
        FreezePlayer(constant.PLAYER_ONE)
        ClearMessageQueue(constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetInvulnerable(flag.TYPE_ANGLO, 1)
        FreezePlayer(constant.PLAYER_TWO)
        ClearMessageQueue(constant.PLAYER_TWO)
      end
      PhoneMessage(67, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      PhoneMessage(17, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.Player1DestroySeaFort00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Player1DestroySeaFort01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Player1DestroySeaFort02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Player1DestroySeaFort02, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Player2ProtectSeaFort02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Player2ProtectSeaFort01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Player2ProtectSeaFort00, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Player2ProtectSeaFort00, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.AngloSpawn01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.AngloSpawnZone01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SolarSpawn01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SolarSpawnZone01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.AngloSpawn02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.AngloSpawnZone02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SolarSpawn02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SolarSpawnZone02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Objective02LighthouseDestroy, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Objective02LighthouseProtect, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Player2ProtectLighthouse, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Player1DestroyLighthouse, constant.OBJECTIVE_DATA_VISIBLE, 1)
      TimerPaused = GetTimeLeft()
      SeaFortDead = 3
      StopScoringTimer()
      ShowTimer(0)
      seafort02Objective = 1
      WaitFor(8)
      SeaFortDead = 2
      break
    end
    EndFrame()
  end
end
