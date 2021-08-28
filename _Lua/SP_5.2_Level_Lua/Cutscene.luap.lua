function Cutscene(owner)
  scriptCutscene = owner
  cutscene = owner
  notincutscene = 1
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.DummyGrunt)
  FreezePlayer(constant.PLAYER_ONE)
  Despawn(Water_Vehicle.TundranFrigate1)
  Despawn(Water_Vehicle.TundranFrigate2)
  Despawn(Water_Vehicle.TundranFrigate3)
  Despawn(Water_Vehicle.TundranSubmarine1)
  Despawn(Water_Vehicle.TundranSubmarine2)
  Despawn(Building.XAATower1)
  Despawn(Building.XAATower2)
  Despawn(Building.XAATower3)
  Despawn(Building.XAATower4)
  GoToArea(Water_Vehicle.TDreadnought, 115, -1097, 5, 0, constant.ORDER_FORCED)
  StartIntro()
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.Camera1Target)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.Camera1Spline)
  PhoneMessage(44, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
  WaitFor(6)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  CameraSetTarget(Camera.CutsceneCam, Waypoint.Camera2Target)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.Camera2Spline)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(45, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(6.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  CameraSetTarget(Camera.CutsceneCam, Waypoint.Camera3Target)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.Camera3Spline)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(46, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  WaitFor(8.5)
  cutscenefinished = 1
end
