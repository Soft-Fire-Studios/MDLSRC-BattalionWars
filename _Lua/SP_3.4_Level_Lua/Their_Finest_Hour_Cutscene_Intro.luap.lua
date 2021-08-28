function Their_Finest_Hour_Cutscene_Intro(owner)
  CutsceneIntro = owner
  StartIntro()
  SetCamera(Camera.CutsceneCam1)
  CameraSetTarget(Camera.CutsceneCam1, Waypoint.CutsceneCam01Shot01Target)
  CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.CutsceneCam01Shot01Spline)
  PhoneMessage(1, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(2, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  WaitFor(1)
  CutsceneIntroBegins = 1
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CutsceneShot01Complete = 1
  DebugOut("CutsceneShot01Complete =", CutsceneShot01Complete)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.SE_Grunt01)
  Spawn(Troop.SE_Grunt02)
  Spawn(Troop.SE_Grunt03)
  Spawn(Troop.SE_Grunt04)
  Spawn(Troop.SE_Grunt05)
  GoToArea(Troop.SE_Grunt01, GetObjectXPosition(Waypoint.Cutscene01_SE_Grunts), GetObjectZPosition(Waypoint.Cutscene01_SE_Grunts), constant.ORDER_FORCED)
  GoToArea(Troop.SE_Grunt02, GetObjectXPosition(Waypoint.Cutscene01_SE_Grunts), GetObjectZPosition(Waypoint.Cutscene01_SE_Grunts), constant.ORDER_FORCED)
  GoToArea(Troop.SE_Grunt03, GetObjectXPosition(Waypoint.Cutscene01_SE_Grunts), GetObjectZPosition(Waypoint.Cutscene01_SE_Grunts), constant.ORDER_FORCED)
  GoToArea(Troop.SE_Grunt04, GetObjectXPosition(Waypoint.Cutscene01_SE_Grunts), GetObjectZPosition(Waypoint.Cutscene01_SE_Grunts), constant.ORDER_FORCED)
  GoToArea(Troop.SE_Grunt05, GetObjectXPosition(Waypoint.Cutscene01_SE_Grunts), GetObjectZPosition(Waypoint.Cutscene01_SE_Grunts), constant.ORDER_FORCED)
  CameraSetTarget(Camera.CutsceneCam1, Waypoint.CutsceneCam01Shot02Target)
  CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.CutsceneCam01Shot02Spline)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(3, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CutsceneShot02Complete = 1
  DebugOut("CutsceneShot02Complete =", CutsceneShot02Complete)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.AI_Airbase01_MGTower01_Pilot01)
  Spawn(Troop.AI_Airbase01_MGTower02_Pilot01)
  Spawn(Troop.AI_Airbase01_MGTower03_Pilot01)
  Spawn(Troop.AI_Grunt04)
  Teleport(Troop.AI_Airbase01_MGTower01_Pilot01, GetObjectXPosition(Waypoint.Cutscene01_AI_Grunt01_Start), GetObjectZPosition(Waypoint.Cutscene01_AI_Grunt01_Start), 90, 5)
  Teleport(Troop.AI_Airbase01_MGTower02_Pilot01, GetObjectXPosition(Waypoint.Cutscene01_AI_Grunt02_Start), GetObjectZPosition(Waypoint.Cutscene01_AI_Grunt02_Start), 90, 5)
  Teleport(Troop.AI_Airbase01_MGTower03_Pilot01, GetObjectXPosition(Waypoint.Cutscene01_AI_Grunt03_Start), GetObjectZPosition(Waypoint.Cutscene01_AI_Grunt03_Start), 90, 5)
  Teleport(Troop.AI_Grunt04, GetObjectXPosition(Waypoint.Cutscene01_AI_Grunt04_Start), GetObjectZPosition(Waypoint.Cutscene01_AI_Grunt04_Start), 90, 5)
  Spawn(Air_Vehicle.AI_Bomber01_Cutscene)
  GoToArea(Air_Vehicle.AI_Bomber01_Cutscene, GetObjectXPosition(Capture_Point.AI_Airbase01), GetObjectZPosition(Capture_Point.AI_Airbase01), constant.ORDER_FORCED)
  CameraSetTarget(Camera.CutsceneCam1, Waypoint.CutsceneCam01Shot03Target)
  CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.CutsceneCam01Shot03Spline)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(4, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(5, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  EnterVehicle(Troop.AI_Airbase01_MGTower01_Pilot01, Building.AI_Airbase01_MGTower01, constant.ORDER_FORCED)
  EnterVehicle(Troop.AI_Airbase01_MGTower02_Pilot01, Building.AI_Airbase01_MGTower02, constant.ORDER_FORCED)
  EnterVehicle(Troop.AI_Airbase01_MGTower03_Pilot01, Building.AI_Airbase01_MGTower03, constant.ORDER_FORCED)
  GoToArea(Troop.AI_Grunt04, GetObjectXPosition(Waypoint.Cutscene01Pilot), GetObjectZPosition(Waypoint.Cutscene01Pilot), constant.ORDER_FORCED)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CutsceneShot03Complete = 1
  DebugOut("CutsceneShot03Complete =", CutsceneShot03Complete)
  Cutscene = 1
  DebugOut("Cutscene =", Cutscene)
end
