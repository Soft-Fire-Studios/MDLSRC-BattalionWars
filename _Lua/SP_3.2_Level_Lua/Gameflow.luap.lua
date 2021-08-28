function Gameflow(owner)
  Despawn(Ground_Vehicle.AI_Light_Tank_1)
  Despawn(Ground_Vehicle.AI_Light_Tank_2)
  local deathtext = 0
  SolarEmpire = EnemyArmy
  AngloIsles = FriendlyArmy
  MinLevelTime = 570
  MaxLevelTime = 1140
  TechniqueWeighting = 20
  local hqtext = 0
  StartIntro()
  WaitFor(2)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      ClearMessageQueue()
      DebugOut("cutscene skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
    else
      EndFrame()
    end
  end
  Kill(cutkiller)
  shot = 4
  StoreSummaryMessage(1, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  StoreSummaryMessage(2, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  StoreSummaryMessage(3, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  SetCamera(Camera.Player_Camera)
  EndFrame()
  ResetCommandBar()
  EndIntro()
  StartScoringTimer()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ListScoringUnits()
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    PhoneMessage(7, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  else
    PhoneMessage(11, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  end
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  ResetHealthAndScoreTotals()
  PauseTutorial01 = 1
  while missionend == 0 do
    if AllPlayerUnitsDead(constant.PLAYER_ONE) then
      if wave == 0 then
        missionend = 1
        DebugOut("Player has lost all their units - MISSION FAILED")
        ClearMessageQueue()
        PhoneMessage(85, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
        DeclareVictory(constant.ARMY_SOLAR)
        WaitFor(7)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(131)
      else
        repeat
          EndFrame()
        until IsReadyToRevive(Water_Vehicle.AI_Frigate_1) or IsReadyToRevive(Water_Vehicle.AI_Frigate_2)
        if IsReadyToRevive(Water_Vehicle.AI_Frigate_1) then
          ReviveDeadUnit(Water_Vehicle.AI_Frigate_1, 505, 310, 270, 30)
        else
          ReviveDeadUnit(Water_Vehicle.AI_Frigate_2, 505, 310, 270, 30)
        end
      end
    elseif CheckCapturePoint(Capture_Point.AI_Dock_CP, constant.ARMY_SOLAR, 100, 1, constant.CAPTUREPOINTFLAG_RAISING) and wave < 5 then
      missionend = 1
      DebugOut("Solars have captured the docks - MISSION FAILED")
      ClearMessageQueue()
      FreezePlayer(constant.PLAYER_ONE)
      PhoneMessage(86, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_SOLAR)
      WaitFor(7)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(170)
    elseif IsDead(Water_Vehicle.AI_Frigate_1) and IsDead(Water_Vehicle.AI_Frigate_2) and wave == 0 then
      SetObjectiveData(Objective_Marker.Battleships_OM_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Battleships_OM_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      missionend = 1
      DebugOut("Player has lost both their frigates - MISSION FAILED")
      ClearMessageQueue()
      FreezePlayer(constant.PLAYER_ONE)
      PhoneMessage(89, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_SOLAR)
      WaitFor(7)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(174)
    else
      if wave == 5 then
        DebugOut("Wave = 5, cancelling win / lose check")
        break
      else
      end
    end
    EndFrame()
  end
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  FreezePlayer(constant.PLAYER_ONE)
  cutscene = 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if 0 < NumPassengersInUnit(Capture_Point.AI_Dock_CP) then
    ExitVehicle(constant.ID_NONE, Capture_Point.AI_Dock_CP)
  end
  StartOutro()
  PauseTimerActive = 1
  mid = 1
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      ClearMessageQueue()
      DebugOut("cutscene skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
    else
      EndFrame()
    end
  end
  Kill(cutkiller)
  Teleport(Water_Vehicle.AI_Sea_Transport_1, 365, 400, 0, 10)
  Teleport(Water_Vehicle.AI_Sea_Transport_2, 325, 400, 0, 10)
  DebugOut("Transfering player to a non building if need be")
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
  if IsDead(Water_Vehicle.AI_Frigate_1) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Frigate_1 then
    ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.AI_Frigate_1, true)
  elseif IsDead(Water_Vehicle.AI_Frigate_2) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Frigate_2 then
    ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.AI_Frigate_2, true)
  elseif IsDead(Water_Vehicle.AI_Battleship_1) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Battleship_1 then
    ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.AI_Battleship_1, true)
  elseif IsDead(Water_Vehicle.AI_Sub_1) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_1 then
    ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.AI_Sub_1, true)
  elseif IsDead(Water_Vehicle.AI_Sub_2) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_1 then
    ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.AI_Sub_2, true)
  end
  if IsDead(Water_Vehicle.AI_Frigate_1) == false then
    SetHealthPercent(Water_Vehicle.AI_Frigate_1, 100)
  end
  if IsDead(Water_Vehicle.AI_Frigate_2) == false then
    SetHealthPercent(Water_Vehicle.AI_Frigate_2, 100)
  end
  if IsDead(Water_Vehicle.AI_Sub_1) == false then
    SetHealthPercent(Water_Vehicle.AI_Sub_1, 100)
  end
  if IsDead(Water_Vehicle.AI_Sub_2) == false then
    SetHealthPercent(Water_Vehicle.AI_Sub_2, 100)
  end
  if IsDead(Water_Vehicle.AI_Battleship_1) == false then
    SetHealthPercent(Water_Vehicle.AI_Battleship_1, 100)
  end
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
  DebugOut("Making Buildings Inactive")
  if IsPassengerInUnit(Troop.AI_Grunt_4) then
    ExitVehicle(Troop.AI_Grunt_4, constant.ID_NONE)
  end
  if IsPassengerInUnit(Troop.AI_Grunt_5) then
    ExitVehicle(Troop.AI_Grunt_5, constant.ID_NONE)
  end
  EndFrame()
  EndFrame()
  EndFrame()
  SetActive(Building.AI_Tower_1, constant.INACTIVE)
  SetActive(Building.AI_Tower_2, constant.INACTIVE)
  SetActive(Troop.AI_Grunt_4, constant.INACTIVE)
  SetActive(Troop.AI_Grunt_5, constant.INACTIVE)
  Despawn(Troop.AI_Grunt_4)
  Despawn(Troop.AI_Grunt_5)
  if GetSpawnMode() == eModeAction.Follow then
    if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Battleship_1 then
      FollowUnit(Water_Vehicle.AI_Battleship_1, GetPlayerUnit(constant.PLAYER_ONE), 40, 0)
    end
    if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Frigate_1 then
      FollowUnit(Water_Vehicle.AI_Frigate_1, GetPlayerUnit(constant.PLAYER_ONE), 40, 0)
    end
    if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Frigate_2 then
      FollowUnit(Water_Vehicle.AI_Frigate_2, GetPlayerUnit(constant.PLAYER_ONE), 40, 0)
    end
    if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_1 then
      FollowUnit(Water_Vehicle.AI_Sub_1, GetPlayerUnit(constant.PLAYER_ONE), 40, 0)
    end
    if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_2 then
      FollowUnit(Water_Vehicle.AI_Sub_2, GetPlayerUnit(constant.PLAYER_ONE), 40, 0)
    end
  end
  Despawn(Ground_Vehicle.HQ_Heavy_Tank_5, true)
  Despawn(Troop.KillMe1, true)
  Despawn(Troop.KillMe5, true)
  Despawn(Troop.KillMe6, true)
  StoreSummaryMessage(58, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  StoreSummaryMessage(59, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  SetCamera(Camera.Player_Camera)
  EndIntro()
  PauseTimerActive = 0
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  mid = 2
  PhoneMessageWithObjective(64, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(65, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  DebugOut("Begin Transports win / lose check")
  repeat
    if beach == 1 then
      break
    elseif IsDead(Water_Vehicle.AI_Sea_Transport_1) and IsDead(Water_Vehicle.AI_Sea_Transport_2) then
      missionend = 1
      DebugOut("Player has lost both their sea transports - MISSION FAILED")
      ClearMessageQueue()
      FreezePlayer(constant.PLAYER_ONE)
      PhoneMessage(87, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_SOLAR)
      WaitFor(7)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(165)
    else
      EndFrame()
    end
    if deathtext == 0 and (IsDead(Water_Vehicle.AI_Frigate_1) or IsDead(Water_Vehicle.AI_Frigate_2) or IsDead(Water_Vehicle.AI_Sub_1) or IsDead(Water_Vehicle.AI_Sub_2) or IsDead(Water_Vehicle.AI_Battleship_1)) then
      deathtext = 1
      PhoneMessage(75, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
    end
  until missionend == 1
  ClearMessageQueue()
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  SetInvulnerable(flag.TYPE_ANGLO, true)
  SetInvulnerable(flag.TYPE_SOLAR, true)
  cutscene = 0
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  beachshot = 1
  StartIntro()
  PauseTimerActive = 1
  Kill(Water_Vehicle.HQ_Battleship_1)
  WaitFor(2)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      ClearMessageQueue()
      DebugOut("cutscene skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
    else
      EndFrame()
    end
  end
  landing = 1
  if IsDead(Water_Vehicle.AI_Sea_Transport_1) == false then
    ExitVehicle(Ground_Vehicle.AI_Light_Tank_1, Water_Vehicle.AI_Sea_Transport_1)
    ExitVehicle(Troop.AI_Grunt_10, Water_Vehicle.AI_Sea_Transport_1)
    ExitVehicle(Troop.AI_Grunt_11, Water_Vehicle.AI_Sea_Transport_1)
    ExitVehicle(Troop.AI_Grunt_12, Water_Vehicle.AI_Sea_Transport_1)
    ExitVehicle(Troop.AI_Grunt_13, Water_Vehicle.AI_Sea_Transport_1)
    ExitVehicle(Troop.AI_Grunt_14, Water_Vehicle.AI_Sea_Transport_1)
  end
  if IsDead(Water_Vehicle.AI_Sea_Transport_2) == false then
    ExitVehicle(Ground_Vehicle.AI_Light_Tank_2, Water_Vehicle.AI_Sea_Transport_2)
    ExitVehicle(Troop.AI_Grunt_16, Water_Vehicle.AI_Sea_Transport_2)
    ExitVehicle(Troop.AI_Grunt_17, Water_Vehicle.AI_Sea_Transport_2)
    ExitVehicle(Troop.AI_Grunt_18, Water_Vehicle.AI_Sea_Transport_2)
    ExitVehicle(Troop.AI_Grunt_19, Water_Vehicle.AI_Sea_Transport_2)
    ExitVehicle(Troop.AI_Grunt_20, Water_Vehicle.AI_Sea_Transport_2)
  end
  repeat
    EndFrame()
  until (IsDead(Water_Vehicle.AI_Sea_Transport_1) or 4 > NumPassengersInUnit(Water_Vehicle.AI_Sea_Transport_1)) and (IsDead(Water_Vehicle.AI_Sea_Transport_2) or 4 > NumPassengersInUnit(Water_Vehicle.AI_Sea_Transport_2))
  Kill(cutkiller)
  EndFrame()
  Despawn(Ground_Vehicle.CS_Light_Tank_1)
  Despawn(Ground_Vehicle.CS_Light_Tank_2)
  if trans1dead == 0 then
    Spawn(Ground_Vehicle.AI_Light_Tank_1)
    EndFrame()
    Teleport(Ground_Vehicle.AI_Light_Tank_1, -460, 765, 270, 10)
    Despawn(Water_Vehicle.AI_Sea_Transport_1)
    DebugOut("Sea Transport 1 made it to land, setting units inside to be active")
    SetActive(Ground_Vehicle.AI_Light_Tank_1, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_10, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_11, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_12, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_13, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_14, constant.ACTIVE)
    Despawn(Water_Vehicle.AI_Sea_Transport_1)
    SetObjectiveData(Objective_Marker.Transports_OM_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  else
    Spawn(Ground_Vehicle.AI_Light_Tank_1)
    Teleport(Ground_Vehicle.AI_Light_Tank_1, -1870, 800, 270, 10)
    Kill(Ground_Vehicle.AI_Light_Tank_1)
  end
  if trans2dead == 0 then
    Spawn(Ground_Vehicle.AI_Light_Tank_2)
    EndFrame()
    if trans1dead == 0 then
      Teleport(Ground_Vehicle.AI_Light_Tank_2, -495, 755, 270, 10)
    else
      Teleport(Ground_Vehicle.AI_Light_Tank_2, -460, 765, 270, 10)
    end
    Despawn(Water_Vehicle.AI_Sea_Transport_2)
    DebugOut("Sea Transport 2 made it to land, setting units inside to be active")
    SetActive(Ground_Vehicle.AI_Light_Tank_2, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_16, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_17, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_18, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_19, constant.ACTIVE)
    SetActive(Troop.AI_Grunt_20, constant.ACTIVE)
    Despawn(Water_Vehicle.AI_Sea_Transport_2)
    SetObjectiveData(Objective_Marker.Transports_OM_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  else
    Spawn(Ground_Vehicle.AI_Light_Tank_2)
    Teleport(Ground_Vehicle.AI_Light_Tank_2, -1870, 700, 270, 10)
    Kill(Ground_Vehicle.AI_Light_Tank_2)
  end
  EndFrame()
  if trans1dead == 0 then
    ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.AI_Light_Tank_1, true)
  else
    ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.AI_Light_Tank_2, true)
  end
  if trans1dead + trans2dead == 0 then
    DebugOut("Spawning East Transport Building")
    Spawn(Building.Beached_Transport_2)
  end
  if 2 > trans1dead + trans2dead then
    DebugOut("Spawning West Transport Building")
    Spawn(Building.Beached_Transport_1)
  end
  SetActive(Troop.Cutscene_Grunt, constant.INACTIVE)
  Despawn(Troop.Cutscene_Grunt, false)
  SetCamera(Camera.Player_Camera)
  EndIntro()
  PauseTimerActive = 0
  SetUnitShadowDistance(0)
  SetViewDistanceAdjustment(425, 25)
  SetEnableGuardMode(constant.PLAYER_ONE, true)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_ANGLO, false)
  SetInvulnerable(flag.TYPE_SOLAR, false)
  PhoneMessageWithObjective(69, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  PhoneMessage(73, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(5)
  beach = 2
  DebugOut("Begin final win / lose check")
  while missionend == 0 do
    if (IsDead(Troop.AI_Grunt_10) and IsDead(Troop.AI_Grunt_11) and IsDead(Troop.AI_Grunt_12) and IsDead(Troop.AI_Grunt_13) and IsDead(Troop.AI_Grunt_14) or trans1dead == 1) and (IsDead(Troop.AI_Grunt_16) and IsDead(Troop.AI_Grunt_17) and IsDead(Troop.AI_Grunt_18) and IsDead(Troop.AI_Grunt_19) and IsDead(Troop.AI_Grunt_20) or trans2dead == 1) then
      missionend = 1
      DebugOut("Player has lost all their infantry - MISSION FAILED")
      ClearMessageQueue()
      DeclareVictory(constant.ARMY_SOLAR)
      FreezePlayer(constant.PLAYER_ONE)
      PhoneMessage(90, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      WaitFor(7)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(133)
    elseif GetState(Capture_Point.SE_HQ_CP) == flag.TYPE_ANGLO then
      StopScoringTimer()
      WaitFor(1)
      VictoryDance(constant.ARMY_ANGLO)
      missionend = 1
      DebugOut("Anglos have captured the HQ - MISSION COMPETE")
      ClearMessageQueue()
      SetObjectiveData(Objective.SE_HQ, constant.OBJECTIVE_DATA_STATE, 1)
      FreezePlayer(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      hqcap = 1
      StartOutro()
      ListScoringUnits()
      DebugOut("Waiting for Outro to Begin")
      repeat
        EndFrame()
      until cutscene == 0
      DebugOut("Outro has Begun, waiting for the player to skip the cutscene")
      while cutscene == 0 do
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          ClearMessageQueue()
          DebugOut("cutscene skipped")
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          cutscene = 1
        else
          EndFrame()
        end
      end
      Kill(cutkiller)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      WinMission()
    else
      EndFrame()
    end
    if deathtext == 0 and (IsDead(Water_Vehicle.AI_Frigate_1) or IsDead(Water_Vehicle.AI_Frigate_2) or IsDead(Water_Vehicle.AI_Sub_1) or IsDead(Water_Vehicle.AI_Sub_2) or IsDead(Water_Vehicle.AI_Battleship_1)) then
      deathtext = 1
      PhoneMessage(75, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
    end
    EndFrame()
  end
  DebugOut("Who killed this script?")
end
