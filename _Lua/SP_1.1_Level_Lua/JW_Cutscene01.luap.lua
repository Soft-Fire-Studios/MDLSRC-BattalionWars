function JW_Cutscene01(owner)
  KillCutscene01 = owner
  StartIntro()
  CameraSetFOV(Camera.CutsceneCamera01, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  PhoneMessage(95, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetTarget(Camera.CutsceneCamera01, Waypoint.Cutscene01_Shot01_Target01)
  CameraSetWaypoint(Camera.CutsceneCamera01, Waypoint.Cutscene01_Shot01_Spline01)
  CameraSetFOV(Camera.CutsceneCamera01, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(96, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetWaypoint(Camera.CutsceneCamera01, Waypoint.Cutscene01_Shot04_Target01)
  CameraSetTarget(Camera.CutsceneCamera01, Capture_Point.SE_Airbase_CP)
  CameraSetFOV(Camera.CutsceneCamera01, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(97, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  WaitFor(5)
  Spawn(Air_Vehicle.Cutscene01Bomber01)
  Spawn(Air_Vehicle.Cutscene01Bomber02)
  Spawn(Air_Vehicle.Cutscene01Fighter01)
  Spawn(Air_Vehicle.Cutscene01Fighter02)
  EnableWeapon(Air_Vehicle.Cutscene01Bomber01, 0)
  EnableWeapon(Air_Vehicle.Cutscene01Bomber02, 0)
  EnableWeapon(Air_Vehicle.Cutscene01Fighter01, 0)
  EnableWeapon(Air_Vehicle.Cutscene01Fighter02, 0)
  FollowWaypoint(Air_Vehicle.Cutscene01Bomber01, Waypoint.Cutscene01Bomber01Path, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Air_Vehicle.Cutscene01Bomber02, Waypoint.Cutscene01Bomber02Path, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Air_Vehicle.Cutscene01Fighter01, Waypoint.Cutscene01Fighter01Path, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Air_Vehicle.Cutscene01Fighter02, Waypoint.Cutscene01Fighter02Path, 0, 0, constant.ORDER_FORCED)
  WaitFor(3)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetWaypoint(Camera.CutsceneCamera01, Waypoint.Cutscene01_Shot05_Spline01)
  CameraSetTarget(Camera.CutsceneCamera01, Air_Vehicle.Cutscene01Bomber01)
  CameraSetFOV(Camera.CutsceneCamera01, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(98, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(1)
  Cutscene01Finished = 1
end
