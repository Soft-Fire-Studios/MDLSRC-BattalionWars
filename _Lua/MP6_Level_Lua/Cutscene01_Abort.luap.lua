function Cutscene01_Abort(owner)
  cutsceneabort = owner
  PrepareSkipCutscene()
  local TenMinuteWarning = 0
  local FiveMinuteWarning = 0
  local ThreeMinuteWarning = 0
  local TwoMinuteWarning = 0
  local OneMinuteWarning = 0
  local ThirtySecondWarning = 0
  local BattleshipState = 0
  local Message1Play = 0
  local Message2Play = 0
  Despawn(Building.TT_HQ01)
  Despawn(Troop.OutroXGrunt01)
  Despawn(Troop.OutroXGrunt02)
  Despawn(Troop.OutroXGrunt03)
  Despawn(Troop.OutroXGrunt04)
  Despawn(Troop.OutroXFlamer01)
  Despawn(Troop.OutroXFlamer02)
  Despawn(Troop.OutroXAAVet01)
  Despawn(Troop.OutroXAAVet02)
  Despawn(Troop.OutroTTGrunt01)
  Despawn(Troop.OutroTTGrunt02)
  Despawn(Troop.OutroTTGrunt03)
  Despawn(Troop.OutroTTGrunt04)
  Despawn(Troop.OutroTTBazooka01)
  Despawn(Troop.OutroTTBazooka02)
  Despawn(Troop.OutroTTAssault01)
  Despawn(Troop.OutroTTAssault02)
  WaitFor(1)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      netvariable.player2.skip = 1
      netvariable.player1.skip = 1
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.skip = 1
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.skip = 1
    end
    EndFrame()
  until CheckSkipCutscene() or netvariable.player1.skip == 1 and netvariable.player2.skip == 1
  Kill(cutscene)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  Despawn(Water_Vehicle.IntroXBattleship01)
  Despawn(Air_Vehicle.IntroTTBomber01)
  Despawn(Air_Vehicle.IntroTTBomber02)
  Despawn(Troop.IntroXGrunt01)
  Despawn(Troop.IntroXGrunt02)
  Despawn(Troop.IntroXGrunt03)
  Despawn(Troop.IntroXGrunt04)
  Despawn(Troop.IntroXGrunt05)
  Despawn(Troop.IntroXGrunt06)
  Despawn(Troop.IntroXAAVet01)
  Despawn(Troop.IntroXAAVet02)
  Despawn(Troop.IntroXAAVet03)
  Despawn(Troop.IntroXAAVet04)
  Despawn(Troop.IntroXAAVet05)
  Despawn(Troop.IntroXAAVet06)
  Despawn(Troop.IntroXFlamer01)
  Despawn(Troop.IntroXFlamer02)
  Despawn(Troop.IntroXFlamer03)
  Despawn(Troop.IntroXFlamer04)
  Despawn(Ground_Vehicle.IntroXTank01)
  Spawn(Water_Vehicle.XN_Battleship01)
  Spawn(Air_Vehicle.TT_Bomber01)
  Spawn(Troop.XN_Grunt01)
  Spawn(Troop.XN_Grunt02)
  Spawn(Troop.XN_Grunt03)
  Spawn(Troop.XN_Grunt04)
  Spawn(Troop.XN_Grunt05)
  Spawn(Troop.XN_Grunt06)
  Spawn(Troop.XN_AntiAir01)
  Spawn(Troop.XN_AntiAir02)
  Spawn(Troop.XN_AntiAir03)
  Spawn(Troop.XN_AntiAir04)
  Spawn(Troop.XN_AntiAir05)
  Spawn(Troop.XN_Hose01)
  Spawn(Troop.XN_Hose02)
  Spawn(Troop.XN_Hose03)
  Spawn(Troop.XN_Hose04)
  Spawn(Ground_Vehicle.XN_LightTank01)
  EndFrame()
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.XN_AntiAir04, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.TT_Chain01, true, true)
  EndFrame()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and GetPlayerUnit(constant.PLAYER_ONE) == Troop.XN_AntiAir04 then
      netvariable.player1.ReadyForFade = 1
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) and GetPlayerUnit(constant.PLAYER_TWO) == Troop.TT_Chain01 then
      netvariable.player2.ReadyForFade = 1
    end
    EndFrame()
  until netvariable.player1.ReadyForFade == 1 and netvariable.player2.ReadyForFade == 1
  Despawn(Troop.XN_Cutscene)
  Despawn(Troop.TT_Cutscene)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(0, 102, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
    StoreSummaryMessage(0, 103, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
    StoreSummaryMessage(0, 104, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
    StoreSummaryMessage(0, 105, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
    StoreSummaryMessage(0, 106, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
    StoreSummaryMessage(0, 112, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(1, 107, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 108, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(1, 109, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 110, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 111, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 113, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
  end
  SetObjectiveData(Objective_Marker.XN_BridgeBarricade, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.TT_BridgeBarricade, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XN_FuelTankDefence01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.XN_FuelTankDefence02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.XN_FuelTankDefence03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.TT_FuelTankDefence01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.TT_FuelTankDefence02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.TT_FuelTankDefence03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.XN_HQ01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.TT_HQ01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  Despawn(Capture_Point.TT_HQ01)
  Spawn(Building.TT_HQ01)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.Player01, constant.PLAYER_ONE)
    EndFrame()
    ResetCommandBar()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Player02, constant.PLAYER_TWO)
    EndFrame()
    ResetCommandBar()
  end
  EndIntro()
  WaitFor(1)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(12, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
  PhoneMessage(13, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
  SetTimer(MissionTime)
  ShowTimer(1)
  SetObjectiveData(Objective.TT_BridgeBarricade, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.XN_BridgeBarricade, constant.OBJECTIVE_DATA_VISIBLE, 1)
  CutsceneHasEnded = 1
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  UnfreezePlayer(constant.PLAYER_TWO)
  ResetHealthAndScoreTotals()
  repeat
    if GetTimeLeft() < 300 and FiveMinuteWarning == 0 then
      PhoneMessage(65, constant.ID_NONE, 1, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      PhoneMessage(70, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
      FiveMinuteWarning = 1
    end
    EndFrame()
    if GetTimeLeft() < 180 and ThreeMinuteWarning == 0 then
      PhoneMessage(66, constant.ID_NONE, 1, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      PhoneMessage(71, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
      ThreeMinuteWarning = 1
    end
    EndFrame()
    if GetTimeLeft() < 120 and TwoMinuteWarning == 0 then
      PhoneMessage(67, constant.ID_NONE, 1, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      PhoneMessage(72, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
      TwoMinuteWarning = 1
    end
    EndFrame()
    if GetTimeLeft() < 60 and OneMinuteWarning == 0 then
      PhoneMessage(68, constant.ID_NONE, 1, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      PhoneMessage(73, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
      OneMinuteWarning = 1
    end
    EndFrame()
    if GetTimeLeft() < 30 and ThirtySecondWarning == 0 then
      PhoneMessage(74, constant.ID_NONE, 1, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      PhoneMessage(75, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
      ThirtySecondWarning = 1
    end
    EndFrame()
    if IsDead(Water_Vehicle.XN_Battleship01) and BattleshipState == 0 then
      PhoneMessage(59, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      PhoneMessage(58, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
      BattleshipState = 1
    end
    EndFrame()
    if IsDead(Water_Vehicle.XN_Battleship01) == false and BattleshipState == 1 then
      PhoneMessage(61, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      PhoneMessage(60, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      BattleshipState = 0
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if gamestate == 0 then
        if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_02) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_03) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_04) == false and netvariable.player1.Objective01 == 0 then
          PhoneMessage(83, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
          netvariable.player1.Objective01 = 1
        end
        EndFrame()
        if (IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_01) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_02) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_03) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_04)) and netvariable.player1.Objective01 == 1 then
          netvariable.player1.Objective01 = 0
        end
      end
      EndFrame()
      if gamestate == 1 then
        if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_02) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_03) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_04) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_02) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_03) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_04) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_05) == false and netvariable.player1.Objective01 == 0 then
          PhoneMessage(83, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
          netvariable.player1.Objective01 = 1
        end
        EndFrame()
        if (IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_01) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_02) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_03) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective01_04) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_01) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_02) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_03) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_04) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XN_WarningZone_Objective02_05)) and netvariable.player1.Objective01 == 1 then
          netvariable.player1.Objective01 = 0
        end
      end
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if gamestate == 0 then
        if IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective01_01) == false and netvariable.player2.Objective01 == 0 then
          PhoneMessage(82, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
          netvariable.player2.Objective01 = 1
        end
        EndFrame()
        if IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective01_01) and netvariable.player2.Objective01 == 1 then
          netvariable.player2.Objective01 = 0
        end
      end
      EndFrame()
      if gamestate == 1 then
        if IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective01_01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_02) == false and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_03) == false and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_04) == false and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_05) == false and netvariable.player2.Objective01 == 0 then
          PhoneMessage(82, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
          netvariable.player2.Objective01 = 1
        end
        EndFrame()
        if (IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective01_01) or IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_01) or IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_02) or IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_03) or IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_04) or IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.TT_WarningZone_Objective02_05)) and netvariable.player2.Objective01 == 1 then
          netvariable.player2.Objective01 = 0
        end
      end
    end
    EndFrame()
    if (IsInArea(Troop.XN_Hose01, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_Hose02, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_Hose03, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_Hose04, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_Grunt01, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_Grunt02, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_Grunt03, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_Grunt04, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_Grunt05, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_Grunt06, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_AntiAir01, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_AntiAir02, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_AntiAir03, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_AntiAir04, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_AntiAir05, Map_Zone.FreezingWater01) or IsInArea(Troop.XN_AntiAir06, Map_Zone.FreezingWater01)) and IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.FreezingWater01 == 0 then
      PhoneMessage(85, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      netvariable.player1.FreezingWater01 = 1
    end
    EndFrame()
    if (IsInArea(Troop.TT_AntiArmour01, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_AntiArmour02, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Chain01, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Chain02, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Chain03, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Grunt01, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Grunt02, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Grunt03, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Grunt04, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Grunt05, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Grunt06, Map_Zone.FreezingWater01)) and IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player2.FreezingWater01 == 0 then
      PhoneMessage(84, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      netvariable.player2.FreezingWater01 = 1
    end
    EndFrame()
    if CheckCapturePoint(Capture_Point.TT_HQ01, constant.ARMY_XYLVANIAN, 99, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message1Play == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(36, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      PhoneMessage(37, constant.ID_NONE, 1, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      Message1Play = 1
    end
    EndFrame()
    if CheckCapturePoint(Capture_Point.TT_HQ01, constant.ARMY_XYLVANIAN, 5, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message2Play == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(38, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      PhoneMessage(39, constant.ID_NONE, 1, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      Message2Play = 1
    end
    EndFrame()
    if CheckCapturePoint(Capture_Point.TT_HQ01, constant.ARMY_TUNDRAN, 10, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message2Play == 1 then
      Message2Play = 0
    end
    EndFrame()
    if CheckCapturePoint(Capture_Point.TT_HQ01, constant.ARMY_TUNDRAN, 90, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message1Play == 1 then
      Message1Play = 0
    end
    EndFrame()
  until 0 >= GetTimeLeft() or GetInstallationOwner(Strategic_Installation.TT_HQ01) == constant.ARMY_XYLVANIAN
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  end
  ShowTimer(0)
  FreezePlayer(constant.PLAYER_ONE)
  FreezePlayer(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.XN_Cutscene)
  Spawn(Troop.TT_Cutscene)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ForceUnitTransfer(constant.PLAYER_ONE, Troop.XN_Cutscene, true, true)
    netvariable.player1.ReadyForCutscene02 = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ForceUnitTransfer(constant.PLAYER_TWO, Troop.TT_Cutscene, true, true)
    netvariable.player2.ReadyForCutscene02 = 1
  end
  repeat
    EndFrame()
  until netvariable.player1.ReadyForCutscene02 == 1 and netvariable.player2.ReadyForCutscene02 == 1
  DebugOut("***** 1")
  Despawn(Ground_Vehicle.XN_LightTank01)
  Despawn(Water_Vehicle.XN_Battleship01)
  Despawn(Troop.XN_Hose01)
  Despawn(Troop.XN_Hose02)
  Despawn(Troop.XN_Hose03)
  Despawn(Troop.XN_Hose04)
  Despawn(Troop.XN_Grunt01)
  Despawn(Troop.XN_Grunt02)
  Despawn(Troop.XN_Grunt03)
  Despawn(Troop.XN_Grunt04)
  Despawn(Troop.XN_Grunt05)
  Despawn(Troop.XN_Grunt06)
  Despawn(Troop.XN_AntiAir01)
  Despawn(Troop.XN_AntiAir02)
  Despawn(Troop.XN_AntiAir03)
  Despawn(Troop.XN_AntiAir04)
  Despawn(Troop.XN_AntiAir05)
  Despawn(Troop.XN_AntiAir06)
  Despawn(Ground_Vehicle.TT_Artillery01)
  Despawn(Ground_Vehicle.TT_Artillery02)
  Despawn(Air_Vehicle.TT_Bomber01)
  Despawn(Air_Vehicle.TT_Bomber02)
  Despawn(Troop.TT_Grunt01)
  Despawn(Troop.TT_Grunt02)
  Despawn(Troop.TT_Grunt03)
  Despawn(Troop.TT_Grunt04)
  Despawn(Troop.TT_Grunt05)
  Despawn(Troop.TT_Grunt06)
  Despawn(Troop.TT_AntiArmour01)
  Despawn(Troop.TT_AntiArmour02)
  Despawn(Troop.TT_Chain01)
  Despawn(Troop.TT_Chain02)
  Despawn(Troop.TT_Chain03)
  DebugOut("***** 2")
  Kill(Destroyable_Object.Sandbag01)
  Kill(Destroyable_Object.Sandbag02)
  DebugOut("***** 3")
  WaitFor(1)
  DebugOut("***** 4")
  if 0 >= GetTimeLeft() and GetInstallationOwner(Strategic_Installation.TT_HQ01) ~= constant.ARMY_XYLVANIAN and Cutscene02Begins == 0 then
    DebugOut("***** 5")
    Despawn(Building.TT_HQ01)
    DebugOut("***** 6")
    Spawn(Capture_Point.TT_HQ01)
    DebugOut("***** 7")
    SetActive(Morphing_Building.TT_HQ01, constant.ACTIVE)
    DebugOut("***** 8")
    Spawn(Troop.OutroXGrunt01)
    Spawn(Troop.OutroXGrunt02)
    Spawn(Troop.OutroXGrunt03)
    Spawn(Troop.OutroXGrunt04)
    Spawn(Troop.OutroXFlamer01)
    Spawn(Troop.OutroXFlamer02)
    Spawn(Troop.OutroXAAVet01)
    Spawn(Troop.OutroXAAVet02)
    Spawn(Troop.OutroTTGrunt01)
    Spawn(Troop.OutroTTGrunt02)
    Spawn(Troop.OutroTTGrunt03)
    Spawn(Troop.OutroTTGrunt04)
    Spawn(Troop.OutroTTBazooka01)
    Spawn(Troop.OutroTTBazooka02)
    Spawn(Troop.OutroTTAssault01)
    Spawn(Troop.OutroTTAssault02)
    DebugOut("***** 9")
    DeclareVictory(constant.ARMY_TUNDRAN)
    DebugOut("***** 10")
    Kill(KillObjectives)
    DebugOut("***** 11")
    ClearMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_TWO)
    DebugOut("***** 12")
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      SetCamera(Camera.Player01Cutscene, constant.PLAYER_ONE)
      CameraSetFOV(Camera.Player01Cutscene, 65, constant.IMMEDIATE)
      CameraSetWaypoint(Camera.Player01Cutscene, Waypoint.OutroXShot01Spline)
      CameraSetTarget(Camera.Player01Cutscene, Waypoint.OutroXShot01Target)
      DebugOut("***** 13")
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      SetCamera(Camera.Player02Cutscene, constant.PLAYER_TWO)
      CameraSetFOV(Camera.Player02Cutscene, 65, constant.IMMEDIATE)
      CameraSetWaypoint(Camera.Player02Cutscene, Waypoint.OutroTTShot01Spline)
      CameraSetTarget(Camera.Player02Cutscene, Waypoint.OutroTTShot01Target)
      DebugOut("***** 14")
    end
    DebugOut("***** 15")
    StartOutro()
    DebugOut("***** 16")
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    DebugOut("***** 17")
    WaitFor(1)
    DebugOut("***** 18")
    Cutscene03Begins = 1
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.skip03 == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(44, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      WaitFor(10)
      netvariable.player1.skip03 = 1
    end
    DebugOut("***** 19")
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player2.skip03 == 0 then
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(45, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
      WaitFor(10)
      netvariable.player2.skip03 = 1
    end
    DebugOut("***** 20")
  end
  if GetInstallationOwner(Strategic_Installation.TT_HQ01) == constant.ARMY_XYLVANIAN and Cutscene03Begins == 0 then
    DebugOut("***** 21")
    SetObjectiveData(Objective_Marker.TT_HQ01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.XN_HQ01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.TT_HQ, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.XN_HQ, constant.OBJECTIVE_DATA_STATE, 1)
    SetObjectiveData(Objective.TT_HQ_FAILED, constant.OBJECTIVE_DATA_VISIBLE, 1)
    SetObjectiveData(Objective.TT_HQ_FAILED, constant.OBJECTIVE_DATA_STATE, 1)
    DebugOut("***** 22")
    gamestate = 3
    DebugOut(gamestate)
    DebugOut("***** 23")
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      SetObjectivesResult(true, true, true)
    end
    DebugOut("***** 24")
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      SetObjectivesResult(false, false, false)
    end
    DebugOut("***** 25")
    Spawn(Troop.OutroXGrunt01)
    Spawn(Troop.OutroXGrunt02)
    Spawn(Troop.OutroXGrunt03)
    Spawn(Troop.OutroXGrunt04)
    Spawn(Troop.OutroXFlamer01)
    Spawn(Troop.OutroXFlamer02)
    Spawn(Troop.OutroXAAVet01)
    Spawn(Troop.OutroXAAVet02)
    Spawn(Troop.OutroTTGrunt01)
    Spawn(Troop.OutroTTGrunt02)
    Spawn(Troop.OutroTTGrunt03)
    Spawn(Troop.OutroTTGrunt04)
    Spawn(Troop.OutroTTBazooka01)
    Spawn(Troop.OutroTTBazooka02)
    Spawn(Troop.OutroTTAssault01)
    Spawn(Troop.OutroTTAssault02)
    DebugOut("***** 26")
    DeclareVictory(constant.ARMY_XYLVANIAN)
    DebugOut("***** 27")
    Kill(KillObjectives)
    DebugOut("***** 28")
    ClearMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_TWO)
    DebugOut("***** 29")
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      SetCamera(Camera.Player01Cutscene, constant.PLAYER_ONE)
      CameraSetFOV(Camera.Player01Cutscene, 65, constant.IMMEDIATE)
      CameraSetWaypoint(Camera.Player01Cutscene, Waypoint.OutroXShot01Spline)
      CameraSetTarget(Camera.Player01Cutscene, Waypoint.OutroXShot01Target)
    end
    DebugOut("***** 30")
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      SetCamera(Camera.Player02Cutscene, constant.PLAYER_TWO)
      CameraSetFOV(Camera.Player02Cutscene, 65, constant.IMMEDIATE)
      CameraSetWaypoint(Camera.Player02Cutscene, Waypoint.OutroTTShot01Spline)
      CameraSetTarget(Camera.Player02Cutscene, Waypoint.OutroTTShot01Target)
    end
    DebugOut("***** 31")
    StartOutro()
    DebugOut("***** 32")
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    DebugOut("***** 33")
    WaitFor(1)
    DebugOut("***** 34")
    Cutscene02Begins = 1
    DebugOut("***** 35")
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.skip02 == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(41, constant.ID_NONE, 1, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      WaitFor(10)
      netvariable.player1.skip02 = 1
    end
    DebugOut("***** 36")
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player2.skip02 == 0 then
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(42, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      WaitFor(10)
      netvariable.player2.skip02 = 1
    end
    DebugOut("***** 37")
  end
end
