function Intro_Cutscene(owner)
  Despawn(Water_Vehicle.Cutscene_Transport)
  introcutscene = owner
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetFOV(Camera.P1_Intro_Camera_1, 70, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetFOV(Camera.P2_Intro_Camera_1, 70, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  WaitFor(1)
  PhoneMessageWithObjective(1, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(2, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(11)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.P1_Intro_Camera_2)
    CameraSetFOV(Camera.P1_Intro_Camera_2, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
    FollowWaypoint(Air_Vehicle.CS_Gunship_1, Waypoint.CS_Waypoint, 0, 0)
    FollowWaypoint(Air_Vehicle.CS_Gunship_2, Waypoint.CS_Waypoint, 0, 0)
    FollowWaypoint(Air_Vehicle.CS_Gunship_3, Waypoint.CS_Waypoint, 0, 0)
    FollowWaypoint(Air_Vehicle.CS_Gunship_4, Waypoint.CS_Waypoint, 0, 0)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.P2_Intro_Camera_2)
    CameraSetFOV(Camera.P2_Intro_Camera_2, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessageWithObjective(3, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(4, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO, 0, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(12)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Spawn(Water_Vehicle.Cutscene_Transport)
    SetCamera(Camera.P1_Intro_Camera_3)
    CameraSetFOV(Camera.P1_Intro_Camera_3, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.P2_Intro_Camera_3)
    CameraSetFOV(Camera.P2_Intro_Camera_3, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    AttackTarget(Water_Vehicle.AI_Battleship_1, Water_Vehicle.Cutscene_Transport, constant.ORDER_FORCED)
  end
  WaitFor(1)
  PhoneMessage(5, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(6, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
  WaitFor(10)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.cutsceneskipped = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.cutsceneskipped = 1
  end
end
