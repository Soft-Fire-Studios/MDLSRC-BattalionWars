function Cutscene_02_Fighters(owner)
  WaitFor(1)
  Kill(Air_Vehicle.CS_AI_Fighter)
  repeat
    EndFrame()
  until fightermid == 2
  if mid == 1 then
    repeat
      EndFrame()
    until mid == 2
  end
  cutkiller = owner
  cutscene = 0
  if fighterintro == 0 then
    fighterintro = 2
    SetViewDistanceAdjustment(500, 2)
    DebugOut("Fighter cutscene shot 3 begins")
    SetCamera(Camera.Fighter_Camera_3)
    CameraSetFOV(Camera.Fighter_Camera_3, 40, constant.IMMEDIATE, 65, constant.NO_WAIT)
    CameraSetFOV(Camera.Fighter_Camera_3, 60, constant.SMOOTH, 1, constant.NO_WAIT)
    ClearMessageQueue()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(1)
    PhoneMessage(15, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    repeat
      EndFrame()
    until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    Teleport(Air_Vehicle.SE_Gunship_11, -910, 850, 180, 2)
    Teleport(Air_Vehicle.SE_Gunship_12, -620, 735, 235, 2)
    Despawn(Air_Vehicle.SE_Gunship_11)
    Despawn(Air_Vehicle.SE_Gunship_12)
  end
  DebugOut("Fighter cutscene shot 2 begins")
  SetCamera(Camera.Fighter_Camera_2)
  CameraSetFOV(Camera.Fighter_Camera_2, 60, constant.IMMEDIATE, 65, constant.NO_WAIT)
  CameraSetFOV(Camera.Fighter_Camera_2, 70, constant.SMOOTH, 1, constant.NO_WAIT)
  SetViewDistanceAdjustment(600, 2)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  DebugOut("Spawning Fake Fighter")
  ReviveDeadUnit(Air_Vehicle.CS_AI_Fighter, -910, 315, 0, 0)
  if fighterintro == 2 then
    PhoneMessage(91, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
  else
    PhoneMessage(14, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
  end
  EndFrame()
  EndFrame()
  FollowWaypoint(Air_Vehicle.CS_AI_Fighter, Waypoint.Cutscene, 0, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  fightermid = 3
  cutscene = 1
end
