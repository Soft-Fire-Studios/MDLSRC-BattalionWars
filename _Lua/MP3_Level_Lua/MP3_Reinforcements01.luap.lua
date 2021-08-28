function MP3_Reinforcements01(owner)
  local Helipad01Taken = 0
  local WFtransport01IsLanding = 0
  local TTtransport01IsLanding = 0
  local WFtransport01IsUnloading = 0
  local TTtransport01IsUnloading = 0
  local WFtransport01IsFlyingAway = 0
  local TTtransport01IsFlyingAway = 0
  local WFtransport01Timer = 0
  local TTtransport01Timer = 0
  Despawn(Air_Vehicle.WFtransport01)
  Despawn(Air_Vehicle.TTtransport01)
  while true do
    if IsNetworkPlayer(constant.PLAYER_ONE) and GetState(Capture_Point.Helipad01) == flag.TYPE_WFRONTIER and Helipad01Taken == 0 then
      Helipad01Taken = 1
      netvariable.player1.Helipad01Captured = 1
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.Helipad01Captured == 1 and Helipad01Captured == 0 then
      Helipad01Captured = 1
      Spawn(Air_Vehicle.WFtransport01)
      SetUnitInvulnerable(Air_Vehicle.WFtransport01, true)
      WaitFor(1)
      GoToArea(Air_Vehicle.WFtransport01, WFtransport01XLandingCoord, WFtransport01ZLandingCoord, 10, 0, constant.ORDER_FORCED)
      DebugOut("Player 1 has taken the  Helipad01")
      PhoneMessage(26, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      SetObjectiveData(Objective.P1Helipad01, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.P2Helipad01, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.Helipad01Captured == 1 and Helipad01Captured == 0 then
      Helipad01Captured = 1
      Spawn(Air_Vehicle.WFtransport01)
      SetUnitInvulnerable(Air_Vehicle.WFtransport01, true)
      WaitFor(1)
      GoToArea(Air_Vehicle.WFtransport01, WFtransport01XLandingCoord, WFtransport01ZLandingCoord, 10, 0, constant.ORDER_FORCED)
      DebugOut("Player 2 has lost the  Helipad01")
      PhoneMessage(77, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.P2Helipad01, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.P1Helipad01, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and GetState(Capture_Point.Helipad01) == flag.TYPE_TUNDRAN and Helipad01Taken == 0 then
      Helipad01Taken = 1
      netvariable.player1.Helipad01Captured = 2
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.Helipad01Captured == 2 and Helipad01Captured == 0 then
      Helipad01Captured = 1
      Spawn(Air_Vehicle.TTtransport01)
      SetUnitInvulnerable(Air_Vehicle.TTtransport01, true)
      WaitFor(1)
      GoToArea(Air_Vehicle.TTtransport01, WFtransport01XLandingCoord, WFtransport01ZLandingCoord, 10, 0, constant.ORDER_FORCED)
      DebugOut("Player 2 has taken the  Helipad01")
      PhoneMessage(76, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
      SetObjectiveData(Objective.P2Helipad01, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.Helipad01Captured == 2 and Helipad01Captured == 0 then
      Helipad01Captured = 1
      Spawn(Air_Vehicle.TTtransport01)
      SetUnitInvulnerable(Air_Vehicle.TTtransport01, true)
      WaitFor(1)
      GoToArea(Air_Vehicle.TTtransport01, WFtransport01XLandingCoord, WFtransport01ZLandingCoord, 10, 0, constant.ORDER_FORCED)
      DebugOut("Player 1 has lost the  Helipad01")
      PhoneMessage(27, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      SetObjectiveData(Objective.P1Helipad01, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if IsInArea(Air_Vehicle.WFtransport01, Map_Zone.Helipad01) and WFtransport01IsUnloading == 0 then
      WFtransport01IsLanding = 1
      DebugOut("Landing WFtransport 01")
      LandAirUnit(Air_Vehicle.WFtransport01, WFtransport01XLandingCoord, WFtransport01ZLandingCoord, constant.ORDER_FORCED, 0, 20, 270)
      WaitFor(1)
    end
    if IsInArea(Air_Vehicle.TTtransport01, Map_Zone.Helipad01) and TTtransport01IsLanding == 0 then
      TTtransport01IsLanding = 1
      DebugOut("Landing WFtransport 01")
      LandAirUnit(Air_Vehicle.TTtransport01, WFtransport01XLandingCoord, WFtransport01ZLandingCoord, constant.ORDER_FORCED, 0, 20, 270)
      WaitFor(1)
    end
    if GetMovementState(Air_Vehicle.WFtransport01) == constant.MOVEMENT_STATE_ON_GROUND and WFtransport01IsUnloading == 0 then
      WFtransport01IsUnloading = 1
      StopCapturePointSounds(Capture_Point.Helipad01)
      ExitVehicle(Troop.WFmortar01, Air_Vehicle.WFtransport01)
      WaitFor(0.5)
      ExitVehicle(Troop.WFmortar02, Air_Vehicle.WFtransport01)
      WaitFor(0.5)
      ExitVehicle(Troop.WFmortar03, Air_Vehicle.WFtransport01)
      WaitFor(0.5)
      WFtransport01IsUnloading = 2
      if GetSpawnMode() == eModeAction.Follow and IsNetworkPlayer(constant.PLAYER_ONE) then
        FollowUnit(Troop.WFmortar01, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.WFmortar02, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.WFmortar03, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
      end
    end
    if GetMovementState(Air_Vehicle.TTtransport01) == constant.MOVEMENT_STATE_ON_GROUND and TTtransport01IsUnloading == 0 then
      TTtransport01IsUnloading = 1
      StopCapturePointSounds(Capture_Point.Helipad01)
      ExitVehicle(Troop.TTassault01, Air_Vehicle.TTtransport01)
      WaitFor(0.5)
      ExitVehicle(Troop.TTassault02, Air_Vehicle.TTtransport01)
      WaitFor(0.5)
      ExitVehicle(Troop.TTassault03, Air_Vehicle.TTtransport01)
      WaitFor(0.5)
      TTtransport01IsUnloading = 2
      if GetSpawnMode() == eModeAction.Follow and IsNetworkPlayer(constant.PLAYER_TWO) then
        FollowUnit(Troop.TTassault01, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.TTassault02, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.TTassault03, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
      end
    end
    if WFtransport01IsUnloading == 2 and WFtransport01IsFlyingAway == 0 then
      WFtransport01Timer = GetTime() + 60
      WFtransport01IsFlyingAway = 1
      GoToArea(Air_Vehicle.WFtransport01, 0, 1250, 50, 0, constant.ORDER_FORCED)
    end
    if TTtransport01IsUnloading == 2 and TTtransport01IsFlyingAway == 0 then
      TTtransport01Timer = GetTime() + 60
      TTtransport01IsFlyingAway = 1
      GoToArea(Air_Vehicle.TTtransport01, 0, 1250, 50, 0, constant.ORDER_FORCED)
    end
    if WFtransport01IsFlyingAway == 1 and WFtransport01Timer < GetTime() then
      WFtransport01IsFlyingAway = 2
      Despawn(Air_Vehicle.WFtransport01)
    end
    if TTtransport01IsFlyingAway == 1 and TTtransport01Timer < GetTime() then
      TTtransport01IsFlyingAway = 2
      Despawn(Air_Vehicle.TTtransport01)
    end
    EndFrame()
  end
end
