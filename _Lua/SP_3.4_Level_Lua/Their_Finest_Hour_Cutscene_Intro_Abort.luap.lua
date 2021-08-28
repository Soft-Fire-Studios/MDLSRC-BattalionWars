function Their_Finest_Hour_Cutscene_Intro_Abort(owner)
  CutsceneAbort = owner
  local ReinforcementMessage01 = 0
  local ReinforcementMessage02 = 0
  local ReinforcementMessage03 = 0
  local NoInfantryMessage01 = 0
  local Message1Play = 0
  local Message2Play = 0
  local MessageQueue = 0
  Despawn(Air_Vehicle.AI_Bomber01_Cutscene)
  SetUnitInvulnerable(Troop.CUTSCENE, true)
  Despawn(Troop.SE_Grunt01)
  Despawn(Troop.SE_Grunt02)
  Despawn(Troop.SE_Grunt03)
  Despawn(Troop.SE_Grunt04)
  Despawn(Troop.SE_Grunt05)
  Despawn(Troop.SE_Barracks_AntiAir01)
  Despawn(Troop.SE_Barracks_AntiAir02)
  Despawn(Troop.SE_Barracks_AntiAir03)
  Despawn(Troop.SE_Barracks_AntiAir04)
  Despawn(Troop.SE_Barracks_Grunt01)
  Despawn(Troop.SE_Barracks_Grunt02)
  Despawn(Troop.SE_Barracks_Grunt03)
  Despawn(Troop.SE_Barracks_Grunt04)
  Despawn(Troop.SE_Factory_AntiAir01)
  Despawn(Troop.SE_Factory_AntiAir02)
  Despawn(Troop.SE_Factory_AntiAir03)
  Despawn(Troop.SE_Factory_Grunt01)
  Despawn(Troop.SE_Factory_Grunt02)
  Despawn(Troop.SE_Factory_Grunt03)
  Despawn(Troop.AI_Airbase01_MGTower01_Pilot01)
  Despawn(Troop.AI_Airbase01_MGTower02_Pilot01)
  Despawn(Troop.AI_Airbase01_MGTower03_Pilot01)
  Despawn(Air_Vehicle.AI_Bomber01)
  Despawn(Air_Vehicle.AI_Fighter01)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Cutscene = 1
      DebugOut("Cutscene =", Cutscene)
    end
    EndFrame()
  until CutsceneIntroBegins == 1 and Cutscene == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Kill(CutsceneIntro)
  DebugOut("Killed Cutscene")
  StoreSummaryMessage(constant.PLAYER_ONE, 1, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 2, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 3, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 4, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 5, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
  Spawn(Troop.SE_Grunt01)
  Spawn(Troop.SE_Grunt02)
  Spawn(Troop.SE_Grunt03)
  Spawn(Troop.SE_Grunt04)
  Spawn(Troop.SE_Grunt05)
  Teleport(Troop.SE_Grunt01, GetObjectXPosition(Waypoint.SE_Grunt01), GetObjectZPosition(Waypoint.SE_Grunt01), 180)
  Teleport(Troop.SE_Grunt02, GetObjectXPosition(Waypoint.SE_Grunt02), GetObjectZPosition(Waypoint.SE_Grunt02), 180)
  Teleport(Troop.SE_Grunt03, GetObjectXPosition(Waypoint.SE_Grunt03), GetObjectZPosition(Waypoint.SE_Grunt03), 180)
  Teleport(Troop.SE_Grunt04, GetObjectXPosition(Waypoint.SE_Grunt04), GetObjectZPosition(Waypoint.SE_Grunt04), 180)
  Teleport(Troop.SE_Grunt05, GetObjectXPosition(Waypoint.SE_Grunt05), GetObjectZPosition(Waypoint.SE_Grunt05), 180)
  GoToArea(Troop.SE_Grunt01, GetObjectXPosition(Waypoint.SE_Grunt01), GetObjectZPosition(Waypoint.SE_Grunt01), constant.ORDER_NORMAL)
  GoToArea(Troop.SE_Grunt02, GetObjectXPosition(Waypoint.SE_Grunt02), GetObjectZPosition(Waypoint.SE_Grunt02), constant.ORDER_NORMAL)
  GoToArea(Troop.SE_Grunt03, GetObjectXPosition(Waypoint.SE_Grunt03), GetObjectZPosition(Waypoint.SE_Grunt03), constant.ORDER_NORMAL)
  GoToArea(Troop.SE_Grunt04, GetObjectXPosition(Waypoint.SE_Grunt04), GetObjectZPosition(Waypoint.SE_Grunt04), constant.ORDER_NORMAL)
  GoToArea(Troop.SE_Grunt05, GetObjectXPosition(Waypoint.SE_Grunt05), GetObjectZPosition(Waypoint.SE_Grunt05), constant.ORDER_NORMAL)
  DebugOut("Almost ready to revive dead aircraft")
  Despawn(Air_Vehicle.AI_Bomber01_Cutscene)
  Despawn(Air_Vehicle.AI_Fighter01_Cutscene)
  Spawn(Troop.SE_Barracks_AntiAir01)
  Spawn(Troop.SE_Barracks_AntiAir02)
  Spawn(Troop.SE_Barracks_AntiAir03)
  Spawn(Troop.SE_Barracks_AntiAir04)
  Spawn(Troop.SE_Barracks_Grunt01)
  Spawn(Troop.SE_Barracks_Grunt02)
  Spawn(Troop.SE_Barracks_Grunt03)
  Spawn(Troop.SE_Barracks_Grunt04)
  Spawn(Troop.SE_Factory_AntiAir01)
  Spawn(Troop.SE_Factory_AntiAir02)
  Spawn(Troop.SE_Factory_AntiAir03)
  Spawn(Troop.SE_Factory_Grunt01)
  Spawn(Troop.SE_Factory_Grunt02)
  Spawn(Troop.SE_Factory_Grunt03)
  Despawn(Troop.AI_Grunt04)
  Spawn(Troop.AI_Airbase01_MGTower01_Pilot01)
  Spawn(Troop.AI_Airbase01_MGTower02_Pilot01)
  Spawn(Troop.AI_Airbase01_MGTower03_Pilot01)
  if NumPassengersInUnit(Building.AI_Airbase01_MGTower01) == 1 then
    ExitVehicle(GetUnitInSeat(Building.AI_Airbase01_MGTower01, 0), Building.AI_Airbase01_MGTower01)
  end
  if NumPassengersInUnit(Building.AI_Airbase01_MGTower02) == 1 then
    ExitVehicle(GetUnitInSeat(Building.AI_Airbase01_MGTower02, 0), Building.AI_Airbase01_MGTower02)
  end
  if NumPassengersInUnit(Building.AI_Airbase01_MGTower03) == 1 then
    ExitVehicle(GetUnitInSeat(Building.AI_Airbase01_MGTower03, 0), Building.AI_Airbase01_MGTower03)
  end
  repeat
    EndFrame()
  until NumPassengersInUnit(Building.AI_Airbase01_MGTower01) == 0 and NumPassengersInUnit(Building.AI_Airbase01_MGTower02) == 0 and NumPassengersInUnit(Building.AI_Airbase01_MGTower03) == 0
  DebugOut("NO PASSENGERS in Airbase MG TOWERS")
  PutUnitInVehicle(Troop.AI_Airbase01_MGTower01_Pilot01, Building.AI_Airbase01_MGTower01, 0)
  PutUnitInVehicle(Troop.AI_Airbase01_MGTower02_Pilot01, Building.AI_Airbase01_MGTower02, 0)
  PutUnitInVehicle(Troop.AI_Airbase01_MGTower03_Pilot01, Building.AI_Airbase01_MGTower03, 0)
  repeat
    EndFrame()
  until IsPassengerInUnit(Troop.AI_Airbase01_MGTower01_Pilot01, Building.AI_Airbase01_MGTower01) and IsPassengerInUnit(Troop.AI_Airbase01_MGTower02_Pilot01, Building.AI_Airbase01_MGTower02) and IsPassengerInUnit(Troop.AI_Airbase01_MGTower03_Pilot01, Building.AI_Airbase01_MGTower03)
  DebugOut("Airbase MG TOWERS occupied")
  ForceUnitTransfer(constant.PLAYER_ONE, Building.AI_Airbase01_MGTower01, true)
  SetUnitInvulnerable(Troop.CUTSCENE, false)
  Despawn(Troop.CUTSCENE)
  Spawn(Air_Vehicle.AI_Bomber01)
  Spawn(Air_Vehicle.AI_Fighter01)
  EndIntro()
  SetCamera(Camera.Player01)
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  StartScoringTimer()
  ResetHealthAndScoreTotals()
  IntroComplete = 1
  DebugOut("IntroComplete =", IntroComplete)
  repeat
    if CheckCapturePoint(Capture_Point.AI_Airbase01, constant.ARMY_SOLAR, 99, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message1Play == 0 then
      ClearMessageQueue()
      PhoneMessage(93, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
      Message1Play = 1
    end
    EndFrame()
    if CheckCapturePoint(Capture_Point.AI_Airbase01, constant.ARMY_SOLAR, 5, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message2Play == 0 then
      ClearMessageQueue()
      PhoneMessage(94, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
      Message2Play = 1
    end
    EndFrame()
    if CheckCapturePoint(Capture_Point.AI_Airbase01, constant.ARMY_ANGLO, 10, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message2Play == 1 then
      Message2Play = 0
    end
    EndFrame()
    if CheckCapturePoint(Capture_Point.AI_Airbase01, constant.ARMY_ANGLO, 90, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message1Play == 1 then
      Message1Play = 0
    end
    EndFrame()
    if GetInstallationOwner(Strategic_Installation.AI_Airbase01) == constant.ARMY_SOLAR then
      SetInvulnerable(flag.TYPE_SOLAR, 1)
      SetInvulnerable(flag.TYPE_ANGLO, 1)
      DeclareVictory(constant.ARMY_SOLAR)
      ClearMessageQueue()
      PhoneMessage(89, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
      MessageQueue = GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      repeat
        if GetNumItemsInMessageQueue(constant.PLAYER_ONE) == MessageQueue + 1 then
          MessageQueue = MessageQueue + 1
        end
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == MessageQueue - 1
      ClearMessageQueue()
      FreezePlayer(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(169)
    end
    EndFrame()
    if IsDead(Troop.AI_Airbase01_MGTower01_Pilot01) == true and IsDead(Troop.AI_Airbase01_MGTower02_Pilot01) == true and IsDead(Troop.AI_Airbase01_MGTower03_Pilot01) == true and DefenceComplete == 0 and ReinforcementMessage01 == 0 then
      PhoneMessage(90, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      ReinforcementMessage01 = 1
    end
    EndFrame()
    if POW01Objective == 0 and POW02Objective == 1 and ReinforcementMessage02 == 0 and IsDead(Troop.AI_Grunt01) == true and IsDead(Troop.AI_Grunt02) == true and IsDead(Troop.AI_Grunt03) == true and IsDead(Troop.AI_Grunt04) == true and IsDead(Troop.AI_Grunt05) == true and IsDead(Troop.AI_AntiArmour01) == true and IsDead(Troop.AI_AntiArmour02) == true and IsDead(Troop.AI_AntiArmour03) == true and IsDead(Troop.AI_AntiArmour04) == true and IsDead(Troop.AI_AntiArmour05) == true and IsDead(Troop.AI_Hose01) == true and IsDead(Troop.AI_Hose02) == true and IsDead(Troop.AI_Hose03) == true and IsDead(Troop.AI_Hose04) == true and IsDead(Troop.AI_Hose05) == true then
      PhoneMessage(85, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      ReinforcementMessage02 = 1
    end
    EndFrame()
    if POW01Objective == 0 and POW02Objective == 0 and ReinforcementMessage03 == 0 and IsDead(Troop.AI_Grunt01) == true and IsDead(Troop.AI_Grunt02) == true and IsDead(Troop.AI_Grunt03) == true and IsDead(Troop.AI_Grunt04) == true and IsDead(Troop.AI_Grunt05) == true and IsDead(Troop.AI_Hose01) == true and IsDead(Troop.AI_Hose02) == true and IsDead(Troop.AI_Hose03) == true and IsDead(Troop.AI_Hose04) == true and IsDead(Troop.AI_Hose05) == true then
      PhoneMessage(85, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      ReinforcementMessage03 = 1
    end
    EndFrame()
    if POW02ObjectiveActive == 0 and IsDead(Troop.AI_Grunt01) == true and IsDead(Troop.AI_Grunt02) == true and IsDead(Troop.AI_Grunt03) == true and IsDead(Troop.AI_Grunt04) == true and IsDead(Troop.AI_Grunt05) == true and IsDead(Troop.AI_Grunt06) == true and IsDead(Troop.AI_Grunt07) == true and IsDead(Troop.AI_Grunt08) == true and IsDead(Troop.AI_Grunt09) == true and IsDead(Troop.AI_Grunt10) == true and IsDead(Troop.AI_Hose01) == true and IsDead(Troop.AI_Hose02) == true and IsDead(Troop.AI_Hose03) == true and IsDead(Troop.AI_Hose04) == true and IsDead(Troop.AI_Hose05) == true then
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_SOLAR)
      ClearMessageQueue()
      PhoneMessage(88, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      MessageQueue = GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      repeat
        if GetNumItemsInMessageQueue(constant.PLAYER_ONE) == MessageQueue + 1 then
          MessageQueue = MessageQueue + 1
        end
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == MessageQueue - 1
      ClearMessageQueue()
      FreezePlayer(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(191)
    end
    EndFrame()
    if IsDead(Troop.AI_Grunt01) == true and IsDead(Troop.AI_Grunt02) == true and IsDead(Troop.AI_Grunt03) == true and IsDead(Troop.AI_Grunt04) == true and IsDead(Troop.AI_Grunt05) == true and IsDead(Troop.AI_Grunt06) == true and IsDead(Troop.AI_Grunt07) == true and IsDead(Troop.AI_Grunt08) == true and IsDead(Troop.AI_Grunt09) == true and IsDead(Troop.AI_Grunt10) == true and IsDead(Troop.AI_AntiArmour01) == true and IsDead(Troop.AI_AntiArmour02) == true and IsDead(Troop.AI_AntiArmour03) == true and IsDead(Troop.AI_AntiArmour04) == true and IsDead(Troop.AI_AntiArmour05) == true and IsDead(Troop.AI_Hose01) == true and IsDead(Troop.AI_Hose02) == true and IsDead(Troop.AI_Hose03) == true and IsDead(Troop.AI_Hose04) == true and IsDead(Troop.AI_Hose05) == true then
      SetInvulnerable(flag.TYPE_SOLAR, 1)
      SetInvulnerable(flag.TYPE_ANGLO, 1)
      DeclareVictory(constant.ARMY_SOLAR)
      ClearMessageQueue()
      PhoneMessage(88, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      MessageQueue = GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      repeat
        if GetNumItemsInMessageQueue(constant.PLAYER_ONE) == MessageQueue + 1 then
          MessageQueue = MessageQueue + 1
        end
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == MessageQueue - 1
      ClearMessageQueue()
      FreezePlayer(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(191)
    end
    EndFrame()
  until GetInstallationOwner(Strategic_Installation.SE_Airbase01) == constant.ARMY_ANGLO
  CutsceneEndReady = 1
end
