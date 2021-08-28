function Objective03TimerLoseCondition(owner)
  KillCutScene04 = owner
  repeat
    EndFrame()
  until netvariable.player1.CutsceneEnd == 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetNetworkMissionComplete(2, true, 1)
    SetNetworkMissionComplete(1, false, 176)
    WinMissionMP()
    FreezePlayer(0)
    ClearMessageQueue(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    WinMissionMP()
    FreezePlayer(1)
    ClearMessageQueue(constant.PLAYER_TWO)
  end
  SetObjectiveData(Objective.Player1CaptureSolarHQ, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Player2ProtectSolarHQ, constant.OBJECTIVE_DATA_VISIBLE, 0)
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
  DeclareVictory(constant.ARMY_ANGLO)
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ClearMessageQueue(constant.PLAYER_ONE)
    SetCamera(Camera.PlayerOneCutsceneLandingCamera, constant.PLAYER_ONE)
    CameraSetFOV(Camera.PlayerOneCutsceneLandingCamera, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerOneCutsceneLandingCamera, Waypoint.OutroSEShot01Target)
    CameraSetWaypoint(Camera.PlayerOneCutsceneLandingCamera, Waypoint.OutroSEShot01Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    WinMissionMP()
    ClearMessageQueue(constant.PLAYER_TWO)
    SetCamera(Camera.PlayerTwoIntroCutscene, constant.PLAYER_TWO)
    CameraSetFOV(Camera.PlayerTwoIntroCutscene, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerTwoIntroCutscene, Waypoint.OutroAIShot01Target)
    CameraSetWaypoint(Camera.PlayerTwoIntroCutscene, Waypoint.OutroAIShot01Spline)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(72, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  PhoneMessage(22, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_TWO)
  WaitFor(12)
  Cutscene03End = 1
end
