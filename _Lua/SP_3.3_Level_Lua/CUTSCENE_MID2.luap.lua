function CUTSCENE_MID2(owner)
  midcutscene2 = owner
  repeat
    EndFrame()
  until CutsceneStatueTriggered == true
  PauseTimerActive = 1
  StartOutro()
  SetCamera(Camera.cutscenecam)
  CameraSetTarget(Camera.cutscenecam, Waypoint.CutsceneMid2shot1target)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.CutsceneMid2shot1)
  CameraSetFOV(Camera.cutscenecam, 65, constant.IMMEDIATE, 3)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if SquadArrived == true then
    PhoneMessageWithObjective(40, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
    WaitFor(9.5)
  else
    PhoneMessageWithObjective(122, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
    WaitFor(9.5)
  end
  EndFrame()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  DespawnAIDudesNow = true
  Teleport(Water_Vehicle.SEdreadnaught, 747, 319, 270, 10)
  CameraSetTarget(Camera.cutscenecam, Waypoint.dreadtarget)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.cutsceneDread1)
  CameraSetFOV(Camera.cutscenecam, 75, constant.IMMEDIATE, 3)
  Spawn(Water_Vehicle.SEdreadnaught)
  FollowWaypoint(Water_Vehicle.SEdreadnaught, Waypoint.dread, 0, 0, constant.ORDER_FORCED)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(41, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(42, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(9)
  StopAndGuard(Water_Vehicle.SEdreadnaught)
  WaitFor(3)
  AttackTarget(Water_Vehicle.SEdreadnaught, Building.Statue, constant.ORDER_FORCED)
  WaitFor(8)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  MidCutscene2Ended = true
end
