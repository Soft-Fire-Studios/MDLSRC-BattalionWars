function CUTSCENEMID2(owner)
  cutscenemid2 = owner
  repeat
    EndFrame()
  until BarracksCutscene == true and FactoryCutsceneOn == false
  PauseTimerActive = 1
  StartIntro()
  FreezePlayer(constant.PLAYER_ONE)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.cutscenecam)
  CameraSetFOV(Camera.cutscenecam, 65, constant.IMMEDIATE)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.midcutscene2)
  CameraSetTarget(Camera.cutscenecam, Waypoint.midcutscene2target)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if SecondObjectivesShown == true then
    PhoneMessageWithObjective(41, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  else
    PhoneMessage(41, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  end
  PhoneMessage(42, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
  WaitFor(7)
  ReviveDeadUnit(Troop.WFAA1cutscene, GetObjectXPosition(Waypoint.WFAA1cutscenespawn), GetObjectZPosition(Waypoint.WFAA1cutscenespawn), 270, 5)
  WaitFor(4)
  ReviveDeadUnit(Troop.WFAA2cutscene, GetObjectXPosition(Waypoint.WFAA2cutscenespawn), GetObjectZPosition(Waypoint.WFAA2cutscenespawn), 270, 5)
  WaitFor(4)
  ReviveDeadUnit(Troop.WFAA3cutscene, GetObjectXPosition(Waypoint.WFAA3cutscenespawn), GetObjectZPosition(Waypoint.WFAA3cutscenespawn), 270, 5)
  WaitFor(4)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  MidCutscene2Ended = true
end
