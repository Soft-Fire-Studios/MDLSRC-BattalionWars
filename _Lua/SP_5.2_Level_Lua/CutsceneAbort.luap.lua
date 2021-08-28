function CutsceneAbort(owner)
  cutsceneabort = owner
  scriptCutsceneAbort = owner
  MinLevelTime = 810
  MaxLevelTime = 1620
  SolarEmpire = FriendlyArmy
  Tundra = FriendlyArmy
  Xylvania = EnemyArmy
  TechniqueObjectives = 2
  TechniqueWeighting = 15
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
      Kill(cutscene)
      DebugOut("Killed cutscene")
      cutscenefinished = 1
    end
    EndFrame()
  until cutscenefinished == 1
  Kill(cutscene)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  notincutscene = 0
  Spawn(Water_Vehicle.TundranFrigate1)
  Spawn(Water_Vehicle.TundranFrigate2)
  Spawn(Water_Vehicle.TundranFrigate3)
  Spawn(Water_Vehicle.TundranSubmarine1)
  Spawn(Water_Vehicle.TundranSubmarine2)
  Spawn(Building.XAATower1)
  Spawn(Building.XAATower2)
  Spawn(Building.XAATower3)
  Spawn(Building.XAATower4)
  ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.TDreadnought, true, true)
  Despawn(Troop.DummyGrunt)
  Teleport(Water_Vehicle.TDreadnought, 157, -1202, 340, 5)
  Teleport(Water_Vehicle.TundranSubmarine2, 181, -1211, 340, 5)
  Teleport(Water_Vehicle.TundranFrigate1, 205, -1207, 340, 5)
  Teleport(Water_Vehicle.TundranFrigate2, 226, -1198, 340, 5)
  Teleport(Water_Vehicle.TundranSubmarine1, 241, -1168, 340, 5)
  Teleport(Water_Vehicle.TundranFrigate3, 233, -1231, 340, 5)
  SetCamera(Camera.Player1Cam, constant.PLAYER_ONE)
  EndIntro()
  StoreSummaryMessage(constant.PLAYER_ONE, 44, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 45, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 46, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
  StartScoringTimer()
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  PhoneMessage(36, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  PhoneMessage(18, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  startmission = 1
  WaitFor(5)
  FollowWaypoint(Water_Vehicle.Submarine7, Waypoint.XIslandPatrolSubmarine1, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Water_Vehicle.Submarine6, Waypoint.XIslandPatrolSubmarine2, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Water_Vehicle.Submarine5, Waypoint.XIslandPatrolSubmarine1, 0, 0, constant.ORDER_NORMAL)
end
