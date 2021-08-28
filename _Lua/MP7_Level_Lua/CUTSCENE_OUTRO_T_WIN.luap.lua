function CUTSCENE_OUTRO_T_WIN(owner)
  cutsceneoutroT = owner
  repeat
    EndFrame()
  until TundranWin == true
  StartOutro()
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.cutscenecamplayer1)
    CameraSetTarget(Camera.cutscenecamplayer1, Waypoint.Twintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer1, Waypoint.Twin)
    CameraSetFOV(Camera.cutscenecamplayer1, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(78, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.cutscenecamplayer2)
    CameraSetTarget(Camera.cutscenecamplayer2, Waypoint.Twintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer2, Waypoint.Twin)
    CameraSetFOV(Camera.cutscenecamplayer2, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(74, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndFrame()
end
