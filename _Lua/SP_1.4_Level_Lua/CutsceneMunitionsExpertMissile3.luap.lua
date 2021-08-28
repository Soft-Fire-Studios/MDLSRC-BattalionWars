function CutsceneMunitionsExpertMissile3(owner)
  scriptCutsceneMunitionsExpertSilo3 = owner
  repeat
    EndFrame()
  until thirdsilocutscenestart == 1
  SetObjectiveData(Objective_Marker.BottomHillRockets, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.BottomHillRockets, constant.OBJECTIVE_DATA_VISIBLE, 0)
  FreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 1
  pausetimer = GetTimeLeft()
  DebugOut("Paused time at", pausetimer)
  ShowTimer(0)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  Spawn(Troop.TransferMonkey)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.TransferMonkey, true, true)
  tellrecontostop = 1
  Teleport(Ground_Vehicle.SolarRecon, 471.8, 800, 330, 5)
  StopAndGuard(Ground_Vehicle.SolarRecon)
  WaitFor(0.2)
  Teleport(Ground_Vehicle.SolarRecon, 471.8, 800, 330, 5)
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.MunitionsExpertCutscene3Target)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.MunitionsExpertCutscene3Spline)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(81, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(1)
  CutsceneMunitionsExpertSilo3CanNowBeSkipped = 1
  ExitVehicle(Troop.Admiral, constant.ID_NONE)
  WaitFor(0.1)
  EnterVehicle(Troop.Admiral, Capture_Point.OuterIslandRockets, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until 0 < NumPassengersInUnit(Capture_Point.OuterIslandRockets)
  repeat
    EndFrame()
  until GetState(Capture_Point.OuterIslandRockets) == flag.TYPE_SOLAR
  Spawn(Building.OuterIslandRocketsBombDupe)
  SetUnitInvulnerable(Building.OuterIslandRocketsBombDupe, true)
  Despawn(Capture_Point.OuterIslandRockets)
  WaitFor(0.1)
  EnterVehicle(Troop.Admiral, Ground_Vehicle.SolarRecon, constant.ORDER_FORCED)
  WaitFor(1)
  SetUnitInvulnerable(Building.OuterIslandRocketsBomb, true)
  CutsceneMunitionsExpertSilo3Finished = 1
end
