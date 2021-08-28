function CutScene02(owner)
  KillCutScene02 = owner
  repeat
    EndFrame()
  until SeaFortDead == 2
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_SOLAR, 1)
    FreezePlayer(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_ANGLO, 1)
    FreezePlayer(constant.PLAYER_TWO)
    ClearMessageQueue(constant.PLAYER_TWO)
  end
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.SolarCutSceneTroop)
  Spawn(Water_Vehicle.SolarTransport01)
  Spawn(Water_Vehicle.SolarTransport02)
  SetActive(Water_Vehicle.SolarTransport01, constant.INACTIVE)
  SetActive(Water_Vehicle.SolarTransport02, constant.INACTIVE)
  Spawn(Troop.AngloGrunt01)
  Spawn(Troop.AngloGrunt02)
  Spawn(Troop.AngloGrunt03)
  Spawn(Troop.AngloGrunt04)
  Spawn(Troop.AngloGrunt05)
  Spawn(Troop.AngloFlameVet01)
  Spawn(Troop.AngloFlameVet02)
  Spawn(Ground_Vehicle.AngloHeavyTank01)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.SolarCutSceneTroop, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Ground_Vehicle.AngloHeavyTank01, true, true)
  Despawn(Water_Vehicle.AngloSubmarine01)
  Despawn(Water_Vehicle.AngloSubmarine02)
  Despawn(Water_Vehicle.AngloSubmarine03)
  Despawn(Water_Vehicle.AngloBattleship01)
  Despawn(Water_Vehicle.AngloBattleship02)
  Despawn(Water_Vehicle.AngloFrigate01)
  Despawn(Water_Vehicle.SolarFrigate01)
  Despawn(Water_Vehicle.SolarBattleship01)
  Despawn(Air_Vehicle.SolarGunship01)
  Despawn(Air_Vehicle.SolarGunship02)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.PlayerOneCutsceneLandingCamera, constant.PLAYER_ONE)
    CameraSetFOV(Camera.PlayerOneCutsceneLandingCamera, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerOneCutsceneLandingCamera, Waypoint.MidSEShot01Target)
    CameraSetWaypoint(Camera.PlayerOneCutsceneLandingCamera, Waypoint.MidSEShot01Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.PlayerTwoCutsceneLandingCamera, constant.PLAYER_TWO)
    CameraSetFOV(Camera.PlayerTwoCutsceneLandingCamera, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerTwoCutsceneLandingCamera, Waypoint.MidAIShot01Target)
    CameraSetWaypoint(Camera.PlayerTwoCutsceneLandingCamera, Waypoint.MidAIShot01Spline)
  end
  StartOutro()
  BeachWaterUnit(Water_Vehicle.SolarTransport01, SeaTransportUnit01X, SeaTransportUnit01Z, 300)
  BeachWaterUnit(Water_Vehicle.SolarTransport02, SeaTransportUnit02X, SeaTransportUnit02Z, 300)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SeaFortDead = 4
  PhoneMessage(68, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(12, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
    until GetMovementState(Water_Vehicle.SolarTransport01) == constant.MOVEMENT_STATE_BEACHED and GetMovementState(Water_Vehicle.SolarTransport02) == constant.MOVEMENT_STATE_BEACHED
    netvariable.player1.navaltransport = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
    until netvariable.player1.navaltransport == 1
  end
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport01, 3), Water_Vehicle.SolarTransport01)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport01, 4), Water_Vehicle.SolarTransport01)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport01, 5), Water_Vehicle.SolarTransport01)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport01, 6), Water_Vehicle.SolarTransport01)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport02, 3), Water_Vehicle.SolarTransport02)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport02, 4), Water_Vehicle.SolarTransport02)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport02, 5), Water_Vehicle.SolarTransport02)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport02, 6), Water_Vehicle.SolarTransport02)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport02, 7), Water_Vehicle.SolarTransport02)
  WaitFor(0.5)
  GoToArea(Troop.SolarBazooka01, -589, 742, 2, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarBazooka02, -589, 742, 2, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarChainVet01, -589, 742, 2, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarChainVet02, -589, 742, 2, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarGrunt01, -529, 754, 2, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarGrunt02, -529, 754, 2, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarGrunt03, -529, 754, 2, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarGrunt04, -529, 754, 2, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarGrunt05, -529, 754, 2, 0, constant.ORDER_FORCED)
  WaitFor(1)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport01, 2), Water_Vehicle.SolarTransport01)
  ExitVehicle(GetUnitInSeat(Water_Vehicle.SolarTransport02, 2), Water_Vehicle.SolarTransport02)
  WaitFor(0.5)
  GoToArea(Ground_Vehicle.SolarLightTank01, -577, 742, 10, 0, constant.ORDER_NORMAL)
  GoToArea(Ground_Vehicle.SolarLightTank02, -577, 742, 10, 0, constant.ORDER_NORMAL)
  WaitFor(5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Building.DummyCP)
  Spawn(Capture_Point.AngloHQCapturePoint)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.PlayerOneIntroCutscene, constant.PLAYER_ONE)
    CameraSetFOV(Camera.PlayerOneIntroCutscene, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerOneIntroCutscene, Waypoint.MidSEShot02Target)
    CameraSetWaypoint(Camera.PlayerOneIntroCutscene, Waypoint.MidSEShot02Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.PlayerTwoIntroCutscene, constant.PLAYER_TWO)
    CameraSetFOV(Camera.PlayerTwoIntroCutscene, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerTwoIntroCutscene, Waypoint.MidAIShot02Target)
    CameraSetWaypoint(Camera.PlayerTwoIntroCutscene, Waypoint.MidAIShot02Spline)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WaitFor(2)
    PhoneMessage(62, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
    PhoneMessageWithObjective(63, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
    WaitFor(20)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
    WaitFor(8)
    CameraFade(constant.FADE_OUT, constant.WAIT, 0.75)
    SetCamera(Camera.PlayerTwoIntroCutscene, constant.PLAYER_TWO)
    CameraSetFOV(Camera.PlayerTwoIntroCutscene, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerTwoIntroCutscene, Waypoint.MidAIShot02ATarget)
    CameraSetWaypoint(Camera.PlayerTwoIntroCutscene, Waypoint.MidAIShot02ASpline)
    CameraFade(constant.FADE_IN, constant.WAIT, 0.75)
    WaitFor(1)
    PhoneMessage(18, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_TWO)
    WaitFor(11.5)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  end
  SetObjectiveData(Objective_Marker.Objective03SolarHQCapture, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Objective03SolarHQProtect, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.PlayerOneCutsceneLandingCamera, constant.PLAYER_ONE)
    CameraSetFOV(Camera.PlayerOneCutsceneLandingCamera, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerOneCutsceneLandingCamera, Waypoint.MidSEShot03Target)
    CameraSetWaypoint(Camera.PlayerOneCutsceneLandingCamera, Waypoint.MidSEShot03Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.PlayerTwoIntroCutscene, constant.PLAYER_TWO)
    CameraSetFOV(Camera.PlayerTwoIntroCutscene, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerTwoIntroCutscene, Waypoint.MidAIShot03Target)
    CameraSetWaypoint(Camera.PlayerTwoIntroCutscene, Waypoint.MidAIShot03Spline)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(64, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(14, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
  WaitFor(11)
  Cutscene02End = 1
end
