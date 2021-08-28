function Ice_Station_X_Cutscene03(owner)
  Cutscene03Dead = owner
  Kill(Water_Vehicle.XN_Battleship01)
  Kill(Water_Vehicle.XN_Battleship02)
  Despawn(Water_Vehicle.XN_Battleship01_Cutscene)
  Despawn(Water_Vehicle.XN_Battleship02_Cutscene)
  repeat
    EndFrame()
  until IsDead(Ground_Vehicle.XN_AAVehicle01) and IsDead(Ground_Vehicle.XN_AAVehicle02) and IsDead(Ground_Vehicle.XN_AAVehicle03)
  Cutscene03Ready = 1
  FreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  PauseTimerActive = 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StartOutro()
  Spawn(Water_Vehicle.XN_Battleship01_Cutscene)
  Spawn(Water_Vehicle.XN_Battleship02_Cutscene)
  FollowWaypoint(Water_Vehicle.XN_Battleship01_Cutscene, Waypoint.XN_Battleship01_Cutscene, 0, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
  FollowWaypoint(Water_Vehicle.XN_Battleship02_Cutscene, Waypoint.XN_Battleship02_Cutscene, 0, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
  SetCamera(Camera.Cutscene03_Shot01)
  CameraSetTarget(Camera.Cutscene03_Shot01, Waypoint.Cutscene03_Shot01_Target01)
  CameraSetWaypoint(Camera.Cutscene03_Shot01, Waypoint.Cutscene03_Shot01_Spline01)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Cutscene03Begun = 1
  WaitFor(1)
  PhoneMessage(73, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  Cutscene03Finished = 1
end
