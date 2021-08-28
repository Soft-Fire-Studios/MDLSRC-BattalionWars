function JW_Cutscene_01_Intro(owner)
  IntroCutsceneGlobal = owner
  SetObjectiveData(Objective_Marker.PrimaryObjectEscortTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetCamera(Camera.CutsceneCamera)
  CameraSetFOV(Camera.CutsceneCamera, 60, constant.IMMEDIATE, 5, constant.NO_WAIT)
  CameraSetFOV(Camera.CutsceneCamera, 45, constant.SMOOTH, 1.5, constant.NO_WAIT)
  CameraSetWaypoint(Camera.CutsceneCamera, Waypoint.IntroductionCutscene01Waypoint01)
  CameraSetTarget(Camera.CutsceneCamera, Waypoint.IntroductionCutscene01Target01)
  WaitFor(1.5)
  PhoneMessageWithObjective(50, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(0.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StopAndGuard(Ground_Vehicle.AngloArtillery03)
  StopAndGuard(Ground_Vehicle.AngloArtillery06)
  SetCamera(Camera.CutsceneCamera)
  CameraSetFOV(Camera.CutsceneCamera, 70, constant.IMMEDIATE, 5, constant.NO_WAIT)
  CameraSetWaypoint(Camera.CutsceneCamera, Waypoint.IntroductionCutscene02Waypoint01)
  CameraSetTarget(Camera.CutsceneCamera, Waypoint.IntroductionCutscene02Target01)
  GoToArea(Ground_Vehicle.AngloArtillery06, -455, -35, 1, constant.ORDER_FORCED)
  move = 1
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(51, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(2)
  GoToArea(Ground_Vehicle.AngloArtillery03, -458, 30, 1, constant.ORDER_FORCED)
  move = 2
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Air_Vehicle.SolarAirTransport03)
  Despawn(Air_Vehicle.SolarAirTransport04)
  SetCamera(Camera.CutsceneCamera)
  CameraSetFOV(Camera.CutsceneCamera, 45, constant.IMMEDIATE, 5, constant.NO_WAIT)
  CameraSetWaypoint(Camera.CutsceneCamera, Waypoint.IntroductionCutscene03Waypoint01)
  CameraSetTarget(Camera.CutsceneCamera, Waypoint.IntroductionCutscene03Target01)
  LandAirUnit(Air_Vehicle.IntroductionCutscene03AngloAirTransport, 87, -175, constant.ORDER_FORCED, 1, 5, 270)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(52, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  IntroCutsceneEnd = 1
end
