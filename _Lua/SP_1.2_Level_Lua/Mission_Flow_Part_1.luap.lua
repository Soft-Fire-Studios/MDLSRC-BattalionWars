function Mission_Flow_Part_1(owner)
  MissionFlow = owner
  local KeepAAVehicleInWait = 0
  SetActive(Ground_Vehicle.SEaatank2, constant.INACTIVE)
  Despawn(Ground_Vehicle.SEaatank2)
  Despawn(Air_Vehicle.AIairtransport3)
  Despawn(Air_Vehicle.AIairtransport4)
  Despawn(Air_Vehicle.AIairtransport5)
  Despawn(Troop.AIAirTransport01Pilot)
  Despawn(Troop.AIgruntA1)
  Despawn(Troop.AIgruntA2)
  Despawn(Troop.AIgruntA3)
  Despawn(Troop.AIgruntA4)
  Despawn(Troop.AIgruntD1)
  Despawn(Troop.AIgruntD2)
  Despawn(Troop.AIgruntD3)
  Despawn(Troop.AIgruntD4)
  Despawn(Troop.AIgruntE1)
  Despawn(Troop.AIgruntE2)
  Despawn(Troop.AIgruntE3)
  Despawn(Troop.AIgruntE4)
  Despawn(Troop.AIgruntF1)
  Despawn(Troop.AIgruntF2)
  Despawn(Troop.AIgruntF3)
  Despawn(Troop.AIgruntF4)
  Despawn(Troop.AIbazooka5)
  Despawn(Troop.AIbazooka6)
  Despawn(Troop.AIbazooka7)
  Despawn(Troop.AIbazooka8)
  Despawn(Ground_Vehicle.AIlighttank1)
  Despawn(Ground_Vehicle.AIlighttank2)
  Despawn(Ground_Vehicle.AIlighttank3)
  Despawn(Ground_Vehicle.AIlighttank4)
  Despawn(Ground_Vehicle.AIlighttank5)
  Despawn(Ground_Vehicle.AIlighttank6)
  Despawn(Ground_Vehicle.AIlighttank8)
  Despawn(Water_Vehicle.AItransport1)
  Despawn(Water_Vehicle.AItransport2)
  Despawn(Water_Vehicle.AItransport3)
  Despawn(Water_Vehicle.AItransport4)
  Despawn(Water_Vehicle.AItransport5)
  Despawn(Water_Vehicle.AItransport6)
  Despawn(Water_Vehicle.AItransport7)
  Despawn(Water_Vehicle.AItransport8)
  Despawn(Air_Vehicle.AIbomber)
  Despawn(Air_Vehicle.AIbomber1)
  Despawn(Air_Vehicle.AIbomber2)
  Despawn(Air_Vehicle.AIbomber3)
  Despawn(Air_Vehicle.AIbomber4)
  Despawn(Ground_Vehicle.WFlighttank1)
  Despawn(Capture_Point.flamevets)
  Despawn(Troop.CutsceneDummy)
  Despawn(Building.CutsceneAngloTankShot)
  SetObjectiveData(Objective.SEaatank, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective.SEaatank, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.SEaatanks, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective.SEaatanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.SEaatanks2, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective.SEaatanks2, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSEcannon1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.DefendSEcannon2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.NavalGunWaypoint01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.NavalGunWaypoint02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.NavalGunWaypoint03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.AdvanceSEcannons, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective.AdvanceSEcannons, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.DefendSEcannons, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective.DefendSEcannons, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.flamereenforcements, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.flamereenforcements, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.flamereenforcements, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.RecaptureBase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.RecaptureBase, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective.RecaptureBase, constant.OBJECTIVE_DATA_VISIBLE, 0)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.TriggerAngloBazookaCutscene)
  SetObjectiveData(Objective_Marker.NavalGunWaypoint01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  AngloBazookaCutsceneStart = 1
  WaitFor(3)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(AngloBazookaCutscene)
      DebugOut("Anglo Bazooka Cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      AngloBazookaCutsceneEnd = 1
      EndFrame()
    else
    end
    EndFrame()
  until AngloBazookaCutsceneEnd == 1
  ClearMessageQueue()
  StoreSummaryMessage(11, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Sad)
  StoreSummaryMessage(13, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Sad)
  Teleport(Troop.SEgrunt1, -280, -740, 0, 0)
  Teleport(Troop.SEgrunt2, -276, -740, 0, 0)
  Teleport(Troop.SEgrunt3, -272, -740, 0, 0)
  Teleport(Troop.SEgrunt4, -268, -740, 0, 0)
  Teleport(Troop.SEgrunt5, -264, -740, 0, 0)
  Teleport(Troop.SEflame1, -272, -735, 0, 0)
  Teleport(Troop.SEflame2, -276, -735, 0, 0)
  Teleport(Troop.SEflame7, -280, -735, 0, 0)
  Teleport(Troop.SEflame8, -268, -735, 0, 0)
  Teleport(Troop.SEflame9, -264, -735, 0, 0)
  Teleport(Ground_Vehicle.SEaatank1, -273, -755, 0, 0)
  EndFrame()
  Teleport(Troop.SEgrunt1, -280, -740, 0, 0)
  Teleport(Troop.SEgrunt2, -276, -740, 0, 0)
  Teleport(Troop.SEgrunt3, -272, -740, 0, 0)
  Teleport(Troop.SEgrunt4, -268, -740, 0, 0)
  Teleport(Troop.SEgrunt5, -264, -740, 0, 0)
  Teleport(Troop.SEflame1, -272, -735, 0, 0)
  Teleport(Troop.SEflame2, -276, -735, 0, 0)
  Teleport(Troop.SEflame7, -280, -735, 0, 0)
  Teleport(Troop.SEflame8, -268, -735, 0, 0)
  Teleport(Troop.SEflame9, -264, -735, 0, 0)
  Teleport(Ground_Vehicle.SEaatank1, -273, -755, 0, 0)
  EndFrame()
  ForceUnitTransfer(constant.PLAYER_ONE, PlayerUnit, true, true)
  Despawn(Troop.CutsceneDummy)
  SetUnitInvulnerable(Ground_Vehicle.SEaatank1, false)
  SetUnitInvulnerable(Troop.AIbazooka1, false)
  SetUnitInvulnerable(Troop.AIbazooka2, false)
  SetUnitInvulnerable(Troop.AIbazooka3, false)
  SetUnitInvulnerable(Troop.AIbazooka4, false)
  SetObjectiveData(Objective.SEaatank, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.NavalGunWaypoint02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if AAVehicleFollowing == 1 then
    FollowUnit(Ground_Vehicle.SEaatank1, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt01Following == 1 then
    FollowUnit(Troop.SEgrunt1, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt02Following == 1 then
    FollowUnit(Troop.SEgrunt2, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt03Following == 1 then
    FollowUnit(Troop.SEgrunt3, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt04Following == 1 then
    FollowUnit(Troop.SEgrunt4, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt05Following == 1 then
    FollowUnit(Troop.SEgrunt5, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame01Following == 1 then
    FollowUnit(Troop.SEflame1, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame02Following == 1 then
    FollowUnit(Troop.SEflame2, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame07Following == 1 then
    FollowUnit(Troop.SEflame7, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame08Following == 1 then
    FollowUnit(Troop.SEflame8, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame09Following == 1 then
    FollowUnit(Troop.SEflame9, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  SetCamera(Camera.player1cam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ClearMessageQueue()
  WaitFor(UnfreezeDelay)
  UnfreezePlayer()
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  PauseTimerActive = 0
  PauseTutorialWait = 1
  WaitFor(2)
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    PhoneMessage(15, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  end
  repeat
    if BeginBazookaCutscene == false and IsInArea(GetPlayerUnit(), Map_Zone.TriggerBazookaCutscene) then
      BeginBazookaCutscene = true
      SetObjectiveData(Objective_Marker.NavalGunWaypoint02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      WaitFor(3)
      repeat
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          Kill(midcutscene)
          DebugOut("Bazooka Cutscene Skipped")
          ClearMessageQueue()
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          Teleport(Ground_Vehicle.AIlighttank1, -392, -407, 180)
          Kill(Ground_Vehicle.AIlighttank1)
          MidCutsceneEnded = true
          EndFrame()
        else
        end
        EndFrame()
      until MidCutsceneEnded == true
      ClearMessageQueue()
      StoreSummaryMessage(18, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
      Spawn(Ground_Vehicle.AIlighttank2)
      SetActive(Ground_Vehicle.AIlighttank2, constant.INACTIVE)
      FollowWaypoint(Ground_Vehicle.AIlighttank2, Waypoint.AngloLightTank2, 0, 0, constant.ORDER_NORMAL)
      Despawn(Building.CutsceneAngloTankShot)
      SetObjectiveData(Objective_Marker.NavalGunWaypoint03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Troop.SEbazooka2, GetPlayerUnit(), -1, 0)
        FollowUnit(Troop.SEbazooka3, GetPlayerUnit(), -1, 0)
        FollowUnit(Troop.SEbazooka4, GetPlayerUnit(), -1, 0)
        FollowUnit(Troop.SEbazooka5, GetPlayerUnit(), -1, 0)
      end
      SetCamera(Camera.player1cam)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(UnfreezeDelay)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
      SetInvulnerable(flag.TYPE_SOLAR, 0)
      AttackTarget(Ground_Vehicle.AIlighttank2, GetPlayerUnit(), constant.ORDER_NORMAL)
      ClearMessageQueue()
      PauseTutorialHeavyWeapon = 1
      if GetCurrentMissionCompleted() == true and GetTutorialMode() == false then
        SetActive(Ground_Vehicle.AIlighttank2, constant.ACTIVE)
      end
      WaitFor(2)
      ClearMessageQueue()
      if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
        PhoneMessage(74, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
      end
      Spawn(Troop.AIAirTransport01Pilot)
      PutUnitInVehicle(Troop.AIAirTransport01Pilot, Air_Vehicle.AIAirTransport01, 0)
      FollowWaypoint(Air_Vehicle.AIAirTransport01, Waypoint.AIAirTransport01Path2, 0, 0, constant.ORDER_FORCED)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      if IsDead(Ground_Vehicle.AIlighttank2) == false then
        PhoneMessage(19, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
      end
      EndFrame()
      StartBazookaTutorialString = 1
    end
    EndFrame()
    EndFrame()
  until MidCutsceneEnded == true
  repeat
    if IsInArea(GetPlayerUnit(), Map_Zone.TriggerGuardTutorial2a) or IsInArea(GetPlayerUnit(), Map_Zone.TriggerGuardTutorial2b) then
      SetObjectiveData(Objective_Marker.NavalGunWaypoint03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.DefendSEcannon1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.DefendSEcannon2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      if IsInArea(Ground_Vehicle.SEaatank1, Map_Zone.AAVehicleReminder) and GetPrimaryActionState(Ground_Vehicle.SEaatank1) ~= constant.ACTION_STATE_FOLLOWING and GetPrimaryActionState(Ground_Vehicle.SEaatank1) ~= constant.ACTION_STATE_ATTACK and GetPlayerUnit() ~= Ground_Vehicle.SEaatank1 then
        KeepAAVehicleInWait = 1
        EndFrame()
      end
      NavalGunsCutsceneStart = 1
      WaitFor(3)
      repeat
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          Kill(NavalGunsCutscene)
          DebugOut("Naval Guns Cutscene Skipped")
          ClearMessageQueue()
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          NavalGunsCutsceneEnd = 1
          EndFrame()
        else
        end
        EndFrame()
      until NavalGunsCutsceneEnd == 1
      ClearMessageQueue()
      StoreSummaryMessage(35, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
      if KeepAAVehicleInWait == 0 then
        FollowUnit(Ground_Vehicle.SEaatank1, GetPlayerUnit(), -1, 0)
      end
      if SEGrunt01Following == 2 then
        FollowUnit(Troop.SEgrunt1, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEGrunt02Following == 2 then
        FollowUnit(Troop.SEgrunt2, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEGrunt03Following == 2 then
        FollowUnit(Troop.SEgrunt3, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEGrunt04Following == 2 then
        FollowUnit(Troop.SEgrunt4, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEGrunt05Following == 2 then
        FollowUnit(Troop.SEgrunt5, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEFlame01Following == 2 then
        FollowUnit(Troop.SEflame1, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEFlame02Following == 2 then
        FollowUnit(Troop.SEflame2, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEFlame07Following == 2 then
        FollowUnit(Troop.SEflame7, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEFlame08Following == 2 then
        FollowUnit(Troop.SEflame8, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEFlame09Following == 2 then
        FollowUnit(Troop.SEflame9, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEBazooka02Following == 2 then
        FollowUnit(Troop.SEbazooka2, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEBazooka03Following == 2 then
        FollowUnit(Troop.SEbazooka3, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEBazooka04Following == 2 then
        FollowUnit(Troop.SEbazooka4, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      if SEBazooka05Following == 2 then
        FollowUnit(Troop.SEbazooka5, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      end
      SetCamera(Camera.player1cam)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      ClearMessageQueue()
      WaitFor(UnfreezeDelay)
      UnfreezePlayer()
      SetInvulnerable(flag.TYPE_SOLAR, 0)
      SetInvulnerable(flag.TYPE_ANGLO, 0)
      PauseTimerActive = 0
      ClearMessageQueue()
      if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
        PhoneMessage(88, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        WaitFor(4)
        GuardTutorial = true
      end
      GuardTutorialEnd = true
    end
    EndFrame()
    EndFrame()
  until GuardTutorialEnd == true
end
