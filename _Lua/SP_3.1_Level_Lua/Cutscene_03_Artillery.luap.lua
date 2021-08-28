function Cutscene_03_Artillery(owner)
  repeat
    EndFrame()
  until mid == 1
  if fightermid > 0 then
    DebugOut("Win / Lose loop waiting for Fighter cutscene to end")
    repeat
      EndFrame()
    until fightermid == 4
  end
  artcut = 1
  cutkiller = owner
  DebugOut("mid level cutscene shot 1 begins")
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StartIntro()
  if GetHealthPercent(Ground_Vehicle.CS_Artillery_1) > 35 and 35 < GetHealthPercent(Ground_Vehicle.CS_Artillery_2) and 35 < GetHealthPercent(Ground_Vehicle.CS_Artillery_3) then
    local art2health = GetHealthPercent(Ground_Vehicle.CS_Artillery_2)
    SetCamera(Camera.Mid_Camera_1)
    CameraSetFOV(Camera.Mid_Camera_1, 60, constant.IMMEDIATE, 65, constant.NO_WAIT)
    SetViewDistanceAdjustment(600, 30)
    ClearMessageQueue()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(1)
    PhoneMessage(32, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
    WaitFor(6)
    WaitFor(1)
    DebugOut("mid level cutscene shot 2 begins")
    Spawn(Water_Vehicle.AI_Battleship_1)
    Spawn(Water_Vehicle.AI_Battleship_2)
    EndFrame()
    AttackTarget(Water_Vehicle.AI_Battleship_1, Ground_Vehicle.CS_Artillery_2)
    AttackTarget(Water_Vehicle.AI_Battleship_2, Ground_Vehicle.CS_Artillery_2)
    WaitFor(1)
    PhoneMessage(33, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
    repeat
      EndFrame()
    until art2health ~= GetHealthPercent(Ground_Vehicle.CS_Artillery_2)
    Kill(Ground_Vehicle.CS_Artillery_1)
    Kill(Ground_Vehicle.CS_Artillery_2)
    Kill(Ground_Vehicle.CS_Artillery_3)
    gunships = 1
    CameraSetFOV(Camera.Mid_Camera_1, 45, constant.SMOOTH, 2, constant.NO_WAIT)
    repeat
      EndFrame()
    until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    cutscene = 1
  else
    SetCamera(Camera.Mid_Camera_1b)
    CameraSetFOV(Camera.Mid_Camera_1b, 65, constant.IMMEDIATE, 65, constant.NO_WAIT)
    SetViewDistanceAdjustment(600, 30)
    Teleport(Water_Vehicle.AI_Battleship_1, -600, 555, 25, 2)
    Teleport(Water_Vehicle.AI_Battleship_2, -590, 535, 55, 2)
    Spawn(Water_Vehicle.AI_Battleship_1)
    Spawn(Water_Vehicle.AI_Battleship_2)
    ClearMessageQueue()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(31, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
    WaitFor(7)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    cutscene = 1
  end
end
