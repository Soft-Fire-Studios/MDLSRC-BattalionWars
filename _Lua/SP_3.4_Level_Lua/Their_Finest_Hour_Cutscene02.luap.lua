function Their_Finest_Hour_Cutscene02(owner)
  Cutscene02 = owner
  Despawn(Air_Vehicle.AI_Fighter02)
  Despawn(Air_Vehicle.AI_Fighter03)
  Despawn(Air_Vehicle.AI_Bomber02)
  Despawn(Air_Vehicle.AI_Bomber03)
  SetUnitInvulnerable(Air_Vehicle.AI_AirTransport01, true)
  SetUnitInvulnerable(Air_Vehicle.AI_AirTransport02, true)
  Despawn(Air_Vehicle.AI_AirTransport01)
  Despawn(Air_Vehicle.AI_AirTransport02)
  Kill(Air_Vehicle.AI_Cutscene02_Fighter01)
  Kill(Air_Vehicle.AI_Cutscene02_Bomber01)
  SetUnitInvulnerable(Troop.AI_Grunt01, true)
  SetUnitInvulnerable(Troop.AI_Grunt02, true)
  SetUnitInvulnerable(Troop.AI_Grunt03, true)
  SetUnitInvulnerable(Troop.AI_Grunt04, true)
  SetUnitInvulnerable(Troop.AI_Grunt05, true)
  SetUnitInvulnerable(Troop.AI_Hose01, true)
  SetUnitInvulnerable(Troop.AI_Hose02, true)
  SetUnitInvulnerable(Troop.AI_Hose03, true)
  SetUnitInvulnerable(Troop.AI_Hose04, true)
  SetUnitInvulnerable(Troop.AI_Hose05, true)
  Despawn(Troop.AI_Hose01)
  Despawn(Troop.AI_Hose02)
  Despawn(Troop.AI_Hose03)
  Despawn(Troop.AI_Hose04)
  Despawn(Troop.AI_Hose05)
  Despawn(Troop.AI_Grunt01)
  Despawn(Troop.AI_Grunt02)
  Despawn(Troop.AI_Grunt03)
  Despawn(Troop.AI_Grunt04)
  Despawn(Troop.AI_Grunt05)
  Despawn(Troop.SE_NorthFork_Grunt01)
  Despawn(Troop.SE_NorthFork_Grunt02)
  Despawn(Troop.SE_NorthFork_Grunt03)
  Despawn(Troop.SE_NorthFork_Grunt04)
  Despawn(Troop.SE_SouthFork_Grunt01)
  Despawn(Troop.SE_SouthFork_Grunt02)
  Despawn(Troop.SE_SouthFork_Grunt03)
  Despawn(Troop.SE_SouthFork_Grunt04)
  Despawn(Troop.SE_CentreRoad_Grunt01)
  Despawn(Troop.SE_CentreRoad_Grunt02)
  Despawn(Troop.SE_Airbase_Grunt01)
  Despawn(Troop.SE_Airbase_Grunt02)
  Despawn(Troop.SE_Airbase_Grunt03)
  Despawn(Troop.SE_Airbase_Grunt04)
  Despawn(Ground_Vehicle.SE_CentreRoad_LightTank01)
  repeat
    EndFrame()
  until IntroComplete == 1
  repeat
    if AllPlayerUnitsDead(constant.PLAYER_ONE) == true and IsDead(Air_Vehicle.AI_Fighter01) and IsReadyToRevive(Air_Vehicle.AI_Fighter01) then
      ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter01, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15)
    end
    EndFrame()
  until DefenceComplete == 1
  SetObjectiveData(Objective.Defend_AI_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.AI_Airbase01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  repeat
    EndFrame()
  until AirTransportCutsceneActive == 0
  AirTransportCutsceneActive = 1
  FreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 1
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StartOutro()
  SetCamera(Camera.CutsceneCam1)
  SetCapturePointHeight(Capture_Point.AI_Airbase01, constant.ARMY_ANGLO, 100)
  Spawn(Troop.CUTSCENE)
  SetUnitInvulnerable(Troop.CUTSCENE, true)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.CUTSCENE, true, true)
  repeat
    if NumPassengersInUnit(Building.AI_Airbase01_MGTower01) == 1 then
      ExitVehicle(GetUnitInSeat(Building.AI_Airbase01_MGTower01, 0), Building.AI_Airbase01_MGTower01)
    end
    if NumPassengersInUnit(Building.AI_Airbase01_MGTower02) == 1 then
      ExitVehicle(GetUnitInSeat(Building.AI_Airbase01_MGTower02, 0), Building.AI_Airbase01_MGTower02)
    end
    if NumPassengersInUnit(Building.AI_Airbase01_MGTower03) == 1 then
      ExitVehicle(GetUnitInSeat(Building.AI_Airbase01_MGTower03, 0), Building.AI_Airbase01_MGTower03)
    end
    EndFrame()
  until NumPassengersInUnit(Building.AI_Airbase01_MGTower01) == 0 and NumPassengersInUnit(Building.AI_Airbase01_MGTower02) == 0 and NumPassengersInUnit(Building.AI_Airbase01_MGTower03) == 0
  Despawn(Troop.AI_Airbase01_MGTower01_Pilot01)
  Despawn(Troop.AI_Airbase01_MGTower02_Pilot01)
  Despawn(Troop.AI_Airbase01_MGTower03_Pilot01)
  if IsDead(Air_Vehicle.AI_Fighter01) then
    repeat
      EndFrame()
    until ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter01, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15) == true
    ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter01, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15)
  end
  Despawn(Air_Vehicle.AI_Fighter01)
  if IsDead(Air_Vehicle.AI_Bomber01) then
    repeat
      EndFrame()
    until ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Bomber01, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15) == true
    ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Bomber01, GetObjectXPosition(Waypoint.AI_Airbase01_Spawn), GetObjectZPosition(Waypoint.AI_Airbase01_Spawn), 90, 15)
  end
  Despawn(Air_Vehicle.AI_Bomber01)
  Kill(KillAIRespawnFighters)
  Kill(KillAIRespawnBombers)
  Spawn(Air_Vehicle.AI_AirTransport01)
  Spawn(Air_Vehicle.AI_AirTransport02)
  Teleport(Air_Vehicle.AI_AirTransport01, GetObjectXPosition(Waypoint.AI_AirTransport01_Spawn), GetObjectZPosition(Waypoint.AI_AirTransport01_Spawn), 135, 5)
  Teleport(Air_Vehicle.AI_AirTransport02, GetObjectXPosition(Waypoint.AI_AirTransport02_Spawn), GetObjectZPosition(Waypoint.AI_AirTransport02_Spawn), 135, 5)
  Spawn(Troop.AI_Grunt01)
  Spawn(Troop.AI_Grunt02)
  Spawn(Troop.AI_Grunt03)
  Spawn(Troop.AI_Grunt04)
  Spawn(Troop.AI_Grunt05)
  PutUnitInVehicle(Troop.AI_Grunt01, Air_Vehicle.AI_AirTransport02, 3)
  PutUnitInVehicle(Troop.AI_Grunt02, Air_Vehicle.AI_AirTransport02, 4)
  PutUnitInVehicle(Troop.AI_Grunt03, Air_Vehicle.AI_AirTransport02, 5)
  PutUnitInVehicle(Troop.AI_Grunt04, Air_Vehicle.AI_AirTransport02, 7)
  PutUnitInVehicle(Troop.AI_Grunt05, Air_Vehicle.AI_AirTransport02, 8)
  Spawn(Troop.AI_Hose01)
  Spawn(Troop.AI_Hose02)
  Spawn(Troop.AI_Hose03)
  Spawn(Troop.AI_Hose04)
  Spawn(Troop.AI_Hose05)
  PutUnitInVehicle(Troop.AI_Hose01, Air_Vehicle.AI_AirTransport01, 3)
  PutUnitInVehicle(Troop.AI_Hose02, Air_Vehicle.AI_AirTransport01, 4)
  PutUnitInVehicle(Troop.AI_Hose03, Air_Vehicle.AI_AirTransport01, 5)
  PutUnitInVehicle(Troop.AI_Hose04, Air_Vehicle.AI_AirTransport01, 7)
  PutUnitInVehicle(Troop.AI_Hose05, Air_Vehicle.AI_AirTransport01, 8)
  CameraSetTarget(Camera.CutsceneCam1, Waypoint.Cutscene02Shot01Target01)
  CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.Cutscene02Shot01Spline01)
  GoToArea(Air_Vehicle.AI_AirTransport01, GetObjectXPosition(Waypoint.AI_AirTransport01_Cutscene), GetObjectZPosition(Waypoint.AI_AirTransport01_Cutscene), 10, 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.AI_AirTransport02, GetObjectXPosition(Waypoint.AI_AirTransport02_Cutscene), GetObjectZPosition(Waypoint.AI_AirTransport02_Cutscene), 10, 0, constant.ORDER_FORCED)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  Cutscene02Begun = 1
  PhoneMessageWithObjective(24, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  WaitFor(1)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.AI_Cutscene02_Bomber01) and IsReadyToRevive(Air_Vehicle.AI_Cutscene02_Bomber01)
  ReviveDeadUnit(Air_Vehicle.AI_Cutscene02_Bomber01, GetObjectXPosition(Waypoint.Cutscene03_AI_Bomber02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Bomber02_Finish), 90, 15)
  DebugOut("Cutscene02 - AI Cutscene02 Bomber01 REVIVING")
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.AI_Cutscene02_Bomber01) == false
  DebugOut("Cutscene02 - AI Cutscene02 Bomber01 REVIVED")
  GoToArea(Air_Vehicle.AI_Cutscene02_Bomber01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 5)
  DebugOut("Cutscene02 - AI Cutscene02 Bomber01 AWAY!")
  WaitFor(1)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.AI_Cutscene02_Fighter01) and IsReadyToRevive(Air_Vehicle.AI_Cutscene02_Fighter01)
  ReviveDeadUnit(Air_Vehicle.AI_Cutscene02_Fighter01, GetObjectXPosition(Waypoint.Cutscene03_AI_Fighter02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Fighter02_Finish), 90, 15)
  DebugOut("Cutscene02 - AI Cutscene02 Fighter01 REVIVING")
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.AI_Cutscene02_Fighter01) == false
  DebugOut("Cutscene02 - AI Cutscene02 Fighter01 REVIVED")
  GoToArea(Air_Vehicle.AI_Cutscene02_Fighter01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 5)
  DebugOut("Cutscene02 - AI Cutscene02 Fighter01 AWAY!")
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Air_Vehicle.AI_Cutscene02_Fighter01)
  Despawn(Air_Vehicle.AI_Cutscene02_Bomber01)
  LandAirUnit(Air_Vehicle.AI_AirTransport01, GetObjectXPosition(Waypoint.AI_AirTransport01_Cutscene), GetObjectZPosition(Waypoint.AI_AirTransport01_Cutscene), constant.ORDER_FORCED, 1, 10, 270)
  LandAirUnit(Air_Vehicle.AI_AirTransport02, GetObjectXPosition(Waypoint.AI_AirTransport02_Cutscene), GetObjectZPosition(Waypoint.AI_AirTransport02_Cutscene), constant.ORDER_FORCED, 1, 10, 270)
  CameraSetTarget(Camera.CutsceneCam1, Troop.AI_Hose05)
  CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.Cutscene02Shot02Spline01)
  Spawn(Air_Vehicle.AI_Bomber02)
  Spawn(Air_Vehicle.AI_Bomber03)
  Spawn(Air_Vehicle.AI_Fighter02)
  Spawn(Air_Vehicle.AI_Fighter03)
  SetUnitInvulnerable(Air_Vehicle.AI_Bomber01, true)
  SetUnitInvulnerable(Air_Vehicle.AI_Bomber02, true)
  SetUnitInvulnerable(Air_Vehicle.AI_Fighter02, true)
  SetUnitInvulnerable(Air_Vehicle.AI_Fighter03, true)
  Teleport(Air_Vehicle.AI_Bomber01, GetObjectXPosition(Waypoint.Cutscene03_AI_Bomber01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Bomber01_Finish), 90)
  Teleport(Air_Vehicle.AI_Bomber02, GetObjectXPosition(Waypoint.Cutscene03_AI_Bomber02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Bomber02_Finish), 90)
  Teleport(Air_Vehicle.AI_Fighter02, GetObjectXPosition(Waypoint.Cutscene03_AI_Fighter01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Fighter01_Finish), 90)
  Teleport(Air_Vehicle.AI_Fighter03, GetObjectXPosition(Waypoint.Cutscene03_AI_Fighter02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Fighter02_Finish), 90)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(25, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.AI_AirTransport01) == 1 and NumPassengersInUnit(Air_Vehicle.AI_AirTransport02) == 1
  GoToArea(Troop.AI_Grunt01, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt01_Finish), constant.ORDER_FORCED)
  GoToArea(Troop.AI_Grunt02, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt03_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt03_Finish), constant.ORDER_FORCED)
  GoToArea(Troop.AI_Grunt03, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt04_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt04_Finish), constant.ORDER_FORCED)
  GoToArea(Troop.AI_Grunt04, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt06_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt06_Finish), constant.ORDER_FORCED)
  GoToArea(Troop.AI_Grunt05, GetObjectXPosition(Waypoint.Cutscene03_AI_Grunt08_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Grunt08_Finish), constant.ORDER_FORCED)
  GoToArea(Troop.AI_Hose01, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose01_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose01_Finish), constant.ORDER_FORCED)
  GoToArea(Troop.AI_Hose02, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose02_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose02_Finish), constant.ORDER_FORCED)
  GoToArea(Troop.AI_Hose03, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose03_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose03_Finish), constant.ORDER_FORCED)
  GoToArea(Troop.AI_Hose04, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose04_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose04_Finish), constant.ORDER_FORCED)
  GoToArea(Troop.AI_Hose05, GetObjectXPosition(Waypoint.Cutscene03_AI_Hose05_Finish), GetObjectZPosition(Waypoint.Cutscene03_AI_Hose05_Finish), constant.ORDER_FORCED)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  Cutscene02Finished = 1
end
