function CUTSCENE_MID1(owner)
  midcutscene1 = owner
  repeat
    EndFrame()
  until MidCutscene1start == true
  PauseTimerActive = 1
  StartOutro()
  SetCamera(Camera.cutscenecam)
  CameraSetTarget(Camera.cutscenecam, Waypoint.cutscene2Btarget)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.cutscene2Bwp)
  CameraSetFOV(Camera.cutscenecam, 75, constant.IMMEDIATE)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(29, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  WaitFor(10.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetTarget(Camera.cutscenecam, Waypoint.cutscene2Atarget)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.cutscene2Awp)
  CameraSetFOV(Camera.cutscenecam, 75, constant.IMMEDIATE)
  Spawn(Air_Vehicle.AIbomber1)
  Spawn(Air_Vehicle.AIbomber2)
  FollowWaypoint(Air_Vehicle.AIbomber1, Waypoint.AIbomber1, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Air_Vehicle.AIbomber2, Waypoint.AIbomber2, 0, 0, constant.ORDER_FORCED)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(28, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(7)
  Teleport(Air_Vehicle.AIbomber1, -951.5, 63.3, 45, 10)
  Teleport(Air_Vehicle.AIbomber2, -1011, 68.3, 45, 10)
  Despawn(Air_Vehicle.AIbomber1)
  Despawn(Air_Vehicle.AIbomber2)
  PhoneMessageWithObjective(30, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  PhoneMessage(31, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  PhoneMessage(32, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  WaitFor(21)
  AirRaid = 1
  FollowWaypoint(Water_Vehicle.TBattleship1, Waypoint.BattleshipWP1A, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  WaitFor(1.5)
  FollowWaypoint(Water_Vehicle.TBattleship2, Waypoint.BattleshipWP1B, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  WaitFor(6)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  MidCutscene1Ended = true
end
