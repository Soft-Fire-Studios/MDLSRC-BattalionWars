function CUTSCENEMID3(owner)
  cutscenemid3 = owner
  repeat
    EndFrame()
  until FactoryCutscene == true and BarracksCutsceneOn == false
  PauseTimerActive = 1
  StartIntro()
  FreezePlayer(constant.PLAYER_ONE)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.cutscenecam)
  CameraSetFOV(Camera.cutscenecam, 65, constant.IMMEDIATE, constant.WAIT)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.midcutscene3)
  CameraSetTarget(Camera.cutscenecam, Waypoint.midcutscene3target)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if SecondObjectivesShown == true then
    PhoneMessageWithObjective(50, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  else
    PhoneMessage(50, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  end
  PhoneMessage(51, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  WaitFor(8)
  ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Ground_Vehicle.WFcutsceneArtillery1, GetObjectXPosition(Waypoint.WFArtillery1cutscenespawn), GetObjectZPosition(Waypoint.WFArtillery1cutscenespawn), 90, 4)
  WaitFor(4)
  ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Ground_Vehicle.WFcutsceneArtillery2, GetObjectXPosition(Waypoint.WFArtillery2cutscenespawn), GetObjectZPosition(Waypoint.WFArtillery2cutscenespawn), 90, 4)
  WaitFor(6.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  MidCutscene3Ended = true
end
