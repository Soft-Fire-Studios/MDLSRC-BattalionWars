function CUTSCENE_OUTRO_SE_WIN(owner)
  cutsceneoutroSE = owner
  repeat
    EndFrame()
  until SolarWin == true
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutsceneCam1)
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.SEwintarget)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.SEwin)
    CameraSetFOV(Camera.CutsceneCam1, 60, constant.IMMEDIATE, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(92, constant.ID_NONE, CO01_DialogBoxColour, 10, CO01_Happy, constant.PLAYER_ONE)
    WaitFor(10)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutsceneCam2)
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.SEwintarget)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.SEwin)
    CameraSetFOV(Camera.CutsceneCam2, 60, constant.IMMEDIATE, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(96, constant.ID_NONE, CO02_DialogBoxColour, 10, CO02_Sad, constant.PLAYER_TWO)
    WaitFor(10)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndFrame()
end
