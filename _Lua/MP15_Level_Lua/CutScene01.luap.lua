function CutScene01(owner)
  cutscene01 = owner
  StartIntro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutScene01Player1Camera01, constant.PLAYER_ONE)
    PhoneMessage(5, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    PhoneMessage(6, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutScene01Player2Camera01, constant.PLAYER_TWO)
    PhoneMessage(5, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
    PhoneMessage(7, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_TWO)
  end
  WaitFor(18)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutScene01Player1Camera01, Waypoint.CutsceneCam1Shot2Target)
    CameraSetWaypoint(Camera.CutScene01Player1Camera01, Waypoint.CutsceneCam1Shot2Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutScene01Player2Camera01, Waypoint.CutsceneCam1Shot2Target)
    CameraSetWaypoint(Camera.CutScene01Player2Camera01, Waypoint.CutsceneCam1Shot2Spline)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(8, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  PhoneMessageWithObjective(8, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO, false, constant.NEW_SECONDARY_OBJECTIVE)
  WaitFor(2)
  GoToArea(Ground_Vehicle.XylvanianFuelStationHeavyTank01, 466, 84, 5)
  WaitFor(7)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ClearMessageQueue(constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutScene01Player1Camera01, Waypoint.CutsceneCam1Shot3Target)
    CameraSetWaypoint(Camera.CutScene01Player1Camera01, Waypoint.CutsceneCam1Shot3Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutScene01Player2Camera01, Waypoint.CutsceneCam1Shot3Target)
    CameraSetWaypoint(Camera.CutScene01Player2Camera01, Waypoint.CutsceneCam1Shot3Spline)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Teleport(Ground_Vehicle.XylvanianFuelStationHeavyTank01, 432, -12, 10, 10)
  PhoneMessageWithObjective(9, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(9, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(10, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad)
  WaitFor(16)
  cutscenefinished01 = 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.skip01 = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.skip01 = 1
  end
end
