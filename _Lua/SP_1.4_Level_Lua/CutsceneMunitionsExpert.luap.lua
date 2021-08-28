function CutsceneMunitionsExpert(owner)
  scriptCutsceneMunitionsExpert = owner
  Despawn(Building.RuinsRocketsBomb)
  repeat
    EndFrame()
  until munitionsexpertcutscenestart == 1
  Kill(Building.AmmoDump)
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
  Teleport(Ground_Vehicle.SolarRecon, -313, 226, 70, 5)
  StopAndGuard(Ground_Vehicle.SolarRecon)
  WaitFor(0.2)
  Teleport(Ground_Vehicle.SolarRecon, -313, 226, 70, 5)
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.CutsceneRocketObjectiveTarget1)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.CutsceneRocketObjectiveSpline1)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ExitVehicle(Troop.Admiral, constant.ID_NONE)
  ClearMessageQueue()
  PhoneMessage(76, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(0.1)
  EnterVehicle(Troop.Admiral, Capture_Point.RuinsRockets, constant.ORDER_FORCED)
  WaitFor(1)
  CutsceneMunitionsExpertCanNowBeSkipped = 1
  repeat
    EndFrame()
  until 0 < NumPassengersInUnit(Capture_Point.RuinsRockets)
  repeat
    EndFrame()
  until GetState(Capture_Point.RuinsRockets) == flag.TYPE_SOLAR
  Spawn(Building.RuinsRocketsBombDupe)
  EnterVehicle(Troop.Admiral, Ground_Vehicle.SolarRecon, constant.ORDER_FORCED)
  Despawn(Capture_Point.RuinsRockets)
  repeat
    EndFrame()
  until IsPassengerInUnit(Troop.Admiral, Ground_Vehicle.SolarRecon)
  Spawn(Building.RuinsRocketsBomb)
  Despawn(Building.RuinsRocketsBombDupe)
  DestroyablePlayAnim(Building.RuinsRocketsBomb, 1, 2)
  WaitFor(4.5)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  tellrecontostop = 0
  CameraSetTarget(Camera.CutsceneCam, Waypoint.CutsceneRocketObjectiveTarget2)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.CutsceneRocketObjectiveSpline2)
  GoToArea(Ground_Vehicle.SolarRecon, -189, 237, 2, 0, constant.ORDER_FORCED)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(29, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(1)
  SetUnitInvulnerable(Building.RuinsRockets, false)
  Kill(Building.RuinsRockets)
  Kill(Building.RuinsRocketsBomb)
  WaitFor(1)
  ruinsrockets = 1
  CutsceneMunitionsExpertFinished = 1
end
