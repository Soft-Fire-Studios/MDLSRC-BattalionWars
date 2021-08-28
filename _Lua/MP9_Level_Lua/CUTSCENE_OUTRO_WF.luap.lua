function CUTSCENE_OUTRO_WF(owner)
  cutsceneoutroWF = owner
  repeat
    EndFrame()
  until FrontierWin == true
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.cutscenecamplayer1)
    CameraSetTarget(Camera.cutscenecamplayer1, Waypoint.WFwintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer1, Waypoint.WFwin)
    CameraSetFOV(Camera.cutscenecamplayer1, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(74, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
    WaitFor(9)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.cutscenecamplayer2)
    CameraSetTarget(Camera.cutscenecamplayer2, Waypoint.WFwintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer2, Waypoint.WFwin)
    CameraSetFOV(Camera.cutscenecamplayer2, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    ClearMessageQueue(constant.PLAYER_TWO)
    PhoneMessage(78, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
    WaitFor(9)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndFrame()
end
