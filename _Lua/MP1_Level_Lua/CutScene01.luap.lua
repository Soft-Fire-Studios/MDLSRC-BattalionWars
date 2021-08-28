function CutScene01(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(false, false, false)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(true, true, true)
  end
  cutscene01 = owner
  StartIntro()
  Despawn(Air_Vehicle.SolarGunship01)
  Despawn(Air_Vehicle.SolarGunship04)
  SetObjectiveData(Objective_Marker.SolarForcefieldObjective01Marker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SolarForcefieldObjective01Marker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.DefendSolarForcefieldObjective01Marker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.DefendSolarForcefieldObjective01Marker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Player1POWsMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Player2POWsMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSolarHQ01ObjectiveMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SolarHQ01ObjectiveMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.CutScene01Player01Camera01, constant.PLAYER_ONE)
    CameraSetFOV(Camera.CutScene01Player01Camera01, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(14, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
    PhoneMessageWithObjective(15, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.CutScene01Player02Camera03, constant.PLAYER_TWO)
    CameraSetFOV(Camera.CutScene01Player02Camera03, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetFOV(Camera.CutScene01Player02Camera03, 0, constant.SMOOTH, 0.83, constant.NO_WAIT)
    ClearMessageQueue(constant.PLAYER_TWO)
    PhoneMessage(27, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_TWO)
    PhoneMessageWithObjective(28, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  end
  WaitFor(2)
  GoToArea(Ground_Vehicle.SolarHeavyTank01, -35, 474, 2)
  WaitFor(8)
  GoToArea(Air_Vehicle.SolarGunship01, -50, 575, 10)
  GoToArea(Air_Vehicle.SolarGunship04, -25, 575, 10)
  WaitFor(3)
  GoToArea(Ground_Vehicle.SolarHeavyTank01, -35, 545, 2)
  GoToArea(Troop.SolarBazookaVet01, -43, 554, 2)
  GoToArea(Troop.SolarBazookaVet02, -38, 554, 2)
  GoToArea(Troop.SolarBazookaVet03, -33, 554, 2)
  GoToArea(Troop.SolarBazookaVet04, -28, 554, 2)
  GoToArea(Troop.SolarAAVet01, -41, 560, 2)
  GoToArea(Troop.SolarAAVet02, -35, 560, 2)
  GoToArea(Troop.SolarAAVet03, -30, 560, 2)
  GoToArea(Troop.SolarGrunt06, -41, 566, 2)
  GoToArea(Troop.SolarGrunt07, -35, 566, 2)
  GoToArea(Troop.SolarGrunt01, -30, 566, 2)
  GoToArea(Troop.SolarGrunt02, -43, 572, 2)
  GoToArea(Troop.SolarGrunt04, -38, 572, 2)
  GoToArea(Troop.SolarGrunt05, -33, 572, 2)
  GoToArea(Troop.SolarGrunt03, -28, 572, 2)
  WaitFor(5.5)
  WaitFor(5.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Air_Vehicle.SolarGunship01)
  Spawn(Air_Vehicle.SolarGunship04)
  SetObjectiveData(Objective_Marker.SolarForcefieldObjective01Marker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SolarForcefieldObjective01Marker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSolarForcefieldObjective01Marker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSolarForcefieldObjective01Marker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ClearMessageQueue(constant.PLAYER_ONE)
    SetCamera(Camera.CutScene01Player01Camera02, constant.PLAYER_ONE)
    CameraSetFOV(Camera.CutScene01Player01Camera02, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ClearMessageQueue(constant.PLAYER_TWO)
    SetCamera(Camera.CutScene01Player02Camera02, constant.PLAYER_TWO)
    CameraSetFOV(Camera.CutScene01Player02Camera02, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(16, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  PhoneMessage(29, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
  WaitFor(11.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Player1POWsMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Player2POWsMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ClearMessageQueue(constant.PLAYER_ONE)
    SetCamera(Camera.CutScene01Player01Camera04, constant.PLAYER_ONE)
    CameraSetFOV(Camera.CutScene01Player01Camera04, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ClearMessageQueue(constant.PLAYER_TWO)
    SetCamera(Camera.CutScene01Player02Camera04, constant.PLAYER_TWO)
    CameraSetFOV(Camera.CutScene01Player02Camera04, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(80, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  PhoneMessage(81, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_TWO)
  WaitFor(12)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective_Marker.Player1POWsMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Player2POWsMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSolarHQ01ObjectiveMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SolarHQ01ObjectiveMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ClearMessageQueue(constant.PLAYER_ONE)
    SetCamera(Camera.CutScene01Player01Camera03, constant.PLAYER_ONE)
    CameraSetFOV(Camera.CutScene01Player01Camera03, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ClearMessageQueue(constant.PLAYER_TWO)
    SetCamera(Camera.CutScene01Player02Camera01, constant.PLAYER_TWO)
    CameraSetFOV(Camera.CutScene01Player02Camera01, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(17, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  PhoneMessage(30, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
  WaitFor(12)
  cutscenefinished01 = 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.skip01 = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.skip01 = 1
  end
  EndFrame()
end
