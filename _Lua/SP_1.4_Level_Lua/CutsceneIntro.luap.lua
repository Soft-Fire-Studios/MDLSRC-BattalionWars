function CutsceneIntro(owner)
  scriptCutsceneIntro = owner
  MinLevelTime = 450
  MaxLevelTime = 900
  SolarEmpire = FriendlyArmy
  AngloIsles = EnemyArmy
  TechniqueObjectives = 1
  TechniqueWeighting = 5
  FreezePlayer(constant.PLAYER_ONE)
  StartIntro()
  CameraSetTarget(Camera.CutsceneCam, Waypoint.IntroCutsceneTarget1)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.IntroCutsceneSpline1)
  WaitFor(0.1)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(4, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(9.4)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.IntroCutsceneTarget2)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.IntroCutsceneSpline2)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessageWithObjective(1, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(5.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetFOV(Camera.CutsceneCam, 45, constant.IMMEDIATE, 45, constant.NO_WAIT)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.IntroCutsceneTarget3)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.IntroCutsceneSpline3)
  GoToArea(Troop.AdvancingFlamer1, 241, 701, 5, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.AdvancingFlamer2, 236, 707, 5, 0, constant.ORDER_NORMAL)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(2, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(5)
  WaitFor(3)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  CutsceneIntroFinished = 1
end
