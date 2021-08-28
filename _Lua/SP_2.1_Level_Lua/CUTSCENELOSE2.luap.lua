function CUTSCENELOSE2(owner)
  cutscenelose2 = owner
  repeat
    EndFrame()
  until FactoryCutsceneOn == false and BarracksCutsceneOn == false and WFlose2 == true
  StartOutro()
  SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  Spawn(Air_Vehicle.CutsceneTTransport1)
  Spawn(Air_Vehicle.CutsceneTTransport2)
  Spawn(Air_Vehicle.CutsceneTTransport3)
  Spawn(Air_Vehicle.CutsceneTTransport4)
  Spawn(Air_Vehicle.CutsceneTTransport5)
  Spawn(Air_Vehicle.CutsceneTTransport6)
  Spawn(Air_Vehicle.CutsceneTTransport7)
  Spawn(Air_Vehicle.CutsceneTTransport8)
  LandAirUnit(Air_Vehicle.CutsceneTTransport1, GetObjectXPosition(Waypoint.transport1), GetObjectZPosition(Waypoint.transport1), constant.ORDER_FORCED, 0, 10, 0)
  LandAirUnit(Air_Vehicle.CutsceneTTransport2, GetObjectXPosition(Waypoint.transport2), GetObjectZPosition(Waypoint.transport2), constant.ORDER_FORCED, 0, 10, 0)
  GoToArea(Air_Vehicle.CutsceneTTransport3, GetObjectXPosition(Waypoint.Tlose1), GetObjectZPosition(Waypoint.Tlose1), 10, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.CutsceneTTransport4, GetObjectXPosition(Waypoint.Tlose1), GetObjectZPosition(Waypoint.Tlose1), 10, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.CutsceneTTransport5, GetObjectXPosition(Waypoint.Tlose1), GetObjectZPosition(Waypoint.Tlose1), 10, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.CutsceneTTransport6, GetObjectXPosition(Waypoint.Tlose2), GetObjectZPosition(Waypoint.Tlose2), 10, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.CutsceneTTransport7, GetObjectXPosition(Waypoint.Tlose2), GetObjectZPosition(Waypoint.Tlose2), 10, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.CutsceneTTransport8, GetObjectXPosition(Waypoint.Tlose2), GetObjectZPosition(Waypoint.Tlose2), 10, constant.ORDER_FORCED)
  ClearMessageQueue()
  SetCamera(Camera.cutscenecam)
  CameraSetFOV(Camera.cutscenecam, 65, constant.IMMEDIATE, constant.WAIT)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.LoseCutscene)
  CameraSetTarget(Camera.cutscenecam, Waypoint.LoseCutsceneTarget)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(69, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
  PhoneMessage(70, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  WaitFor(22)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Lose2CutsceneEnded = true
end
