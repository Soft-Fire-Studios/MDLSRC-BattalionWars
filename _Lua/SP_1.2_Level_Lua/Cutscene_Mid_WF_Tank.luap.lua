function Cutscene_Mid_WF_Tank(owner)
  CutsceneWFTank = owner
  repeat
    EndFrame()
  until CutsceneWFTankStart == 1 and HelipadCutscenePlaying == 0
  WFTankCutscenePlaying = 1
  ClearMessageQueue()
  FreezePlayer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  PauseTimerActive = 1
  FollowWaypoint(Ground_Vehicle.WFlighttank1, Waypoint.WFLightTankPath, 0, 0, constant.ORDER_FORCED)
  SetCamera(Camera.cutscenecamLOD)
  CameraSetWaypoint(Camera.cutscenecamLOD, Waypoint.CutsceneWFTank)
  CameraSetTarget(Camera.cutscenecamLOD, Ground_Vehicle.WFlighttank1)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(48, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CutsceneWFTankEnd = 1
end
