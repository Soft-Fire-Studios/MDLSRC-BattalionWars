function CUTSCENE_OUTRO_IL_WIN(owner)
  cutsceneoutroIL = owner
  repeat
    EndFrame()
  until LegionWin == true
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutsceneCam1)
    CameraSetTarget(Camera.CutsceneCam1, Waypoint.ILwintarget)
    CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.ILwin)
    CameraSetFOV(Camera.CutsceneCam1, 60, constant.IMMEDIATE, constant.WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(93, constant.ID_NONE, CO01_DialogBoxColour, 10, CO01_Sad, constant.PLAYER_ONE)
    WaitFor(10)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutsceneCam2)
    CameraSetTarget(Camera.CutsceneCam2, Waypoint.ILwintarget)
    CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.ILwin)
    CameraSetFOV(Camera.CutsceneCam2, 60, constant.IMMEDIATE, constant.WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(95, constant.ID_NONE, CO02_DialogBoxColour, 10, CO02_Happy, constant.PLAYER_TWO)
    WaitFor(10)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndFrame()
end
