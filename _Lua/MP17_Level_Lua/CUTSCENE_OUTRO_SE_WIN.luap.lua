function CUTSCENE_OUTRO_SE_WIN(owner)
  cutsceneoutroSE = owner
  repeat
    EndFrame()
  until SolarWin == true
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.SEdeadcam)
    CameraSetTarget(Camera.SEdeadcam, Waypoint.SEwintarget)
    CameraSetWaypoint(Camera.SEdeadcam, Waypoint.SEwin)
    CameraSetFOV(Camera.SEdeadcam, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(35, constant.ID_NONE, CO01_DialogBoxColour, 10, CO01_Happy, constant.PLAYER_ONE)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.ILdeadcam)
    CameraSetTarget(Camera.ILdeadcam, Waypoint.SEwintarget)
    CameraSetWaypoint(Camera.ILdeadcam, Waypoint.SEwin)
    CameraSetFOV(Camera.ILdeadcam, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(39, constant.ID_NONE, CO02_DialogBoxColour, 10, CO02_Sad, constant.PLAYER_TWO)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndOutro()
  EndFrame()
end
