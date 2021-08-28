function MP3_Reinforcements02(owner)
  local Helipad02Taken = 0
  local WFtransport02IsLanding = 0
  local TTtransport02IsLanding = 0
  local WFtransport02IsUnloading = 0
  local TTtransport02IsUnloading = 0
  local WFtransport02IsFlyingAway = 0
  local TTtransport02IsFlyingAway = 0
  local WFtransport02Timer = 0
  local TTtransport02Timer = 0
  Despawn(Air_Vehicle.WFtransport02)
  Despawn(Air_Vehicle.TTtransport02)
  while true do
    if IsNetworkPlayer(constant.PLAYER_ONE) and GetState(Capture_Point.Helipad02) == flag.TYPE_WFRONTIER and Helipad02Taken == 0 then
      Helipad02Taken = 1
      netvariable.player1.Helipad02Captured = 1
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.Helipad02Captured == 1 and Helipad02Captured == 0 then
      Helipad02Captured = 1
      Spawn(Air_Vehicle.WFtransport02)
      SetUnitInvulnerable(Air_Vehicle.WFtransport02, true)
      WaitFor(1)
      GoToArea(Air_Vehicle.WFtransport02, WFtransport02XLandingCoord, WFtransport02ZLandingCoord, 10, 0, constant.ORDER_FORCED)
      DebugOut("Player 1 has taken the  Helipad02")
      PhoneMessage(28, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      SetObjectiveData(Objective.P1Helipad02, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.P2Helipad02, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.Helipad02Captured == 1 and Helipad02Captured == 0 then
      Helipad02Captured = 1
      Spawn(Air_Vehicle.WFtransport02)
      SetUnitInvulnerable(Air_Vehicle.WFtransport02, true)
      WaitFor(1)
      GoToArea(Air_Vehicle.WFtransport02, WFtransport02XLandingCoord, WFtransport02ZLandingCoord, 10, 0, constant.ORDER_FORCED)
      DebugOut("Player 2 has lost the  Helipad02")
      PhoneMessage(77, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.P2Helipad02, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.P1Helipad02, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and GetState(Capture_Point.Helipad02) == flag.TYPE_TUNDRAN and Helipad02Taken == 0 then
      Helipad02Taken = 1
      netvariable.player1.Helipad02Captured = 2
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.Helipad02Captured == 2 and Helipad02Captured == 0 then
      Helipad02Captured = 1
      Spawn(Air_Vehicle.TTtransport02)
      SetUnitInvulnerable(Air_Vehicle.TTtransport02, true)
      WaitFor(1)
      GoToArea(Air_Vehicle.TTtransport02, WFtransport02XLandingCoord, WFtransport02ZLandingCoord, 10, 0, constant.ORDER_FORCED)
      DebugOut("Player 2 has taken the  Helipad02")
      PhoneMessage(78, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
      SetObjectiveData(Objective.P2Helipad02, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.Helipad02Captured == 2 and Helipad02Captured == 0 then
      Helipad02Captured = 1
      Spawn(Air_Vehicle.TTtransport02)
      SetUnitInvulnerable(Air_Vehicle.TTtransport02, true)
      WaitFor(1)
      GoToArea(Air_Vehicle.TTtransport02, WFtransport02XLandingCoord, WFtransport02ZLandingCoord, 10, 0, constant.ORDER_FORCED)
      DebugOut("Player 1 has lost the  Helipad02")
      PhoneMessage(27, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      SetObjectiveData(Objective.P1Helipad02, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if IsInArea(Air_Vehicle.WFtransport02, Map_Zone.Helipad02) and WFtransport02IsUnloading == 0 then
      WFtransport02IsLanding = 1
      DebugOut("Landing WFtransport 02")
      LandAirUnit(Air_Vehicle.WFtransport02, WFtransport02XLandingCoord, WFtransport02ZLandingCoord, constant.ORDER_FORCED, 0, 20, 90)
      WaitFor(1)
    end
    if IsInArea(Air_Vehicle.TTtransport02, Map_Zone.Helipad02) and TTtransport02IsLanding == 0 then
      TTtransport02IsLanding = 1
      DebugOut("Landing WFtransport 02")
      LandAirUnit(Air_Vehicle.TTtransport02, WFtransport02XLandingCoord, WFtransport02ZLandingCoord, constant.ORDER_FORCED, 0, 20, 90)
      WaitFor(1)
    end
    if GetMovementState(Air_Vehicle.WFtransport02) == constant.MOVEMENT_STATE_ON_GROUND and WFtransport02IsUnloading == 0 then
      WFtransport02IsUnloading = 1
      StopCapturePointSounds(Capture_Point.Helipad02)
      ExitVehicle(Troop.WFmortar03, Air_Vehicle.WFtransport02)
      WaitFor(0.5)
      ExitVehicle(Troop.WFmortar04, Air_Vehicle.WFtransport02)
      WaitFor(0.5)
      ExitVehicle(Troop.WFmortar05, Air_Vehicle.WFtransport02)
      WaitFor(0.5)
      ExitVehicle(Troop.WFmortar06, Air_Vehicle.WFtransport02)
      WaitFor(0.5)
      WFtransport02IsUnloading = 2
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Troop.WFmortar03, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.WFmortar04, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.WFmortar05, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.WFmortar06, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
      end
    end
    if GetMovementState(Air_Vehicle.TTtransport02) == constant.MOVEMENT_STATE_ON_GROUND and TTtransport02IsUnloading == 0 then
      TTtransport02IsUnloading = 1
      StopCapturePointSounds(Capture_Point.Helipad02)
      ExitVehicle(Troop.TTassault03, Air_Vehicle.TTtransport02)
      WaitFor(0.5)
      ExitVehicle(Troop.TTassault04, Air_Vehicle.TTtransport02)
      WaitFor(0.5)
      ExitVehicle(Troop.TTassault05, Air_Vehicle.TTtransport02)
      WaitFor(0.5)
      ExitVehicle(Troop.TTassault06, Air_Vehicle.TTtransport02)
      WaitFor(0.5)
      TTtransport02IsUnloading = 2
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Troop.TTassault03, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.TTassault04, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.TTassault05, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Troop.TTassault06, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
      end
    end
    if WFtransport02IsUnloading == 2 and WFtransport02IsFlyingAway == 0 then
      WFtransport02Timer = GetTime() + 60
      WFtransport02IsFlyingAway = 1
      GoToArea(Air_Vehicle.WFtransport02, 0, 1250, 50, 0, constant.ORDER_FORCED)
    end
    if TTtransport02IsUnloading == 2 and TTtransport02IsFlyingAway == 0 then
      TTtransport02Timer = GetTime() + 60
      TTtransport02IsFlyingAway = 1
      GoToArea(Air_Vehicle.TTtransport02, 0, 1250, 50, 0, constant.ORDER_FORCED)
    end
    if WFtransport02IsFlyingAway == 1 and WFtransport02Timer < GetTime() then
      WFtransport02IsFlyingAway = 2
      Despawn(Air_Vehicle.WFtransport02)
    end
    if TTtransport02IsFlyingAway == 1 and TTtransport02Timer < GetTime() then
      TTtransport02IsFlyingAway = 2
      Despawn(Air_Vehicle.TTtransport02)
    end
    EndFrame()
  end
end
