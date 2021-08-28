function CutScene02(owner)
  AbortCutscene02 = owner
  Despawn(Troop.WFGunship01Occupant01)
  Despawn(Troop.WFGunship02Occupant01)
  Despawn(Troop.WFGunship03Occupant01)
  Despawn(Air_Vehicle.WFGunship03)
  repeat
    EndFrame()
  until Objective01 == 1
  EndCutscene02 = 2
  playerincutscene = true
  SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  PauseTimerActive = 1
  StartOutro()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective.DestroyGenerator, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Generator01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Generator02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Generator03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Generator04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  ClearMessageQueue()
  SetCamera(Camera.IntroductionCutsceneCamera03)
  Spawn(Ground_Vehicle.TundranHeavyTank05)
  Spawn(Building.TundranRpgTower03)
  Spawn(Building.TundranRpgTower04)
  Spawn(Troop.TundranBazookaVet07)
  Spawn(Troop.TundranBazookaVet03)
  Spawn(Troop.TundranBazookaVet04)
  Spawn(Troop.TundranBazookaVet06)
  Spawn(Troop.TundranAntiAirTower03Occupant01)
  Spawn(Troop.TundranAntiAirTower04Occupant01)
  Spawn(Troop.WFGunship01Occupant01)
  Spawn(Troop.WFGunship02Occupant01)
  PutUnitInVehicle(Troop.WFGunship01Occupant01, Air_Vehicle.WFGunship01, 0)
  PutUnitInVehicle(Troop.WFGunship02Occupant01, Air_Vehicle.WFGunship02, 0)
  SetActive(Air_Vehicle.WFGunship01, constant.ACTIVE)
  SetActive(Air_Vehicle.WFGunship02, constant.ACTIVE)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  StartedCutscene02 = 1
  PhoneMessageWithObjective(7, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  WaitFor(3)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Air_Vehicle.WFGunship02, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  else
    GoToArea(Air_Vehicle.WFGunship02, 238, -1188, 1)
  end
  WaitFor(2)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Air_Vehicle.WFGunship01, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  else
    GoToArea(Air_Vehicle.WFGunship01, 231, -1178, 1)
  end
  WaitFor(5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Air_Vehicle.WFGunship01)
  Spawn(Air_Vehicle.WFGunship03)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Air_Vehicle.WFGunship03, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  else
    GoToArea(Air_Vehicle.WFGunship03, 238, -1188, 1)
  end
  SetCamera(Camera.IntroductionCutsceneCamera)
  CameraSetFOV(Camera.IntroductionCutsceneCamera, 80, constant.IMMEDIATE, 100, constant.NO_WAIT)
  CameraSetWaypoint(Camera.IntroductionCutsceneCamera, Waypoint.IntroductionCutscene02Waypoint01)
  CameraSetTarget(Camera.IntroductionCutsceneCamera, Waypoint.IntroductionCutscene02Target01)
  ClearMessageQueue()
  SetViewDistanceAdjustment(600, 10)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(70, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(5)
  PhoneMessageWithObjective(71, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(12)
  EndCutscene02 = 1
end
