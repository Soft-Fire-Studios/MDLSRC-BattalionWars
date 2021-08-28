function POA_Cutscene(owner)
  cutkiller = owner
  StartIntro()
  FreezePlayer(constant.PLAYER_ONE)
  FreezePlayer(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetFOV(Camera.Cutscene0003_Player1, 70, constant.IMMEDIATE, 1, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetFOV(Camera.Cutscene0003_Player2, 70, constant.IMMEDIATE, 1, constant.NO_WAIT)
  end
  WaitFor(1)
  PhoneMessage(86, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE)
  PhoneMessage(87, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE)
  PhoneMessage(88, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO)
  PhoneMessage(89, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO)
  WaitFor(13)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Spawn(Ground_Vehicle.Entity0001)
    Spawn(Ground_Vehicle.Entity0003)
    Spawn(Troop.Entity0162)
    Spawn(Troop.Entity0163)
    SetCamera(Camera.Cutscene0001_Player1, constant.PLAYER_ONE)
    CameraSetFOV(Camera.Cutscene0001_Player1, 70, constant.IMMEDIATE, 1, constant.NO_WAIT)
    EndFrame()
    CameraSetFOV(Camera.Cutscene0001_Player1, 60, constant.SMOOTH, 1, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Cutscene0001_Player2, constant.PLAYER_TWO)
    CameraSetFOV(Camera.Cutscene0001_Player2, 70, constant.IMMEDIATE, 1, constant.NO_WAIT)
    EndFrame()
    CameraSetFOV(Camera.Cutscene0001_Player2, 60, constant.SMOOTH, 1, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(91, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
  PhoneMessage(91, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO)
  WaitFor(2)
  GoToArea(Ground_Vehicle.Entity0001, 580, 450, 5)
  WaitFor(9.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Spawn(Ground_Vehicle.X_Heavy_Tank_1)
    SetCamera(Camera.Cutscene0002_Player1, constant.PLAYER_ONE)
    EndFrame()
    CameraSetFOV(Camera.Cutscene0002_Player1, 70, constant.IMMEDIATE, 1, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Cutscene0002_Player2, constant.PLAYER_TWO)
    EndFrame()
    CameraSetFOV(Camera.Cutscene0002_Player2, 70, constant.IMMEDIATE, 1, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(90, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
  PhoneMessageWithObjective(90, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO, 0, constant.NEW_SECONDARY_OBJECTIVE)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WaitFor(2)
    GoToArea(Ground_Vehicle.X_Heavy_Tank_1, 400, 250, 5)
    WaitFor(8)
  else
    WaitFor(10)
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.cutsceneskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.cutsceneskipped = 1
  end
end
