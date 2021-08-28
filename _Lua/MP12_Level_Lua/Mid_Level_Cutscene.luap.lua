function Mid_Level_Cutscene(owner)
  repeat
    EndFrame()
  until netvariable.player1.docks == 2
  WaitFor(0.5)
  midtrocutscene = owner
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.cutsceneskipped = 0
    SetCamera(Camera.P1_Mid_Camera_1)
    CameraSetFOV(Camera.P1_Mid_Camera_1, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
    if IsDead(Water_Vehicle.SE_Naval_Transport) or IsDead(Water_Vehicle.SE_Naval_Transport_2) then
      netvariable.player1.transports = 1
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.cutsceneskipped = 0
    SetCamera(Camera.P2_Mid_Camera_1)
    CameraSetFOV(Camera.P2_Mid_Camera_1, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  if IsNetworkHost() then
    if IsDead(Water_Vehicle.T_Battleship) == false then
      Teleport(Water_Vehicle.T_Battleship, 819, 497, 10, 0)
    end
    if IsDead(Water_Vehicle.T_Battleship_2) == false then
      Teleport(Water_Vehicle.T_Battleship_2, 665, 445, 10, 0)
    end
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  if netvariable.player1.transports == 1 then
    PhoneMessageWithObjective(18, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
    PhoneMessageWithObjective(19, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  else
    PhoneMessageWithObjective(21, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
    PhoneMessageWithObjective(22, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  end
  WaitFor(10)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Despawn(Troop.NT1_Troop_1)
    Despawn(Troop.NT1_Troop_2)
    Despawn(Troop.NT1_Troop_3)
    Despawn(Troop.NT1_Troop_4)
    Despawn(Troop.NT2_Troop_1)
    Despawn(Troop.NT2_Troop_2)
    Despawn(Troop.NT2_Troop_3)
    Despawn(Troop.NT2_Troop_4)
    Despawn(Troop.NT1_Troop_5)
    Despawn(Troop.NT1_Troop_6)
    Despawn(Troop.NT1_Troop_7)
    Despawn(Troop.NT1_Troop_8)
    Despawn(Troop.NT2_Troop_5)
    Despawn(Troop.NT2_Troop_6)
    Despawn(Troop.NT2_Troop_7)
    Despawn(Troop.NT2_Troop_8)
    if IsDead(Water_Vehicle.SE_Naval_Transport) == false then
      Despawn(Water_Vehicle.SE_Naval_Transport)
      Spawn(Building.Solar_Transport_East)
    end
    if IsDead(Water_Vehicle.SE_Naval_Transport_2) == false then
      Despawn(Water_Vehicle.SE_Naval_Transport_2)
      Spawn(Building.Solar_Transport_West)
    end
    EndFrame()
    EndFrame()
  else
    EndFrame()
    EndFrame()
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.P1_Mid_Camera_2)
    Spawn(Ground_Vehicle.CS_AI_Light_Tank_1)
    GoToArea(Ground_Vehicle.CS_AI_Light_Tank_1, 500, 710, 5, 0, constant.ORDER_FORCED)
    EndFrame()
    CameraSetFOV(Camera.P1_Mid_Camera_2, 50, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.P2_Mid_Camera_2)
    EndFrame()
    CameraSetFOV(Camera.P2_Mid_Camera_2, 60, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(115, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(116, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(117, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
  WaitFor(14)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Spawn(Troop.AI_Bridge_3)
    SetCamera(Camera.P1_Mid_Camera_3)
    EndFrame()
    CameraSetFOV(Camera.P1_Mid_Camera_3, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.P2_Mid_Camera_3)
    EndFrame()
    CameraSetFOV(Camera.P2_Mid_Camera_3, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(118, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(119, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
  WaitFor(10)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.cutsceneskippedmidtro = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.cutsceneskippedmidtro = 1
  end
end
