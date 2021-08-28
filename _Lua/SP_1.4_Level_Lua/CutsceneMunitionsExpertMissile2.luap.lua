function CutsceneMunitionsExpertMissile2(owner)
  scriptCutsceneMunitionsExpertSilo2 = owner
  repeat
    EndFrame()
  until secondsilocutscenestart == 1
  SetObjectiveData(Objective_Marker.TopHillRockets, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.TopHillRockets, constant.OBJECTIVE_DATA_VISIBLE, 0)
  FreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 1
  pausetimer = GetTimeLeft()
  DebugOut("Paused time at", pausetimer)
  ShowTimer(0)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  tellrecontostop = 0
  ClearMessageQueue()
  Spawn(Troop.TransferMonkey)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.TransferMonkey, true, true)
  tellrecontostop = 1
  Teleport(Ground_Vehicle.SolarRecon, -74.7, 586.4, 160, 5)
  StopAndGuard(Ground_Vehicle.SolarRecon)
  WaitFor(0.2)
  Teleport(Ground_Vehicle.SolarRecon, -74.7, 586.4, 160, 5)
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.MunitionsExpertCutscene2Target)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.MunitionsExpertCutscene2Spline)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(80, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(1)
  CutsceneMunitionsExpertSilo2CanNowBeSkipped = 1
  ExitVehicle(Troop.Admiral, constant.ID_NONE)
  WaitFor(0.1)
  EnterVehicle(Troop.Admiral, Capture_Point.TopHillRockets, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until 0 < NumPassengersInUnit(Capture_Point.TopHillRockets)
  repeat
    EndFrame()
  until GetState(Capture_Point.TopHillRockets) == flag.TYPE_SOLAR
  Spawn(Building.TopHillRocketsBombDupe)
  SetUnitInvulnerable(Building.TopHillRocketsBombDupe, true)
  tophillrockets = 1
  SetObjectiveData(Objective_Marker.TopHillRockets, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.TopHillRockets, constant.OBJECTIVE_DATA_VISIBLE, 0)
  Despawn(Capture_Point.TopHillRockets)
  WaitFor(0.1)
  EnterVehicle(Troop.Admiral, Ground_Vehicle.SolarRecon, constant.ORDER_FORCED)
  WaitFor(1)
  SetUnitInvulnerable(Building.TopHillRocketsBomb, true)
  CutsceneMunitionsExpertSilo2Finished = 1
end
