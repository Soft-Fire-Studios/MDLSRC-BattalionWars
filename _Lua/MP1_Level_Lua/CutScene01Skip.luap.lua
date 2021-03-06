function CutScene01Skip(owner)
  Despawn(Building.DummyCP)
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      cutscenefinished01 = 1
      DebugOut(" In split screen - killed cutscene")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.skip01 = 1
      DebugOut("Player 1 Killed CutScene01")
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.skip01 = 1
      DebugOut("Player 2 Killed CutScene01")
    end
    EndFrame()
  until netvariable.player1.skip01 == 1 and netvariable.player2.skip01 == 1 or cutscenefinished01 == 1
  Kill(cutscene01)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.PlayerCamera1, constant.PLAYER_ONE)
    ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.LegionBattlestation01, true)
    StoreSummaryMessage(0, 14, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
    StoreSummaryMessage(0, 15, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
    StoreSummaryMessage(0, 16, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
    StoreSummaryMessage(0, 80, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
    StoreSummaryMessage(0, 17, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.PlayerCamera2, constant.PLAYER_TWO)
    ForceUnitTransfer(constant.PLAYER_TWO, Ground_Vehicle.SolarHeavyTank01, true)
    StoreSummaryMessage(1, 27, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
    StoreSummaryMessage(1, 28, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
    StoreSummaryMessage(1, 29, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Sad)
    StoreSummaryMessage(1, 81, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
    StoreSummaryMessage(1, 30, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Sad)
  end
  EndIntro()
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
  Spawn(Air_Vehicle.SolarGunship01)
  Spawn(Air_Vehicle.SolarGunship04)
  EndFrame()
  GoToArea(Troop.SolarBazookaVet01, -53, 530, 2)
  GoToArea(Troop.SolarBazookaVet02, -48, 530, 2)
  GoToArea(Troop.SolarBazookaVet03, -45, 530, 2)
  GoToArea(Troop.SolarBazookaVet04, -40, 530, 2)
  GoToArea(Troop.SolarAAVet01, -50, 536, 2)
  GoToArea(Troop.SolarAAVet02, -46, 536, 2)
  GoToArea(Troop.SolarAAVet03, -42, 536, 2)
  GoToArea(Troop.SolarGrunt06, -50, 542, 2)
  GoToArea(Troop.SolarGrunt07, -46, 542, 2)
  GoToArea(Troop.SolarGrunt01, -42, 542, 2)
  GoToArea(Troop.SolarGrunt02, -53, 548, 2)
  GoToArea(Troop.SolarGrunt04, -48, 548, 2)
  GoToArea(Troop.SolarGrunt05, -45, 548, 2)
  GoToArea(Troop.SolarGrunt03, -40, 548, 2)
  Teleport(Troop.SolarBazookaVet01, -53, 530, 0, 1)
  Teleport(Troop.SolarBazookaVet02, -48, 530, 0, 1)
  Teleport(Troop.SolarBazookaVet03, -45, 530, 0, 1)
  Teleport(Troop.SolarBazookaVet04, -40, 530, 0, 1)
  Teleport(Troop.SolarAAVet01, -50, 536, 0, 1)
  Teleport(Troop.SolarAAVet02, -46, 536, 0, 1)
  Teleport(Troop.SolarAAVet03, -42, 536, 0, 1)
  Teleport(Troop.SolarGrunt06, -50, 542, 0, 1)
  Teleport(Troop.SolarGrunt07, -46, 542, 0, 1)
  Teleport(Troop.SolarGrunt01, -42, 542, 0, 1)
  Teleport(Troop.SolarGrunt02, -53, 548, 0, 1)
  Teleport(Troop.SolarGrunt04, -48, 548, 0, 1)
  Teleport(Troop.SolarGrunt05, -45, 548, 0, 1)
  Teleport(Troop.SolarGrunt03, -40, 548, 0, 1)
  Teleport(Ground_Vehicle.SolarHeavyTank01, -46, 505, 0, 1)
  Teleport(Air_Vehicle.SolarGunship01, -50.861, 532.192, 0, 1)
  Teleport(Air_Vehicle.SolarGunship04, -23.669, 531.629, 0, 1)
  Despawn(Capture_Point.SolarHQCapturePoint01)
  Spawn(Building.DummyCP)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    EndFrame()
    ResetCommandBar()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    EndFrame()
    ResetCommandBar()
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SetTimer(600)
  ShowTimer(1)
  WaitFor(0.5)
  cutscenefinished01 = 2
  UnfreezePlayer(0)
  UnfreezePlayer(1)
  StartScoringTimer()
end
