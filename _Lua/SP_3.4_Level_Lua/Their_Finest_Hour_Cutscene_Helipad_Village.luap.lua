function Their_Finest_Hour_Cutscene_Helipad_Village(owner)
  CutscenePOW02 = owner
  repeat
    EndFrame()
  until CheckCapturePoint(Capture_Point.POW02, constant.ARMY_ANGLO, 99, 2, constant.CAPTUREPOINTFLAG_RAISING)
  repeat
    EndFrame()
  until AirTransportCutsceneActive == 0
  AirTransportCutsceneActive = 1
  POW02ObjectiveActive = 1
  SetObjectiveData(Objective.VillagePOW, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.VillagePOW, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.VillagePOW, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  FreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StartOutro()
  PauseTimerActive = 1
  SetCamera(Camera.CutsceneCam1)
  CameraSetTarget(Camera.CutsceneCam1, Air_Vehicle.AI_AirTransport02)
  CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.CutscenePOW02Shot01Spline01)
  CurrentActiveUnit = GetPlayerUnit(constant.PLAYER_ONE)
  Spawn(Troop.CUTSCENE)
  SetUnitInvulnerable(Troop.CUTSCENE, true)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.CUTSCENE, true, true)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == Troop.CUTSCENE
  if AttackWaveReinforcements == 0 then
    Despawn(Troop.AI_Airbase01_MGTower01_Pilot01)
    Despawn(Troop.AI_Airbase01_MGTower02_Pilot01)
    Despawn(Troop.AI_Airbase01_MGTower03_Pilot01)
    Despawn(Air_Vehicle.AI_Fighter01)
    Despawn(Air_Vehicle.AI_Bomber01)
  end
  if AttackWaveReinforcements == 1 then
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
    Despawn(Troop.AI_Grunt06)
    Despawn(Troop.AI_Grunt07)
    Despawn(Troop.AI_Grunt08)
    Despawn(Troop.AI_Grunt09)
    Despawn(Troop.AI_Grunt10)
    Despawn(Air_Vehicle.AI_Fighter02)
    Despawn(Air_Vehicle.AI_Fighter03)
    Despawn(Air_Vehicle.AI_Bomber02)
    Despawn(Air_Vehicle.AI_Bomber03)
  end
  if Helipad01Complete == 1 then
    Despawn(Ground_Vehicle.AI_HeavyTank01)
  end
  Spawn(Air_Vehicle.AI_AirTransport02)
  Teleport(Air_Vehicle.AI_AirTransport02, GetObjectXPosition(Waypoint.POW02_Spawn), GetObjectZPosition(Waypoint.POW02_Spawn), 180, 5)
  Spawn(Troop.AI_AntiArmour01)
  Spawn(Troop.AI_AntiArmour02)
  Spawn(Troop.AI_AntiArmour03)
  Spawn(Troop.AI_AntiArmour04)
  Spawn(Troop.AI_AntiArmour05)
  PutUnitInVehicle(Troop.AI_AntiArmour01, Air_Vehicle.AI_AirTransport02, 3)
  PutUnitInVehicle(Troop.AI_AntiArmour02, Air_Vehicle.AI_AirTransport02, 4)
  PutUnitInVehicle(Troop.AI_AntiArmour03, Air_Vehicle.AI_AirTransport02, 5)
  PutUnitInVehicle(Troop.AI_AntiArmour04, Air_Vehicle.AI_AirTransport02, 7)
  PutUnitInVehicle(Troop.AI_AntiArmour05, Air_Vehicle.AI_AirTransport02, 8)
  repeat
    EndFrame()
  until IsPassengerInUnit(Troop.AI_AntiArmour01, Air_Vehicle.AI_AirTransport02) and IsPassengerInUnit(Troop.AI_AntiArmour02, Air_Vehicle.AI_AirTransport02) and IsPassengerInUnit(Troop.AI_AntiArmour03, Air_Vehicle.AI_AirTransport02) and IsPassengerInUnit(Troop.AI_AntiArmour04, Air_Vehicle.AI_AirTransport02) and IsPassengerInUnit(Troop.AI_AntiArmour05, Air_Vehicle.AI_AirTransport02)
  LandAirUnit(Air_Vehicle.AI_AirTransport02, GetObjectXPosition(Waypoint.POW02), GetObjectZPosition(Waypoint.POW02), constant.ORDER_FORCED, 1, 5, 180)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  CutscenePOW02Begun = 1
  PhoneMessageWithObjective(79, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.AI_AirTransport02) == 1
  StopCapturePointSounds(Capture_Point.POW02)
  WaitFor(3)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CutscenePOW02Finished = 1
end
