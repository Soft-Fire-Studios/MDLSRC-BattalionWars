function Their_Finest_Hour_Cutscene_Helipad_Factory(owner)
  CutsceneHelipad = owner
  repeat
    EndFrame()
  until CheckCapturePoint(Capture_Point.Helipad01, constant.ARMY_ANGLO, 99, 2, constant.CAPTUREPOINTFLAG_RAISING)
  repeat
    EndFrame()
  until AirTransportCutsceneActive == 0
  AirTransportCutsceneActive = 1
  SetObjectiveData(Objective.Helipad, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Helipad, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.Helipad, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  FreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.CutsceneCam1)
  StartOutro()
  PauseTimerActive = 1
  CameraSetTarget(Camera.CutsceneCam1, Ground_Vehicle.AI_HeavyTank01)
  CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.CutsceneHelipadShot01Spline01)
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
  if POW02Objective == 1 then
    Despawn(Troop.AI_AntiArmour01)
    Despawn(Troop.AI_AntiArmour02)
    Despawn(Troop.AI_AntiArmour03)
    Despawn(Troop.AI_AntiArmour04)
    Despawn(Troop.AI_AntiArmour05)
  end
  Spawn(Air_Vehicle.AI_AirTransport01)
  Teleport(Air_Vehicle.AI_AirTransport01, GetObjectXPosition(Waypoint.Helipad01_Spawn), GetObjectZPosition(Waypoint.Helipad01_Spawn), 90, 5)
  Spawn(Ground_Vehicle.AI_HeavyTank01)
  PutUnitInVehicle(Ground_Vehicle.AI_HeavyTank01, Air_Vehicle.AI_AirTransport01, 6)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.AI_AirTransport01) == 2
  LandAirUnit(Air_Vehicle.AI_AirTransport01, GetObjectXPosition(Waypoint.Helipad01), GetObjectZPosition(Waypoint.Helipad01), constant.ORDER_FORCED, 1, 5, 90)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  CutsceneHelipadBegun = 1
  PhoneMessageWithObjective(77, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.AI_AirTransport01) == 1
  StopCapturePointSounds(Capture_Point.Helipad01)
  GoToArea(Ground_Vehicle.AI_HeavyTank01, GetObjectXPosition(Waypoint.AI_HeavyTank01), GetObjectZPosition(Waypoint.AI_HeavyTank01), 2, constant.ORDER_NORMAL)
  WaitFor(3)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CutsceneHelipadFinished = 1
end
