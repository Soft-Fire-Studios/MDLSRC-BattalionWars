function Ice_Station_X_Cutscene02_Skipped(owner)
  Despawn(Air_Vehicle.AI_Bomber01)
  Despawn(Air_Vehicle.AI_Bomber02)
  Despawn(Ground_Vehicle.XN_AAVehicle01)
  Despawn(Ground_Vehicle.XN_AAVehicle02)
  Despawn(Ground_Vehicle.XN_AAVehicle03)
  repeat
    if GetCurrentMissionAttempted() == true and Cutscene02Begun == 1 and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(Cutscene02Dead)
      Cutscene02Finished = 1
    end
    EndFrame()
  until Cutscene02Finished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StoreSummaryMessage(constant.PLAYER_ONE, 20, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  EndIntro()
  SetInvulnerable(flag.TYPE_TUNDRAN, 0)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 0)
  SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  SetObjectiveData(Objective.Destroy_ConcreteBarricade, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XN_ConcreteBarricade, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  Despawn(Air_Vehicle.TT_Bomber01_Cutscene)
  Despawn(Air_Vehicle.TT_Bomber02_Cutscene)
  Despawn(Ground_Vehicle.XN_AAVehicle01_Cutscene)
  Spawn(Air_Vehicle.AI_Bomber01)
  Spawn(Air_Vehicle.AI_Bomber02)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Air_Vehicle.AI_Bomber01, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.AI_Bomber02, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
  end
  Spawn(Ground_Vehicle.XN_AAVehicle01)
  Spawn(Ground_Vehicle.XN_AAVehicle02)
  Spawn(Ground_Vehicle.XN_AAVehicle03)
  FollowWaypoint(Ground_Vehicle.XN_AAVehicle01, Waypoint.XN_AAVehicle01_Patrol, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Ground_Vehicle.XN_AAVehicle02, Waypoint.XN_AAVehicle02_Patrol, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Ground_Vehicle.XN_AAVehicle03, Waypoint.XN_AAVehicle03_Patrol, 0, 0, constant.ORDER_FORCED)
  SetCamera(Camera.Player01Cam)
  EndFrame()
  ResetCommandBar()
  SetActive(Building.XN_ConcreteBarricade01, constant.ACTIVE)
  SetActive(Building.XN_IceStationX, constant.ACTIVE)
  EndIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_TUNDRAN, 0)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 0)
  PauseTimerActive = 0
  Cutscene02Complete = 1
end
