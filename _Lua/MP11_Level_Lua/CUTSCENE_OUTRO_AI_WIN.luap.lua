function CUTSCENE_OUTRO_AI_WIN(owner)
  cutsceneoutroAI = owner
  repeat
    EndFrame()
  until AngloWin == true
  StartOutro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.cutscenecamplayer1)
    CameraSetTarget(Camera.cutscenecamplayer1, Waypoint.AIwintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer1, Waypoint.AIwin)
    CameraSetFOV(Camera.cutscenecamplayer1, 45, constant.IMMEDIATE, constant.WAIT)
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(93, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player1.cutsceneoutroskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.cutscenecamplayer2)
    CameraSetTarget(Camera.cutscenecamplayer2, Waypoint.AIwintarget)
    CameraSetWaypoint(Camera.cutscenecamplayer2, Waypoint.AIwin)
    CameraSetFOV(Camera.cutscenecamplayer2, 45, constant.IMMEDIATE, constant.WAIT)
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    ClearMessageQueue(constant.PLAYER_TWO)
    PhoneMessage(95, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
    WaitFor(12)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    netvariable.player2.cutsceneoutroskipped = 1
  end
  EndFrame()
end
