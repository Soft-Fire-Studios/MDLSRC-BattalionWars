function Objective03CaptureTheHQWinCondition(owner)
  KillCutScene03 = owner
  SetUnitInvulnerable(Morphing_Building.AngloHQ, true)
  SetActive(Capture_Point.AngloHQCapturePoint, constant.INACTIVE)
  SetActive(Morphing_Building.AngloHQ, constant.INACTIVE)
  Despawn(Capture_Point.AngloHQCapturePoint)
  repeat
    EndFrame()
  until netvariable.player1.CutsceneEnd == 2
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(true, true, true)
    SetNetworkMissionComplete(2, false, 175)
    SetNetworkMissionComplete(1, true, 1)
    WinMissionMP()
    ClearMessageQueue(constant.PLAYER_ONE)
    FreezePlayer(0)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(false, false, false)
    WinMissionMP()
    ClearMessageQueue(constant.PLAYER_TWO)
    FreezePlayer(1)
  end
  SetObjectiveData(Objective_Marker.AngloSpawn03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.AngloSpawnZone03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SolarSpawn03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SolarSpawnZone03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SolarSpawn04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SolarSpawnZone04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Player1CaptureSolarHQ, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Player2ProtectSolarHQ, constant.OBJECTIVE_DATA_STATE, 1)
  Spawn(Troop.OutroAIGrunt01)
  Spawn(Troop.OutroAIGrunt02)
  Spawn(Troop.OutroAIGrunt03)
  Spawn(Troop.OutroAIGrunt04)
  Spawn(Troop.OutroAIGrunt05)
  Spawn(Troop.OutroAIFlamer01)
  Spawn(Troop.OutroAIFlamer02)
  Spawn(Troop.OutroSEGrunt01)
  Spawn(Troop.OutroSEGrunt02)
  Spawn(Troop.OutroSEGrunt03)
  Spawn(Troop.OutroSEAssault01)
  Spawn(Troop.OutroSEAssault02)
  Spawn(Troop.OutroSEBazooka01)
  Spawn(Troop.OutroSEBazooka02)
  DeclareVictory(constant.ARMY_SOLAR)
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ClearMessageQueue(constant.PLAYER_ONE)
    SetCamera(Camera.PlayerOneCutsceneLandingCamera, constant.PLAYER_ONE)
    CameraSetFOV(Camera.PlayerOneCutsceneLandingCamera, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerOneCutsceneLandingCamera, Waypoint.OutroSEShot01Target)
    CameraSetWaypoint(Camera.PlayerOneCutsceneLandingCamera, Waypoint.OutroSEShot01Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ClearMessageQueue(constant.PLAYER_TWO)
    SetCamera(Camera.PlayerTwoIntroCutscene, constant.PLAYER_TWO)
    CameraSetFOV(Camera.PlayerTwoIntroCutscene, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerTwoIntroCutscene, Waypoint.OutroAIShot01Target)
    CameraSetWaypoint(Camera.PlayerTwoIntroCutscene, Waypoint.OutroAIShot01Spline)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(73, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(23, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
  WaitFor(12)
  Cutscene03End = 1
end
