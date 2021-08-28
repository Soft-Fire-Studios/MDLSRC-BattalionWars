function CUTSCENE_OUTRO_T(owner)
  cutsceneoutroT = owner
  repeat
    EndFrame()
  until TundranWin == true
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.cutscenecamplayer1)
    CameraSetTarget(Camera.cutscenecamplayer1, Waypoint.Twintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer1, Waypoint.Twin)
    CameraSetFOV(Camera.cutscenecamplayer1, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(75, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
    WaitFor(9)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.cutscenecamplayer2)
    CameraSetTarget(Camera.cutscenecamplayer2, Waypoint.Twintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer2, Waypoint.Twin)
    CameraSetFOV(Camera.cutscenecamplayer2, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    ClearMessageQueue(constant.PLAYER_TWO)
    PhoneMessage(77, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
    WaitFor(9)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndFrame()
end
