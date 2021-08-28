function CUTSCENE_OUTRO_X_WIN(owner)
  cutsceneoutroX = owner
  repeat
    EndFrame()
  until XylvanianWin == true
  StartOutro()
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.cutscenecamplayer1)
    CameraSetTarget(Camera.cutscenecamplayer1, Waypoint.Xwintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer1, Waypoint.Xwin)
    CameraSetFOV(Camera.cutscenecamplayer1, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(77, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.cutscenecamplayer2)
    CameraSetTarget(Camera.cutscenecamplayer2, Waypoint.Xwintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer2, Waypoint.Xwin)
    CameraSetFOV(Camera.cutscenecamplayer2, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(75, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndFrame()
end
