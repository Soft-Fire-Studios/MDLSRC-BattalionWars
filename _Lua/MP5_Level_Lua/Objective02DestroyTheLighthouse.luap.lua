function Objective02DestroyTheLighthouse(owner)
  SetUnitInvulnerable(Building.Generator, true)
  SetActive(Building.Generator, constant.INACTIVE)
  SetUnitInvulnerable(Building.Lighthouse, true)
  local healthwarning01 = 0
  repeat
    EndFrame()
  until SeaFortDead == 2
  SetUnitInvulnerable(Building.Generator, false)
  SetActive(Building.Generator, constant.ACTIVE)
  while missionend == 0 do
    if GetHealthPercent(Building.Generator) <= 75 and healthwarning01 == 0 then
      healthwarning01 = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(69, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(19, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      end
    end
    EndFrame()
    if IsDead(Building.Generator) then
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectivesResult(true, true, false)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectivesResult(false, false, true)
      end
      SetUnitInvulnerable(Building.Lighthouse, false)
      Kill(Building.Lighthouse)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessageWithObjective(70, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessageWithObjective(20, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
      SetObjectiveData(Objective_Marker.Objective02LighthouseDestroy, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Objective02LighthouseProtect, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Player2ProtectLighthouse, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Player2ProtectLighthouseFailed, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Player1DestroyLighthouse, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Player2ProtectLighthouseFailed, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.AngloSpawn02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.AngloSpawnZone02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SolarSpawn02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SolarSpawnZone02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.AngloSpawn03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.AngloSpawnZone03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SolarSpawn03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SolarSpawnZone03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      Despawn(Building.DummyCP)
      Spawn(Capture_Point.AngloHQCapturePoint)
      SetUnitInvulnerable(Morphing_Building.AngloHQ, false)
      SetActive(Morphing_Building.AngloHQ, constant.ACTIVE)
      SetActive(Capture_Point.AngloHQCapturePoint, constant.ACTIVE)
      SetObjectiveData(Objective.Player1CaptureSolarHQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Player2ProtectSolarHQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Objective03SolarHQCapture, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Objective03SolarHQProtect, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      CurrentPlayer1Direction = 320
      CurrentPlayer2Direction = 270
      CurrentPlayer1SpawnX = -530
      CurrentPlayer1SpawnZ = 997
      CurrentPlayer2SpawnX = -450
      CurrentPlayer2SpawnZ = 1197
      break
    end
    EndFrame()
  end
end
