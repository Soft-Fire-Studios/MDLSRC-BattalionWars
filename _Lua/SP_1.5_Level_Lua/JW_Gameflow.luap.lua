function JW_Gameflow(owner)
  SolarEmpire = FriendlyArmy
  WesternFrontier = FriendlyArmy
  AngloIsles = EnemyArmy
  MinLevelTime = 375
  MaxLevelTime = 750
  PowerObjectives = 2
  TechniqueWeighting = 10
  local wflost = 0
  LandAirUnit(Air_Vehicle.SolarAirTransport04, 81, -120, constant.ORDER_FORCED, 1, 3, 90)
  LandAirUnit(Air_Vehicle.SolarAirTransport03, 81, -177, constant.ORDER_FORCED, 1, 3, 90)
  StartIntro()
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(IntroCutsceneGlobal)
      ClearMessageQueue()
      DebugOut("Intro Cutscene Skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      IntroCutsceneEnd = 1
    else
      EndFrame()
    end
  until IntroCutsceneEnd == 1
  Despawn(Ground_Vehicle.CS_Light_Tank)
  Teleport(Water_Vehicle.SEBattleship01, -1520, -25, 90)
  Teleport(Air_Vehicle.AngloBomber05, -535, 105, 90)
  Teleport(Air_Vehicle.AngloBomber03, -535, -40, 90)
  StoreSummaryMessage(constant.PLAYER_ONE, 50, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 51, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 52, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Sad)
  if move == 0 then
    GoToArea(Ground_Vehicle.AngloArtillery06, -455, -35, 1, constant.ORDER_FORCED)
    GoToArea(Ground_Vehicle.AngloArtillery03, -456, 43, 1, constant.ORDER_FORCED)
  elseif move == 1 then
    GoToArea(Ground_Vehicle.AngloArtillery03, -456, 43, 1, constant.ORDER_FORCED)
  end
  SetCamera(Camera.PlayerCamera)
  EndFrame()
  ResetCommandBar()
  EndIntro()
  SetViewDistanceAdjustment(500, 25)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Despawn(Ground_Vehicle.CS_Light_Tank)
  Despawn(Air_Vehicle.SolarAirTransport03)
  Despawn(Air_Vehicle.SolarAirTransport04)
  Despawn(Air_Vehicle.IntroductionCutscene03AngloAirTransport)
  ResetHealthAndScoreTotals()
  PhoneMessage(15, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  PhoneMessage(16, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
  PhoneMessage(70, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  repeat
    if transports == 1 then
      DebugOut("Player has completed transport objective, starting mid level cutscene and skip")
      break
    end
    if IsDead(Water_Vehicle.SEBattleship01) then
      FreezePlayer(constant.PLAYER_ONE)
      Kill(events)
      missionend = 1
      DebugOut("RunonceMissionFailure01 = 1 - Lost all Solar Battleships, Mission Fail")
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(100, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(186)
    else
      EndFrame()
    end
    if IsDead(Water_Vehicle.WesternFrontierSeaTransport01) and IsDead(Water_Vehicle.WesternFrontierSeaTransport02) then
      FreezePlayer(constant.PLAYER_ONE)
      Kill(events)
      missionend = 1
      DebugOut("RunonceMissionFailure02 = 1 - Lost all Western Frontier Sea Transports, Mission Fail")
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(99, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(187)
    else
      EndFrame()
    end
    if (IsDead(Water_Vehicle.WesternFrontierSeaTransport01) or IsDead(Water_Vehicle.WesternFrontierSeaTransport02)) and wflost == 0 then
      DebugOut("1 WF Naval Transport down")
      wflost = 1
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierSeaTransport, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierSeaTransport1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierSeaTransport2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      PhoneMessage(25, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
    else
      EndFrame()
    end
    if GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) > -465 then
      DebugOut("Player Out of Bounds")
      ClearMessageQueue()
      PhoneMessage(145, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Teleport(GetPlayerUnit(), -475, -220, 340, 2)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(1)
    else
      EndFrame()
    end
  until missionend == 1
  ClearMessageQueue()
  PhoneMessage(42, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  transports = 2
  StartOutro()
  PauseTimerActive = 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(TransportLandingCutsceneGlobal)
      ClearMessageQueue()
      DebugOut("Intro Cutscene Skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      TransportLandingCutsceneEnd = 1
    else
      EndFrame()
    end
  until TransportLandingCutsceneEnd == 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  PauseTimerActive = 0
  StoreSummaryMessage(constant.PLAYER_ONE, 22, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 39, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  PauseTimerActive = 0
  repeat
    EndFrame()
  until TransportLandingCutsceneEnd == 2
  SetCamera(Camera.PlayerCamera)
  EndIntro()
  SetViewDistanceAdjustment(400, 25)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(20, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
  Despawn(Air_Vehicle.IntroductionCutscene03AngloAirTransport)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  repeat
    if aatowers == 1 then
      DebugOut("Player has completed aa towers objective, starting mid level cutscene and skip")
      break
    end
    if IsDead(Water_Vehicle.SEBattleship01) then
      FreezePlayer(constant.PLAYER_ONE)
      Kill(events)
      missionend = 1
      DebugOut("RunonceMissionFailure01 = 1 - Lost all Solar Battleships, Mission Fail")
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(100, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(186)
    else
      EndFrame()
    end
    if WesternFrontierGruntsAlive == 0 then
      FreezePlayer(constant.PLAYER_ONE)
      Kill(events)
      missionend = 1
      DebugOut("RunonceMissionFailure03 = 1 - Lost all Western Frontier Grunts, Mission Fail")
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(98, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(188)
    else
      EndFrame()
    end
  until missionend == 1
  ClearMessageQueue()
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  aatowers = 2
  StartOutro()
  PauseTimerActive = 1
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts01, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts02, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts03, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts04, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts05, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts06, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts07, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts08, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts09, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts11, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts12, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers1, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers2, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers3, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers4, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveProtectOurBattleships, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveProtectOurBattleships1, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.RadioAntenna, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(SeaUnitsWithdrawCutsceneGlobal)
      ClearMessageQueue()
      DebugOut("Intro Cutscene Skipped")
      SeaUnitsWithdrawCutsceneEnd = 1
    else
      EndFrame()
    end
  until SeaUnitsWithdrawCutsceneEnd == 1
  Kill(SeaUnitsWithdrawCutsceneGlobal)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if cutshadow == 1 then
    SetUnitShadowDistance(75)
  end
  Spawn(Troop.SolarGrunt01)
  Spawn(Troop.SolarGrunt02)
  Spawn(Troop.SolarGrunt03)
  Spawn(Troop.SolarGrunt04)
  Spawn(Troop.SolarGrunt05)
  Spawn(Troop.SE_Grunt_06)
  Spawn(Troop.SE_Grunt_07)
  Spawn(Troop.SE_Grunt_08)
  Spawn(Troop.SE_Grunt_09)
  Spawn(Troop.SE_Grunt_10)
  Spawn(Ground_Vehicle.SolarAntiAirTank01)
  Spawn(Ground_Vehicle.SolarLightTank01)
  EndFrame()
  SetActive(Troop.SolarGrunt01, constant.ACTIVE)
  SetActive(Troop.SolarGrunt02, constant.ACTIVE)
  SetActive(Troop.SolarGrunt03, constant.ACTIVE)
  SetActive(Troop.SolarGrunt04, constant.ACTIVE)
  SetActive(Troop.SolarGrunt05, constant.ACTIVE)
  SetActive(Troop.SE_Grunt_06, constant.ACTIVE)
  SetActive(Troop.SE_Grunt_07, constant.ACTIVE)
  SetActive(Troop.SE_Grunt_08, constant.ACTIVE)
  SetActive(Troop.SE_Grunt_09, constant.ACTIVE)
  SetActive(Troop.SE_Grunt_10, constant.ACTIVE)
  SetActive(Ground_Vehicle.SolarAntiAirTank01, constant.ACTIVE)
  SetActive(Ground_Vehicle.SolarLightTank01, constant.ACTIVE)
  EndFrame()
  ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarLightTank01, true, true)
  Despawn(Water_Vehicle.SEFrigate01)
  Despawn(Water_Vehicle.SEFrigate02)
  Despawn(Water_Vehicle.SEBattleship01)
  Despawn(Water_Vehicle.SEBattleship02)
  SeaUnitsWithdrawCutsceneEnd = 2
  if 0 < NumPassengersInUnit(Capture_Point.PrimaryObjectiveReinforcements) then
    ExitVehicle(constant.ID_NONE, Capture_Point.PrimaryObjectiveReinforcements)
  end
  EndFrame()
  Teleport(Troop.WesternFrontierGrunt01, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt02, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt03, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt04, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt05, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt06, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt07, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt08, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt09, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt10, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt11, -5, -155, 90, 15)
  Teleport(Troop.WesternFrontierGrunt12, -5, -155, 90, 15)
  PauseTimerActive = 0
  Despawn(Ground_Vehicle.SE_CS_AA)
  Despawn(Ground_Vehicle.SE_CS_LT)
  Despawn(Troop.SE_CS_Baz_1)
  Despawn(Troop.SE_CS_Baz_2)
  Despawn(Troop.SE_CS_Baz_3)
  Despawn(Troop.SE_CS_Baz_4)
  Despawn(Troop.SE_CS_Baz_5)
  SetObjectiveData(Objective.Airbase, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveCaptureAngloIslesAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  StoreSummaryMessage(constant.PLAYER_ONE, 36, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 35, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  Despawn(Capture_Point.PrimaryObjectiveReinforcements, false)
  Spawn(Capture_Point.Fake_Helipad)
  SetCamera(Camera.PlayerCamera)
  EndFrame()
  ResetCommandBar()
  EndIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(58, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(59, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  WaitFor(4.5)
  GoToArea(Air_Vehicle.SolarAirTransport03, -1840, -345, 0, 0)
  GoToArea(Air_Vehicle.SolarAirTransport04, -1840, -315, 0, 0)
  WaitFor(10)
  Despawn(Air_Vehicle.SolarAirTransport03)
  Despawn(Air_Vehicle.SolarAirTransport04)
  repeat
    if GetState(Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase) == flag.TYPE_SOLAR then
      VictoryDance(constant.ARMY_SOLAR, true)
      SetObjectiveData(Objective.Airbase, constant.OBJECTIVE_DATA_STATE, 1)
      DebugScoring = true
      StopScoringTimer()
      missionend = 1
      DebugScoring = true
      DebugOut("Airbase Captured, Mission Complete")
      OutroCutsceneStart = 1
      repeat
        EndFrame()
      until OutroCutsceneStart == 2
      WaitFor(1)
      repeat
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          Kill(OutroCutsceneGlobal)
          ClearMessageQueue()
          DebugOut("Intro Cutscene Skipped")
          OutroCutsceneStart = 3
        else
          EndFrame()
        end
      until OutroCutsceneStart == 3
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
    else
      EndFrame()
    end
    if CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 then
      FreezePlayer(constant.PLAYER_ONE)
      Kill(events)
      missionend = 1
      DebugOut("RunonceMissionFailure04 = 1 - Lost all infantry, Mission Fail")
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue()
      PhoneMessage(96, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(133)
    else
      EndFrame()
    end
    if GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < -100 then
      DebugOut("Player Out of Bounds")
      ClearMessageQueue()
      PhoneMessage(145, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Teleport(GetPlayerUnit(), -85, -165, 45, 2)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(1)
    else
      EndFrame()
    end
  until missionend == 1
end
