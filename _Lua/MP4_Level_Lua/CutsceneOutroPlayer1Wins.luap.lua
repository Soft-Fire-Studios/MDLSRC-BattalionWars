function CutsceneOutroPlayer1Wins(owner)
  cutsceneplayer1wins = owner
  Despawn(Troop.WFCutsceneDancer1)
  Despawn(Troop.WFCutsceneDancer2)
  Despawn(Troop.WFCutsceneDancer3)
  Despawn(Troop.WFCutsceneDancer4)
  Despawn(Troop.WFCutsceneDancer5)
  Despawn(Troop.WFCutsceneRunner1)
  Despawn(Troop.WFCutsceneRunner2)
  Despawn(Water_Vehicle.Frigate1)
  Despawn(Water_Vehicle.Frigate2)
  Despawn(Water_Vehicle.Battleship1)
  Despawn(Water_Vehicle.Battleship2)
  Despawn(Water_Vehicle.Battleship3)
  Despawn(Water_Vehicle.Dreadnought)
  Despawn(Ground_Vehicle.Artillery1)
  Despawn(Ground_Vehicle.Artillery2)
  Despawn(Ground_Vehicle.Artillery3)
  Despawn(Troop.WFOutroGrunt01)
  Despawn(Troop.WFOutroGrunt02)
  Despawn(Troop.WFOutroGrunt03)
  Despawn(Troop.WFOutroGrunt04)
  Despawn(Troop.WFOutroFlamer01)
  Despawn(Troop.WFOutroFlamer02)
  Despawn(Troop.WFOutroBazooka01)
  Despawn(Troop.WFOutroBazooka02)
  repeat
    EndFrame()
  until netvariable.player1.player1wins == 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  end
  StartIntro()
  DeclareVictory(constant.ARMY_WF)
  WaitFor(0.1)
  DebugOut("Starting Outro Cutscene - Player 1 Wins")
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
  PhoneMessage(26, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
  PhoneMessage(38, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
  WaitFor(10)
  MissionOver = 1
end
