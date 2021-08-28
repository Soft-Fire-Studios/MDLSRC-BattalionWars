function CUTSCENE_OUTRO_WF_WIN(owner)
  cutsceneoutroWF = owner
  repeat
    EndFrame()
  until FrontierWin == true
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.cutscenecamplayer1)
    CameraSetWaypoint(Camera.cutscenecamplayer1, Waypoint.OutroWin)
    CameraSetTarget(Camera.cutscenecamplayer1, Waypoint.OutroWinTarget)
    CameraSetFOV(Camera.cutscenecamplayer1, 45, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(1)
    AttackTarget(Water_Vehicle.WFwinWFDreadnought, Water_Vehicle.WFwinXYDreadnought, constant.ORDER_FORCED)
    PhoneMessage(35, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
    WaitFor(9)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.cutscenecamplayer2)
    CameraSetWaypoint(Camera.cutscenecamplayer2, Waypoint.OutroLose)
    CameraSetTarget(Camera.cutscenecamplayer2, Waypoint.OutroLoseTarget)
    CameraSetFOV(Camera.cutscenecamplayer2, 45, constant.IMMEDIATE, 10, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(1)
    AttackTarget(Water_Vehicle.WFwinWFDreadnought, Water_Vehicle.WFwinXYDreadnought, constant.ORDER_FORCED)
    PhoneMessage(39, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO)
    WaitFor(9)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndFrame()
end
