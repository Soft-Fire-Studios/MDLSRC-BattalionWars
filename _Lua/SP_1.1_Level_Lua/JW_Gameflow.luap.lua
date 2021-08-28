function JW_Gameflow(owner)
  SolarEmpire = FriendlyArmy
  AngloIsles = EnemyArmy
  MinLevelTime = 360
  MaxLevelTime = 720
  TechniqueWeighting = 15
  local grunt02follow = 0
  local grunt03follow = 0
  local grunt04follow = 0
  local grunt05follow = 0
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true) then
      Cutscene01Finished = 1
    end
    EndFrame()
  until Cutscene01Finished == 1
  Kill(KillCutscene01)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  StoreSummaryMessage(constant.PLAYER_ONE, 95, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Sad)
  StoreSummaryMessage(constant.PLAYER_ONE, 96, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Sad)
  StoreSummaryMessage(constant.PLAYER_ONE, 97, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Sad)
  StoreSummaryMessage(constant.PLAYER_ONE, 98, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
  SetObjectiveData(Objective_Marker.Grunt_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Grunt_3_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Grunt_4_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Grunt_5_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  Teleport(Troop.SE_Grunt01, 396, -113, 320, 0)
  SetUnitInvulnerable(Troop.SE_Grunt01, false)
  SetCamera(Camera.PlayerCamera01)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ReadyToBegin = 1
  StartScoringTimer()
  PhoneMessage(17, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(18, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  PhoneMessage(19, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  repeat
    if flamer == 1 then
      DebugOut("Player has past the Barrier")
      break
    end
    if AllPlayerUnitsDead(constant.PLAYER_ONE) then
      DebugOut("MISSION FAIL - Player has lost all their Infantry")
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(106, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(133)
    else
      EndFrame()
    end
  until missionend == 1
  if GetActionState(Troop.SE_Grunt02) == constant.ACTION_STATE_FOLLOWING then
    DebugOut("Grunt 2 is following")
    grunt02follow = 1
  else
    grunt02follow = 0
  end
  if GetActionState(Troop.SE_Grunt03) == constant.ACTION_STATE_FOLLOWING then
    DebugOut("Grunt 3 is following")
    grunt03follow = 1
  else
    grunt03follow = 0
  end
  if GetActionState(Troop.SE_Grunt04) == constant.ACTION_STATE_FOLLOWING then
    DebugOut("Grunt 4 is following")
    grunt04follow = 1
  else
    grunt04follow = 0
  end
  if GetActionState(Troop.SE_Grunt05) == constant.ACTION_STATE_FOLLOWING then
    DebugOut("Grunt 5 is following")
    grunt05follow = 1
  else
    grunt05follow = 0
  end
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ReadyForCutscene02 = 1
  ResetHealthAndScoreTotals()
  StartOutro()
  PauseTimerActive = 1
  repeat
    EndFrame()
  until Cutscene02Begins == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true) then
      Cutscene02Finished = 1
    end
    EndFrame()
  until Cutscene02Finished == 1
  Kill(KillCutscene02)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  Despawn(Air_Vehicle.AI_Air_Transport_Fake)
  EndFrame()
  Spawn(Air_Vehicle.AI_Air_Transport_a)
  Spawn(Troop.AI_AT_a_Pilot)
  EndFrame()
  PutUnitInVehicle(Troop.AI_AT_a_Pilot, Air_Vehicle.AI_Air_Transport_a, 0)
  EndFrame()
  GoToArea(Air_Vehicle.AI_Air_Transport_a, -1200, -5, 5, 0, constant.ORDER_FORCED)
  Teleport(Troop.SE_Hose01, 176, -65, 0, 1)
  Teleport(Troop.SE_Hose02, 174, -68, 0, 1)
  Teleport(Troop.SE_Hose03, 172, -71, 0, 1)
  Teleport(Troop.SE_Hose04, 170, -74, 0, 1)
  Teleport(Troop.SE_Hose05, 168, -77, 0, 1)
  if IsDead(Troop.AI_HoseTutorial_Grunt01) == false then
    Despawn(Troop.AI_HoseTutorial_Grunt01)
    Spawn(Pickup.Pickup_01)
  end
  if IsDead(Troop.AI_HoseTutorial_Grunt02) == false then
    Despawn(Troop.AI_HoseTutorial_Grunt02)
    Spawn(Pickup.Pickup_02)
  end
  if IsDead(Troop.AI_HoseTutorial_Grunt03) == false then
    Despawn(Troop.AI_HoseTutorial_Grunt03)
    Spawn(Pickup.Pickup_03)
  end
  if IsDead(Troop.AI_HoseTutorial_Grunt04) == false then
    Despawn(Troop.AI_HoseTutorial_Grunt04)
    Spawn(Pickup.Pickup_04)
  end
  if IsDead(Troop.AI_HoseTutorial_Grunt05) == false then
    Despawn(Troop.AI_HoseTutorial_Grunt05)
    Spawn(Pickup.Pickup_05)
  end
  WaitFor(0.5)
  flamershot = 3
  if grunt02follow == 1 then
    FollowUnit(Troop.SE_Grunt02, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
  end
  if grunt03follow == 1 then
    FollowUnit(Troop.SE_Grunt03, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
  end
  if grunt04follow == 1 then
    FollowUnit(Troop.SE_Grunt04, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
  end
  if grunt05follow == 1 then
    FollowUnit(Troop.SE_Grunt05, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
  end
  StoreSummaryMessage(constant.PLAYER_ONE, 47, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 29, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Happy)
  PauseTimerActive = 0
  SetCamera(Camera.PlayerCamera01)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  flamershot = 4
  repeat
    if aavehicle == 1 then
      DebugOut("Player has past the Barrier")
      break
    end
    if IsDead(Troop.SE_Grunt01) and IsDead(Troop.SE_Grunt02) and IsDead(Troop.SE_Grunt03) and IsDead(Troop.SE_Grunt04) and IsDead(Troop.SE_Grunt05) and IsDead(Troop.SE_Hose01) and IsDead(Troop.SE_Hose02) and IsDead(Troop.SE_Hose03) and IsDead(Troop.SE_Hose04) and IsDead(Troop.SE_Hose05) then
      DebugOut("MISSION FAIL - Player has lost all their Infantry")
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(106, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(133)
    else
      EndFrame()
    end
    if IsDead(Troop.SE_Hose01) and IsDead(Troop.SE_Hose02) and IsDead(Troop.SE_Hose03) and IsDead(Troop.SE_Hose04) and IsDead(Troop.SE_Hose05) and (IsDead(Building.Gates01) == false or IsDead(Building.Gates02) == false) then
      DebugOut("MISSION FAIL - Player has lost all their Infantry")
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(102, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(192)
    else
      EndFrame()
    end
  until missionend == 1
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ReadyForCutscene03 = 1
  StartOutro()
  repeat
    EndFrame()
  until Cutscene03Begins == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true) then
      Cutscene03Finished = 1
    end
    EndFrame()
  until Cutscene03Finished == 1
  Teleport(Troop.SE_Grunt01, -70, -55, 270, 1)
  Teleport(Troop.SE_Grunt02, -70, -57.5, 270, 1)
  Teleport(Troop.SE_Grunt03, -70, -60, 270, 1)
  Teleport(Troop.SE_Grunt04, -70, -62.5, 270, 1)
  Teleport(Troop.SE_Grunt05, -70, -65, 270, 1)
  Teleport(Troop.SE_Hose01, -75, -55, 270, 1)
  Teleport(Troop.SE_Hose02, -75, -57.5, 270, 1)
  Teleport(Troop.SE_Hose03, -75, -60, 270, 1)
  Teleport(Troop.SE_Hose04, -75, -62.5, 270, 1)
  Teleport(Troop.SE_Hose05, -75, -65, 270, 1)
  Kill(KillCutscene03)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  PauseTimerActive = 1
  StoreSummaryMessage(constant.PLAYER_ONE, 50, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Happy)
  PauseTimerActive = 0
  SetCamera(Camera.PlayerCamera01)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  repeat
    if airbase == 1 then
      DebugOut("Player has completed Airbase tutorial")
      break
    end
    if IsDead(Troop.SE_Grunt01) and IsDead(Troop.SE_Grunt02) and IsDead(Troop.SE_Grunt03) and IsDead(Troop.SE_Grunt04) and IsDead(Troop.SE_Grunt05) and IsDead(Troop.SE_Hose01) and IsDead(Troop.SE_Hose02) and IsDead(Troop.SE_Hose03) and IsDead(Troop.SE_Hose04) and IsDead(Troop.SE_Hose05) then
      DebugOut("MISSION FAIL - Player has lost all their Infantry")
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(106, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(133)
    else
      EndFrame()
    end
    if IsDead(Ground_Vehicle.SE_AATank01) == true then
      DebugOut("MISSION FAIL - Player has lost AA Vehicle")
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(105, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(158)
    else
      EndFrame()
    end
  until missionend == 1
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  PauseTimerActive = 1
  ReadyForCutscene04 = 1
  StartOutro()
  repeat
    EndFrame()
  until Cutscene04Begins == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true) then
      Cutscene04Finished = 1
    end
    EndFrame()
  until Cutscene04Finished == 1
  Kill(KillCutscene04)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  StoreSummaryMessage(constant.PLAYER_ONE, 47, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Happy)
  PauseTimerActive = 0
  SetCamera(Camera.PlayerCamera01)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  repeat
    if MissionComplete == 1 then
      ListScoringUnits()
      StopScoringTimer()
      missionend = 1
      DebugOut("Mission Complete")
      Kill(KillGlobalAirControl)
      SetInvulnerable(flag.TYPE_SOLAR, 1)
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
      FreezePlayer(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_ONE)
      SetObjectiveData(Objective.Protect_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      MissionComplete = 2
      break
    else
      EndFrame()
    end
    if GetInstallationOwner(Strategic_Installation.SE_Airbase01) == constant.ARMY_ANGLO then
      missionend = 1
      DebugOut("MISSION FAIL - Anglos have captured the Solar Airbase")
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(103, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      PhoneMessage(104, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(134)
    else
      EndFrame()
    end
    if IsDead(Troop.SE_Grunt01) and IsDead(Troop.SE_Grunt02) and IsDead(Troop.SE_Grunt03) and IsDead(Troop.SE_Grunt04) and IsDead(Troop.SE_Grunt05) and IsDead(Troop.SE_Hose01) and IsDead(Troop.SE_Hose02) and IsDead(Troop.SE_Hose03) and IsDead(Troop.SE_Hose04) and IsDead(Troop.SE_Hose05) and IsDead(Ground_Vehicle.SE_AATank01) then
      DebugOut("MISSION FAIL - Player has lost all their Infantry")
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(106, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(133)
    else
      EndFrame()
    end
    if IsDead(Ground_Vehicle.SE_AATank01) == true then
      DebugOut("MISSION FAIL - Player has lost AA Vehicle")
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(105, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(158)
    else
      EndFrame()
    end
  until missionend == 1
  repeat
    EndFrame()
  until Cutscene05Begins == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) == true) then
      Cutscene05Finished = 1
    end
    EndFrame()
  until Cutscene05Finished == 1
  Kill(KillCutscene05)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  EndOutro()
  WinMission()
end
