function Gameflow(owner)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Grunt_1)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Grunt_2)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Grunt_3)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Grunt_4)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Grunt_5)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Grunt_11)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Grunt_12)
  AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.SE_Beach_Tank_1)
  AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.SE_Beach_Tank_2)
  PauseTimerActive = 1
  Spawn(Building.SE_Gun_1)
  Spawn(Building.SE_Gun_2)
  Spawn(Building.SE_Gun_3)
  Spawn(Building.SE_Gun_4)
  SetFunctionIndicatorState(true)
  SolarEmpire = FriendlyArmy
  AngloIsles = EnemyArmy
  MinLevelTime = 465
  MaxLevelTime = 930
  TechniqueWeighting = 15
  TechniqueObjectives = 2
  PowerObjectives = 1
  SetInvulnerable(flag.TYPE_SOLAR, true)
  local loop = 0
  StartIntro()
  FreezePlayer()
  WaitFor(1)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(cutkiller)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
      break
    else
    end
    EndFrame()
  end
  SetViewDistanceAdjustment(450, 30)
  shot = 6
  Kill(Ground_Vehicle.SE_LT1)
  Despawn(Ground_Vehicle.CS_Light_Tank_1)
  Despawn(Ground_Vehicle.CS_Light_Tank_2)
  Despawn(Troop.CS_Troop_1)
  Despawn(Troop.CS_Troop_2)
  Despawn(Troop.CS_Troop_3)
  Despawn(Troop.CS_Troop_4)
  Despawn(Troop.CS_Troop_5)
  Despawn(Troop.CS_Troop_6)
  Despawn(Troop.CS_Troop_7)
  Despawn(Troop.CS_Troop_8)
  Despawn(Troop.CS_Troop_9)
  Despawn(Building.SE_Gun_1, true)
  Despawn(Building.SE_Gun_2, true)
  Despawn(Building.SE_Gun_3, true)
  Despawn(Building.SE_Gun_4, true)
  Teleport(Ground_Vehicle.SE_Beach_Tank_1, -176, 123, 10, 1)
  Spawn(Ground_Vehicle.SE_Beach_Tank_2)
  Spawn(Troop.SE_Grunt_1)
  Spawn(Troop.SE_Grunt_2)
  Spawn(Troop.SE_Grunt_3)
  Spawn(Troop.SE_Grunt_4)
  Spawn(Troop.SE_Grunt_5)
  Spawn(Troop.SE_Grunt_11)
  Spawn(Troop.SE_Grunt_12)
  Spawn(Troop.CS_Grunt_1)
  Spawn(Troop.CS_Grunt_2)
  Spawn(Troop.CS_Grunt_3)
  Spawn(Troop.CS_Grunt_4)
  Kill(Troop.CS_Grunt_1)
  Kill(Troop.CS_Grunt_2)
  Kill(Troop.CS_Grunt_3)
  Kill(Troop.CS_Grunt_4)
  SetInvulnerable(flag.TYPE_SOLAR, false)
  EndFrame()
  PauseTimerActive = 0
  StartScoringTimer()
  EndIntro()
  StoreSummaryMessage(1, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Sad)
  StoreSummaryMessage(2, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Sad)
  StoreSummaryMessage(3, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Sad)
  StartScoringTimer()
  ClearMessageQueue()
  SetCamera(Camera.Player_Camera)
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(5, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  while missionend == 0 do
    if 0 < NumItemsInArea(Map_Zone.Reaction_3, flag.TYPE_SOLAR) then
      DebugOut("Player has reached Assault Vets")
      PhoneMessage(30, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
      SetObjectiveData(Objective_Marker.Assault_Vets_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Palace_HQ_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      SetInvulnerable(flag.TYPE_SOLAR, true)
      FreezePlayer()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StartOutro()
      cutscene = 1
      assaultshot = 1
      break
    else
      EndFrame()
    end
    if AllPlayerUnitsDead(0) then
      DebugOut("Player has lost all units")
      missionend = 1
      ClearMessageQueue()
      PhoneMessage(36, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(131)
    else
      EndFrame()
    end
  end
  PauseTimerActive = 1
  repeat
    EndFrame()
  until cutscene == 0
  WaitFor(1)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(cutkiller)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
      break
    else
    end
    EndFrame()
  end
  assaultshot = 2
  SetViewDistanceAdjustment(350, 90)
  SpawnDistance = 350
  EndIntro()
  Despawn(Air_Vehicle.CS_Air_Transport_1)
  Despawn(Air_Vehicle.CS_Air_Transport_2)
  Despawn(Troop.CS_Baz_1)
  Despawn(Troop.CS_Baz_2)
  Despawn(Troop.CS_Baz_3)
  Despawn(Troop.CS_Baz_4)
  Despawn(Ground_Vehicle.CS_Light_Tank_3)
  Despawn(Troop.CS_AI_Grunt_1)
  Despawn(Troop.CS_AI_Grunt_2)
  Teleport(Troop.AI_R4_1, -20, 875, 180, 5)
  Teleport(Troop.AI_R4_2, -25, 880, 180, 5)
  Teleport(Troop.AI_R4_3, -15, 885, 180, 5)
  Teleport(Troop.AI_R4_4, -20, 890, 180, 5)
  EnableWeapon(Troop.CS_Baz_1, 1)
  EnableWeapon(Troop.CS_Baz_2, 1)
  EnableWeapon(Troop.CS_Baz_3, 1)
  EnableWeapon(Troop.CS_Baz_4, 1)
  Spawn(Troop.SE_POW1)
  Spawn(Troop.SE_POW2)
  Spawn(Troop.SE_POW3)
  Spawn(Troop.SE_POW4)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.SE_POW1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.SE_POW2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.SE_POW3, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.SE_POW4, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  end
  Spawn(Building.SE_Gun_1)
  Spawn(Building.SE_Gun_2)
  Spawn(Building.SE_Gun_3)
  Spawn(Building.SE_Gun_4)
  PauseTimerActive = 0
  StoreSummaryMessage(31, 0, SpriteID.CO_SE_Leiqo_Happy)
  StoreSummaryMessage(32, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  SetCamera(Camera.Player_Camera)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  assaultshot = 3
  SetInvulnerable(flag.TYPE_SOLAR, false)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_POW1)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_POW2)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_POW3)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_POW4)
  SetActive(Troop.SE_POW1, constant.ACTIVE)
  SetActive(Troop.SE_POW2, constant.ACTIVE)
  SetActive(Troop.SE_POW3, constant.ACTIVE)
  SetActive(Troop.SE_POW4, constant.ACTIVE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  while missionend == 0 do
    if 0 < NumItemsInArea(Map_Zone.Artillery, flag.TYPE_SOLAR) then
      Spawn(Ground_Vehicle.SO_Artillery_1)
      Spawn(Ground_Vehicle.SO_Artillery_2)
      AttackTarget(Ground_Vehicle.SO_Artillery_1, Building.SE_Gun_1)
      AttackTarget(Ground_Vehicle.SO_Artillery_2, Building.SE_Gun_4)
      WaitFor(5)
      SetViewDistanceAdjustment(525, 30)
      FreezePlayer()
      SetInvulnerable(flag.TYPE_SOLAR, true)
      DebugOut("Player has reached Artillery East")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StartOutro()
      midshot = 1
      break
    else
      EndFrame()
    end
    if AllPlayerUnitsDead(0) then
      DebugOut("Player has lost all units")
      missionend = 1
      ClearMessageQueue()
      PhoneMessage(36, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(131)
    else
      EndFrame()
    end
  end
  PauseTimerActive = 1
  repeat
    EndFrame()
  until cutscene == 0
  WaitFor(1)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(cutkiller)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
      break
    else
    end
    EndFrame()
  end
  PauseTimerActive = 0
  EndIntro()
  SetViewDistanceAdjustment(475, 30)
  StoreSummaryMessage(104, 0, SpriteID.CO_SE_Leiqo_Sad)
  SetCamera(Camera.Player_Camera)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  midshot = 3
  SetInvulnerable(flag.TYPE_SOLAR, false)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  while missionend == 0 do
    if missioncomplete == 1 then
      DebugScoring = true
      missionend = 1
      WaitFor(1)
      SetObjectiveData(Objective.Palace_HQ, constant.OBJECTIVE_DATA_STATE, 1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      FreezePlayer()
      SetInvulnerable(flag.TYPE_SOLAR, 1)
      DeclareVictory(constant.ARMY_SOLAR)
      StartIntro()
      StopScoringTimer()
      ExitVehicle(constant.ID_NONE, Building.MG_Nest_East)
      ExitVehicle(constant.ID_NONE, Building.MG_Nest_West)
      Teleport(Ground_Vehicle.SE_Beach_Tank_1, GetObjectXPosition(Waypoint.OutroTeleportTank01), GetObjectZPosition(Waypoint.OutroTeleportTank01), 180, 0)
      Teleport(Ground_Vehicle.SE_Beach_Tank_2, GetObjectXPosition(Waypoint.OutroTeleportTank02), GetObjectZPosition(Waypoint.OutroTeleportTank02), 180, 0)
      Teleport(Ground_Vehicle.SE_LT1, GetObjectXPosition(Waypoint.OutroTeleportTank03), GetObjectZPosition(Waypoint.OutroTeleportTank03), 180, 0)
      Teleport(Troop.SE_Grunt_1, GetObjectXPosition(Waypoint.OutroTeleportGrunt01), GetObjectZPosition(Waypoint.OutroTeleportGrunt01), 180, 10)
      Teleport(Troop.SE_Grunt_2, GetObjectXPosition(Waypoint.OutroTeleportGrunt01), GetObjectZPosition(Waypoint.OutroTeleportGrunt01), 180, 10)
      Teleport(Troop.SE_Grunt_3, GetObjectXPosition(Waypoint.OutroTeleportGrunt01), GetObjectZPosition(Waypoint.OutroTeleportGrunt01), 180, 10)
      Teleport(Troop.SE_Grunt_11, GetObjectXPosition(Waypoint.OutroTeleportGrunt01), GetObjectZPosition(Waypoint.OutroTeleportGrunt01), 180, 10)
      Teleport(Troop.SE_Grunt_12, GetObjectXPosition(Waypoint.OutroTeleportGrunt01), GetObjectZPosition(Waypoint.OutroTeleportGrunt01), 180, 10)
      if IsActive(Troop.SE_Grunt_6) then
        Teleport(Troop.SE_Grunt_6, GetObjectXPosition(Waypoint.OutroTeleportGrunt02), GetObjectZPosition(Waypoint.OutroTeleportGrunt02), 180, 10)
      end
      if IsActive(Troop.SE_Grunt_7) then
        Teleport(Troop.SE_Grunt_7, GetObjectXPosition(Waypoint.OutroTeleportGrunt02), GetObjectZPosition(Waypoint.OutroTeleportGrunt02), 180, 10)
      end
      if IsActive(Troop.SE_Baz_4) then
        Teleport(Troop.SE_Baz_4, GetObjectXPosition(Waypoint.OutroTeleportBazooka01), GetObjectZPosition(Waypoint.OutroTeleportBazooka01), 180, 10)
      end
      if IsActive(Troop.SE_Baz_5) then
        Teleport(Troop.SE_Baz_5, GetObjectXPosition(Waypoint.OutroTeleportBazooka01), GetObjectZPosition(Waypoint.OutroTeleportBazooka01), 180, 10)
      end
      Teleport(Troop.SE_Grunt_4, GetObjectXPosition(Waypoint.OutroTeleportBazooka01), GetObjectZPosition(Waypoint.OutroTeleportBazooka01), 180, 10)
      Teleport(Troop.SE_Grunt_5, GetObjectXPosition(Waypoint.OutroTeleportBazooka01), GetObjectZPosition(Waypoint.OutroTeleportBazooka01), 180, 10)
      Teleport(Troop.SE_POW1, GetObjectXPosition(Waypoint.OutroTeleportAssault01), GetObjectZPosition(Waypoint.OutroTeleportAssault01), 180, 10)
      Teleport(Troop.SE_POW2, GetObjectXPosition(Waypoint.OutroTeleportAssault01), GetObjectZPosition(Waypoint.OutroTeleportAssault01), 180, 10)
      Teleport(Troop.SE_POW3, GetObjectXPosition(Waypoint.OutroTeleportAssault01), GetObjectZPosition(Waypoint.OutroTeleportAssault01), 180, 10)
      Teleport(Troop.SE_POW4, GetObjectXPosition(Waypoint.OutroTeleportAssault01), GetObjectZPosition(Waypoint.OutroTeleportAssault01), 180, 10)
      DeclareVictory(constant.ARMY_SOLAR)
      outro = 1
      repeat
        EndFrame()
      until cutscene == 0
      while cutscene == 0 do
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          Kill(cutkiller)
          ClearMessageQueue()
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          cutscene = 1
          break
        else
        end
        EndFrame()
      end
      EndIntro()
      WinMission()
    elseif AllPlayerUnitsDead(0) then
      missionend = 1
      ClearMessageQueue()
      PhoneMessage(36, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(131)
    elseif CheckCapturePoint(Capture_Point.Palace, constant.ARMY_ANGLO, 100, 1, constant.CAPTUREPOINTFLAG_RAISING) == true or GetState(Capture_Point.Palace) == flag.TYPE_ANGLO then
      FreezePlayer()
      missionend = 1
      DeclareVictory(constant.ARMY_ANGLO)
      SetObjectiveData(Objective.Palace_HQ, constant.OBJECTIVE_DATA_STATE, 1)
      PhoneMessage(38, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(166)
    else
      WaitFor(0.5)
    end
  end
  DebugOut("Win / Lose Condition has been met, level over")
end
