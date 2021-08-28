function CutsceneOutroPlayer2Wins(owner)
  cutsceneplayer2wins = owner
  SetObjectiveData(Objective_Marker.WFSpawnZone2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  Despawn(Troop.XCutsceneDancers1)
  Despawn(Troop.XCutsceneDancers2)
  Despawn(Troop.XCutsceneDancers3)
  Despawn(Troop.XCutsceneDancers4)
  Despawn(Troop.XCutsceneDancers5)
  Despawn(Troop.XCutsceneDancers6)
  Despawn(Troop.XCutsceneDancers7)
  Despawn(Troop.XCutsceneDancers8)
  Despawn(Air_Vehicle.Bomber1)
  Despawn(Air_Vehicle.Bomber2)
  Despawn(Troop.XOutroGrunt01)
  Despawn(Troop.XOutroGrunt02)
  Despawn(Troop.XOutroGrunt03)
  Despawn(Troop.XOutroGrunt04)
  Despawn(Troop.XOutroAssault01)
  Despawn(Troop.XOutroAssault02)
  Despawn(Troop.XOutroBazooka01)
  Despawn(Troop.XOutroBazooka02)
  repeat
    EndFrame()
  until netvariable.player1.player2wins == 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  end
  StartIntro()
  DeclareVictory(constant.ARMY_XYLVANIAN)
  WaitFor(0.1)
  DebugOut("Starting Outro Cutscene - Player 2 Wins")
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  OutroCutsceneStarted = 1
  WaitFor(0.1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutsceneCam1, constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.WFOutroCutsceneShot01Target)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.WFOutroCutsceneShot01Spline)
    CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutsceneCam2, constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.XOutroCutsceneShot01Target)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.XOutroCutsceneShot01Spline)
    CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(39, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
  PhoneMessage(31, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
  WaitFor(10)
  MissionOver = 1
end
