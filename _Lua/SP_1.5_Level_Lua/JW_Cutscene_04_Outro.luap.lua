function JW_Cutscene_04_Outro(owner)
  OutroCutsceneGlobal = owner
  repeat
    EndFrame()
  until OutroCutsceneStart == 1
  ClearMessageQueue()
  FreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 0.5)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveCaptureAngloIslesAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  Despawn(Troop.AngloFlamer07)
  Despawn(Troop.AngloFlamer08)
  Despawn(Troop.AngloFlamer09)
  Despawn(Troop.AngloFlamer10)
  Despawn(Troop.AngloFlamer11)
  Despawn(Troop.AngloFlamer12)
  Despawn(Troop.AngloFlamer13)
  Despawn(Troop.AngloFlamer14)
  Despawn(Troop.AngloFlamer15)
  Despawn(Troop.AngloBazookaVet06)
  Despawn(Troop.AngloBazookaVet07)
  Despawn(Troop.AngloBazookaVet08)
  Despawn(Troop.AngloBazookaVet09)
  Despawn(Ground_Vehicle.AngloLightTank05)
  Despawn(Ground_Vehicle.AngloLightTank06)
  Despawn(Ground_Vehicle.AngloLightTank07)
  Despawn(Air_Vehicle.AngloAirTransport01)
  Despawn(Air_Vehicle.AngloAirTransport02)
  Despawn(Air_Vehicle.AngloBomber02)
  Despawn(Air_Vehicle.AngloBomber03)
  Despawn(Air_Vehicle.AngloBomber04)
  Despawn(Air_Vehicle.AngloBomber05)
  Despawn(Air_Vehicle.AngloBomber06)
  Despawn(Air_Vehicle.AngloBomber07)
  Despawn(Air_Vehicle.AngloBomber08)
  Despawn(Air_Vehicle.AngloBomber09)
  Despawn(Air_Vehicle.AngloBomber10)
  Despawn(Building.AngloMachineGunTower01)
  Despawn(Building.AngloMachineGunTower02)
  Despawn(Building.AngloMachineGunTower03)
  Despawn(Building.AngloMachineGunTower04)
  Despawn(Building.AngloMachineGunTower05)
  Despawn(Building.AngloMachineGunTower06)
  Despawn(Building.AngloMachineGunTower07)
  Despawn(Building.AngloMachineGunTower08)
  EnableWeapon(Ground_Vehicle.SolarAntiAirTank01, 0)
  SetCamera(Camera.CutsceneCamera)
  CameraSetFOV(Camera.CutsceneCamera, 70, constant.IMMEDIATE, 5, constant.NO_WAIT)
  CameraSetWaypoint(Camera.CutsceneCamera, Waypoint.EndingCutsceneWaypoint01)
  CameraSetTarget(Camera.CutsceneCamera, Waypoint.EndingCutsceneTarget01)
  VictoryDance(constant.ARMY_SOLAR, true)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  OutroCutsceneStart = 2
  PhoneMessage(97, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  Spawn(Air_Vehicle.EndCutsceneBomber01)
  Spawn(Air_Vehicle.EndCutsceneBomber02)
  Spawn(Air_Vehicle.EndCutsceneBomber03)
  EnableWeapon(Air_Vehicle.EndCutsceneBomber01, 0)
  EnableWeapon(Air_Vehicle.EndCutsceneBomber02, 0)
  EnableWeapon(Air_Vehicle.EndCutsceneBomber03, 0)
  SetHealthPercent(Air_Vehicle.EndCutsceneBomber01, 40)
  SetHealthPercent(Air_Vehicle.EndCutsceneBomber03, 70)
  FollowWaypoint(Air_Vehicle.EndCutsceneBomber01, Waypoint.EndCutsceneBomber01Path, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Air_Vehicle.EndCutsceneBomber02, Waypoint.EndCutsceneBomber02Path, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Air_Vehicle.EndCutsceneBomber03, Waypoint.EndCutsceneBomber03Path, 0, 0, constant.ORDER_FORCED)
  WaitFor(1)
  SetViewDistanceAdjustment(550, 25)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Troop.WesternFrontierGrunt01)
  Despawn(Troop.WesternFrontierGrunt02)
  Despawn(Troop.WesternFrontierGrunt03)
  Despawn(Troop.WesternFrontierGrunt04)
  Despawn(Troop.WesternFrontierGrunt05)
  Despawn(Troop.WesternFrontierGrunt06)
  Despawn(Troop.WesternFrontierGrunt07)
  Despawn(Troop.WesternFrontierGrunt08)
  Despawn(Troop.WesternFrontierGrunt09)
  Despawn(Troop.WesternFrontierGrunt10)
  Despawn(Troop.WesternFrontierGrunt11)
  Despawn(Troop.WesternFrontierGrunt12)
  SetCamera(Camera.CutsceneCamera)
  SetWaterRenderEnable(true)
  CameraSetFOV(Camera.CutsceneCamera, 55, constant.IMMEDIATE, 5, constant.NO_WAIT)
  CameraSetFOV(Camera.CutsceneCamera, 65, constant.SMOOTH, 1, constant.NO_WAIT)
  CameraSetWaypoint(Camera.CutsceneCamera, Waypoint.EndingCutsceneWaypoint04)
  CameraSetTarget(Camera.CutsceneCamera, Air_Vehicle.EndCutsceneBomber02)
  VictoryDance(constant.ARMY_SOLAR, true)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(94, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 0.5)
  Spawn(Water_Vehicle.EndCutsceneFrigate01)
  Spawn(Water_Vehicle.EndCutsceneFrigate02)
  SetCamera(Camera.CutsceneCamera)
  CameraSetFOV(Camera.CutsceneCamera, 70, constant.IMMEDIATE, 5, constant.NO_WAIT)
  CameraSetWaypoint(Camera.CutsceneCamera, Waypoint.EndingCutsceneWaypoint05)
  CameraSetTarget(Camera.CutsceneCamera, Waypoint.EndingCutsceneTarget05)
  VictoryDance(constant.ARMY_SOLAR, true)
  CameraFade(constant.FADE_IN, constant.WAIT, 0.5)
  PhoneMessage(91, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  AttackTarget(Water_Vehicle.EndCutsceneFrigate01, Air_Vehicle.EndCutsceneBomber03, constant.ORDER_FORCED)
  AttackTarget(Water_Vehicle.EndCutsceneFrigate02, Air_Vehicle.EndCutsceneBomber01, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsDead(Water_Vehicle.SEBattleship03) then
    ReviveDeadUnit(Water_Vehicle.SEBattleship03, GetObjectXPosition(Waypoint.OutroSEBattleship01), GetObjectZPosition(Waypoint.OutroSEBattleship01), 135, 1)
  else
    Spawn(Water_Vehicle.SEBattleship03)
    Teleport(Water_Vehicle.SEBattleship03, GetObjectXPosition(Waypoint.OutroSEBattleship01), GetObjectZPosition(Waypoint.OutroSEBattleship01), 135, 1)
  end
  if IsDead(Water_Vehicle.SEBattleship02) then
    ReviveDeadUnit(Water_Vehicle.SEBattleship02, GetObjectXPosition(Waypoint.OutroSEBattleship02), GetObjectZPosition(Waypoint.OutroSEBattleship02), 135, 1)
  else
    Spawn(Water_Vehicle.SEBattleship02)
    Teleport(Water_Vehicle.SEBattleship02, GetObjectXPosition(Waypoint.OutroSEBattleship02), GetObjectZPosition(Waypoint.OutroSEBattleship02), 135, 1)
  end
  if IsDead(Water_Vehicle.SEFrigate01) then
    ReviveDeadUnit(Water_Vehicle.SEFrigate01, GetObjectXPosition(Waypoint.OutroSEFrigate01), GetObjectZPosition(Waypoint.OutroSEFrigate01), 135, 1)
  else
    Spawn(Water_Vehicle.SEFrigate01)
    Teleport(Water_Vehicle.SEFrigate01, GetObjectXPosition(Waypoint.OutroSEFrigate01), GetObjectZPosition(Waypoint.OutroSEFrigate01), 135, 1)
  end
  if IsDead(Water_Vehicle.SEFrigate02) then
    ReviveDeadUnit(Water_Vehicle.SEFrigate02, GetObjectXPosition(Waypoint.OutroSEFrigate02), GetObjectZPosition(Waypoint.OutroSEFrigate02), 134, 1)
  else
    Spawn(Water_Vehicle.SEFrigate02)
    Teleport(Water_Vehicle.SEFrigate02, GetObjectXPosition(Waypoint.OutroSEFrigate02), GetObjectZPosition(Waypoint.OutroSEFrigate02), 134, 1)
  end
  Despawn(Water_Vehicle.EndCutsceneFrigate01)
  Despawn(Water_Vehicle.EndCutsceneFrigate02)
  Spawn(Water_Vehicle.EndCutsceneFrigate03)
  StopAndGuard(Water_Vehicle.SEBattleship03)
  StopAndGuard(Water_Vehicle.SEBattleship02)
  StopAndGuard(Water_Vehicle.SEFrigate01)
  StopAndGuard(Water_Vehicle.SEFrigate02)
  StopAndGuard(Water_Vehicle.EndCutsceneFrigate03)
  EnableWeapon(Water_Vehicle.SEBattleship03, 0)
  EnableWeapon(Water_Vehicle.SEBattleship02, 0)
  EnableWeapon(Water_Vehicle.SEFrigate01, 0)
  EnableWeapon(Water_Vehicle.SEFrigate02, 0)
  EnableWeapon(Water_Vehicle.EndCutsceneFrigate03, 0)
  CameraSetFOV(Camera.CutsceneCamera, 75, constant.IMMEDIATE, 5, constant.NO_WAIT)
  CameraSetWaypoint(Camera.CutsceneCamera, Waypoint.EndingCutsceneWaypoint07)
  CameraSetTarget(Camera.CutsceneCamera, Waypoint.EndingCutsceneTarget07)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(92, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  PhoneMessage(93, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(7)
  FollowWaypoint(Water_Vehicle.SEBattleship03, Waypoint.OutroCutsceneShipPath05, 0, 0, constant.ORDER_FORCED)
  EndFrame()
  FollowWaypoint(Water_Vehicle.SEBattleship02, Waypoint.OutroCutsceneShipPath06, 0, 0, constant.ORDER_FORCED)
  WaitFor(3.5)
  Despawn(Water_Vehicle.SEBattleship03)
  Despawn(Water_Vehicle.SEBattleship02)
  FollowWaypoint(Water_Vehicle.SEFrigate01, Waypoint.OutroCutsceneShipPath03, 0, 0, constant.ORDER_FORCED)
  WaitFor(1)
  FollowWaypoint(Water_Vehicle.EndCutsceneFrigate03, Waypoint.OutroCutsceneShipPath07, 0, 0, constant.ORDER_FORCED)
  WaitFor(1)
  FollowWaypoint(Water_Vehicle.SEFrigate02, Waypoint.OutroCutsceneShipPath04, 0, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  Despawn(Water_Vehicle.SEBattleship01)
  Despawn(Water_Vehicle.SEBattleship02)
  Despawn(Water_Vehicle.EndCutsceneFrigate01)
  Despawn(Water_Vehicle.EndCutsceneFrigate02)
  OutroCutsceneStart = 3
end
