function Cutscene_Outro_Abandon(owner)
  CutsceneAbandonNavalGuns = owner
  Despawn(Air_Vehicle.AIbomber3)
  Despawn(Air_Vehicle.AIbomber5)
  Despawn(Building.LoseCutsceneBomberTarget1)
  Despawn(Building.LoseCutsceneBomberTarget2)
  repeat
    EndFrame()
  until CutsceneAbandonNavalGunsStart == 1
  Kill(WinLoseScript)
  Kill(MissionFlow)
  Kill(MissionFlow2)
  Kill(CutsceneHelipad)
  Kill(midcutscene2)
  Kill(WFOutpost)
  Kill(COMessages)
  Kill(BoatOrders)
  Kill(CutsceneBeachTank)
  Kill(CutsceneBeachInfantry)
  ClearMessageQueue()
  FreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StartOutro()
  SetCamera(Camera.cutscenecam)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.outrocutscenelose1)
  CameraSetTarget(Camera.cutscenecam, Waypoint.outrocutscenelose1target)
  CameraSetFOV(Camera.cutscenecam, 60, constant.IMMEDIATE, 100)
  EnableWeapon(Ground_Vehicle.SEaatank1, 0)
  SetUnitInvulnerable(Building.NavalCannon1, true)
  SetUnitInvulnerable(Building.NavalCannon2, true)
  Spawn(Air_Vehicle.AIbomber3)
  Spawn(Air_Vehicle.AIbomber5)
  Spawn(Building.LoseCutsceneBomberTarget1)
  Spawn(Building.LoseCutsceneBomberTarget2)
  AttackTarget(Air_Vehicle.AIbomber3, Building.LoseCutsceneBomberTarget1, constant.ORDER_FORCED)
  AttackTarget(Air_Vehicle.AIbomber5, Building.LoseCutsceneBomberTarget2, constant.ORDER_FORCED)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ClearMessageQueue()
  PhoneMessage(23, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(1.5)
  Kill(Building.NavalCannon1)
  WaitFor(1)
  Kill(Building.NavalCannon2)
  WaitFor(1)
  DeclareVictory(constant.ARMY_ANGLO)
  WaitFor(6.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndOutro()
  LoseMission(151)
end
