function Cutscene_Intro(owner)
  IntroCutscene = owner
  Despawn(Troop.SEGrunt16)
  Despawn(Troop.SEGrunt17)
  Despawn(Troop.SEGrunt18)
  Despawn(Troop.SEGrunt19)
  Kill(Air_Vehicle.ILBomber01)
  Kill(Air_Vehicle.ILFighter01)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
  SetUnitInvulnerable(Building.CutsceneBattleship01Target, true)
  SetUnitInvulnerable(Building.CutsceneBattleship02Target, true)
  StartIntro()
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  SetCapturePointHeight(Capture_Point.ILairbase, constant.ARMY_UNDERWORLD, 100)
  SetInstallationOwner(Strategic_Installation.ILairbase, constant.ARMY_UNDERWORLD)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.IntroCutsceneShot03SplineA)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.IntroCutsceneShot03TargetC)
  CameraSetFOV(Camera.CutsceneCam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  SetWaterRenderEnable(false)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(5, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  PhoneMessage(6, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Teleport(Water_Vehicle.SEBattleship01, GetObjectXPosition(Waypoint.Battleship01Teleport), GetObjectZPosition(Waypoint.Battleship01Teleport), 0, 0)
  Teleport(Water_Vehicle.SEBattleship02, GetObjectXPosition(Waypoint.Battleship02Teleport), GetObjectZPosition(Waypoint.Battleship02Teleport), 0, 0)
  GoToArea(Water_Vehicle.SEBattleship01, GetObjectXPosition(Waypoint.BattleshipPath01), GetObjectZPosition(Waypoint.BattleshipPath01), 0, 0, constant.ORDER_FORCED)
  GoToArea(Water_Vehicle.SEBattleship02, GetObjectXPosition(Waypoint.BattleshipPath02), GetObjectZPosition(Waypoint.BattleshipPath02), 0, 0, constant.ORDER_FORCED)
  BeachWaterUnit(Water_Vehicle.SENavalTransport01, GetObjectXPosition(Waypoint.SENavalTransport01Land), GetObjectZPosition(Waypoint.SENavalTransport01Land), 0, 0)
  BeachWaterUnit(Water_Vehicle.SENavalTransport02, GetObjectXPosition(Waypoint.SENavalTransport02Land), GetObjectZPosition(Waypoint.SENavalTransport02Land), 0, 0)
  BeachWaterUnit(Water_Vehicle.SENavalTransport03, GetObjectXPosition(Waypoint.SENavalTransport03Land), GetObjectZPosition(Waypoint.SENavalTransport03Land), 0, 0)
  BeachWaterUnit(Water_Vehicle.SENavalTransport04, GetObjectXPosition(Waypoint.SENavalTransport04Land), GetObjectZPosition(Waypoint.SENavalTransport04Land), 0, 0)
  EnableWeapon(Water_Vehicle.SEBattleship01, 0)
  EnableWeapon(Water_Vehicle.SEBattleship02, 0)
  EnableWeapon(Building.NavalGun01, 0)
  EnableWeapon(Building.NavalGun02, 0)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.IntroCutsceneShot01SplineA)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.IntroCutsceneShot01TargetA)
  CameraSetFOV(Camera.CutsceneCam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  SetWaterRenderEnable(true)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(1, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Water_Vehicle.SENavalTransport01)
  Despawn(Water_Vehicle.SENavalTransport02)
  Despawn(Water_Vehicle.SENavalTransport03)
  Despawn(Water_Vehicle.SENavalTransport04)
  Despawn(Water_Vehicle.SEBattleship01)
  Despawn(Water_Vehicle.SEBattleship02)
  EndFrame()
  Spawn(Water_Vehicle.SEBattleship01)
  Spawn(Water_Vehicle.SEBattleship02)
  Teleport(Water_Vehicle.SEBattleship01, GetObjectXPosition(Waypoint.BattleshipPath01), GetObjectZPosition(Waypoint.BattleshipPath01), 0, 0)
  Teleport(Water_Vehicle.SEBattleship02, GetObjectXPosition(Waypoint.BattleshipPath02), GetObjectZPosition(Waypoint.BattleshipPath02), 0, 0)
  EnableWeapon(Building.NavalGun02, 1)
  EnableWeapon(Water_Vehicle.SEBattleship01, 1)
  EnableWeapon(Water_Vehicle.SEBattleship02, 1)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.IntroCutsceneShot01SplineB)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.IntroCutsceneShot01TargetB)
  CameraSetFOV(Camera.CutsceneCam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(2, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  AttackTarget(Water_Vehicle.SEBattleship01, Building.CutsceneBattleship01Target, constant.ORDER_FORCED)
  AttackTarget(Water_Vehicle.SEBattleship02, Building.CutsceneBattleship02Target, constant.ORDER_FORCED)
  WaitFor(1.5)
  EnableWeapon(Building.NavalGun01, 1)
  WaitFor(6)
  Kill(Water_Vehicle.SEBattleship01)
  WaitFor(3.5)
  Kill(Water_Vehicle.SEBattleship02)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(2)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Air_Vehicle.SEAirTransport02)
  Teleport(Air_Vehicle.SEAirTransport02, GetObjectXPosition(Waypoint.CutsceneAirTransport02Teleport), GetObjectZPosition(Waypoint.CutsceneAirTransport02Teleport), 170, 0)
  FollowWaypoint(Air_Vehicle.SEAirTransport02, Waypoint.CutsceneAirTransport02Path, 0, 0, constant.ORDER_FORCED)
  SetCapturePointHeight(Capture_Point.ILairbase, constant.ARMY_UNDERWORLD, 25)
  Spawn(Troop.SEGrunt16)
  Spawn(Troop.SEGrunt17)
  Spawn(Troop.SEGrunt18)
  Spawn(Troop.SEGrunt19)
  PutUnitInVehicle(Troop.SEGrunt03, Capture_Point.ILairbase, 2)
  PutUnitInVehicle(Troop.SEGrunt16, Capture_Point.ILairbase, 3)
  EnterVehicle(Troop.SEGrunt17, Capture_Point.ILairbase)
  EnterVehicle(Troop.SEGrunt18, Capture_Point.ILairbase)
  EnterVehicle(Troop.SEGrunt19, Capture_Point.ILairbase)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.IntroCutsceneShot02Spline)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.IntroCutsceneShot02Target)
  CameraSetFOV(Camera.CutsceneCam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraSetFOV(Camera.CutsceneCam, 90, constant.SMOOTH, 1, constant.NO_WAIT)
  SetWaterRenderEnable(false)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessageWithObjective(3, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  repeat
    EndFrame()
  until CheckCapturePoint(Capture_Point.ILairbase, constant.ARMY_SOLAR, 97, 2, 0) == true
  SetInstallationOwner(Strategic_Installation.ILairbase, constant.ARMY_SOLAR)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Air_Vehicle.SEAirTransport02)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.IntroCutsceneShot04Spline)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.IntroCutsceneShot04Target)
  CameraSetFOV(Camera.CutsceneCam, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(4, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  IntroCutsceneEnd = 1
end
