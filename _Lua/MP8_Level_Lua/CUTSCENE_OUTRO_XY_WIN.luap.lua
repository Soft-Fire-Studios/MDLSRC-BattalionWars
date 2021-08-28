function CUTSCENE_OUTRO_XY_WIN(owner)
  cutsceneoutroXY = owner
  repeat
    EndFrame()
  until XylvanianWin == true
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.cutscenecamplayer1)
    CameraSetWaypoint(Camera.cutscenecamplayer1, Waypoint.OutroLose)
    CameraSetTarget(Camera.cutscenecamplayer1, Waypoint.OutroLoseTarget)
    CameraSetFOV(Camera.cutscenecamplayer1, 45, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(1)
    AttackTarget(Water_Vehicle.XYwinXYDreadnought, Water_Vehicle.XYwinWFDreadnought, constant.ORDER_FORCED)
    PhoneMessage(36, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
    WaitFor(9)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.cutscenecamplayer2)
    CameraSetWaypoint(Camera.cutscenecamplayer2, Waypoint.OutroWin)
    CameraSetTarget(Camera.cutscenecamplayer2, Waypoint.OutroWinTarget)
    CameraSetFOV(Camera.cutscenecamplayer2, 45, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(1)
    AttackTarget(Water_Vehicle.XYwinXYDreadnought, Water_Vehicle.XYwinWFDreadnought, constant.ORDER_FORCED)
    PhoneMessage(38, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_TWO)
    WaitFor(9)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndFrame()
end
