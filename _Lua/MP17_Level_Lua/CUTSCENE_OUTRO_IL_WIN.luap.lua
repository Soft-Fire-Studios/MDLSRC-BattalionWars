function CUTSCENE_OUTRO_IL_WIN(owner)
  cutsceneoutroIL = owner
  repeat
    EndFrame()
  until LegionWin == true
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.SEdeadcam)
    CameraSetTarget(Camera.SEdeadcam, Waypoint.ILwintarget)
    CameraSetWaypoint(Camera.SEdeadcam, Waypoint.ILwin)
    CameraSetFOV(Camera.SEdeadcam, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(36, constant.ID_NONE, CO01_DialogBoxColour, 10, CO01_Sad, constant.PLAYER_ONE)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.ILdeadcam)
    CameraSetTarget(Camera.ILdeadcam, Waypoint.ILwintarget)
    CameraSetWaypoint(Camera.ILdeadcam, Waypoint.ILwin)
    CameraSetFOV(Camera.ILdeadcam, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessage(38, constant.ID_NONE, CO02_DialogBoxColour, 10, CO02_Happy, constant.PLAYER_TWO)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndOutro()
  EndFrame()
end
