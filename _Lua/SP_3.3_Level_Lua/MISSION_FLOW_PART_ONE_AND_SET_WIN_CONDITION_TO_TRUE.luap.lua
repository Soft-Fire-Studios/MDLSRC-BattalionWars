function MISSION_FLOW_PART_ONE_AND_SET_WIN_CONDITION_TO_TRUE(owner)
  local beachattacked = false
  local village1attacked = false
  local village2attacked = false
  local POW1attacked = false
  local POW2attacked = false
  local POW3attacked = false
  local POW4attacked = false
  local leftroadattacked = false
  local UnitsInCover = false
  local TanksAttackedBazookas = false
  local castleBergeracattacked = false
  local ApproachingCastle = false
  local ApproachingCastleRamp = false
  local villagecleared = false
  local Radarwarning = false
  local ArtilleryDead = false
  local EnemeyFightersDead = false
  local BritsOnRoad = false
  local AAcleared = false
  local Dreadnaught1isDead = false
  SetObjectiveData(Objective_Marker.radar, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.radar, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.radar, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.destroydreadnaught, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.destroydreadnaught, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.destroydreadnaught, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.POWcamp, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.POWs, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.POWs, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.POWtank, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.POWtank, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.POWtank, constant.OBJECTIVE_DATA_STATE, 0)
  repeat
    EndFrame()
  until cutsceneskipped == true
  WaitFor(1)
  FollowWaypoint(Ground_Vehicle.SErecon2, Waypoint.recon1aa, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Ground_Vehicle.SErecon1, Waypoint.recon1, 0, 0, constant.ORDER_NORMAL)
  repeat
    WaitFor(0.1)
    if beachattacked == false and 0 < NumItemsInArea(Map_Zone.beach, flag.TYPE_ANGLO) then
      GoToArea(Troop.SEbazooka1, -489, -1002, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEbazooka2, -489, -1002, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEbazooka3, -489, -1002, 5, constant.ORDER_NORMAL)
      PhoneMessage(11, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      DebugOut("Encounter 1 is green")
      beachattacked = true
    end
    EndFrame()
    if village1attacked == false and 0 < NumItemsInArea(Map_Zone.village1, flag.TYPE_ANGLO) then
      GoToArea(Troop.SEbazooka5, -499, -853, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEbazooka6, -499, -853, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEbazooka7, -499, -853, 5, constant.ORDER_NORMAL)
      PhoneMessage(12, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DebugOut("Encounter 2 is green")
      village1attacked = true
    end
    EndFrame()
    if village2attacked == false and 0 < NumItemsInArea(Map_Zone.village2, flag.TYPE_ANGLO) then
      FollowWaypoint(Ground_Vehicle.SEltank1, Waypoint.tanks1, 0, 0, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.SEltank2, Waypoint.tanks2, 0, 0, constant.ORDER_NORMAL)
      PhoneMessage(13, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DebugOut("Encounter 3 is green")
      village2attacked = true
    end
    EndFrame()
    if villagecleared == false and IsDead(Ground_Vehicle.SEltank1) == true and IsDead(Ground_Vehicle.SEltank2) == true then
      PhoneMessage(14, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
      DebugOut("Encounter 4 is green")
      villagecleared = true
    end
    EndFrame()
    if POW1attacked == false and 0 < NumItemsInArea(Map_Zone.POWapproach1, flag.TYPE_ANGLO) then
      GoToArea(Troop.SEbazooka24, -383, -639, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEbazooka25, -383, -639, 5, constant.ORDER_NORMAL)
      DebugOut("Encounter 5 is green")
      POW1attacked = true
    end
    EndFrame()
    if POW1attacked == false and 0 < NumItemsInArea(Map_Zone.behindPOWcamp1, flag.TYPE_ANGLO) then
      GoToArea(Troop.SEbazooka24, -317, -449, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEbazooka25, -317, -449, 5, constant.ORDER_NORMAL)
      DebugOut("Encounter 6 is green")
      POW1attacked = true
    end
    EndFrame()
    if POW2attacked == false and NumItemsInArea(Map_Zone.POWcamp, flag.TYPE_ANGLO) > 6 then
      GoToArea(Troop.SEbazooka22, -267, -524, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEbazooka23, -267, -524, 5, constant.ORDER_NORMAL)
      PhoneMessage(15, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      DebugOut("Encounter 7 is green")
      POW2attacked = true
    end
    EndFrame()
    if BazookasFree == true and TanksAttackedBazookas == false then
      FollowWaypoint(Ground_Vehicle.SEltank3, Waypoint.tanks3, 0, 0, constant.ORDER_NORMAL)
      FollowWaypoint(Ground_Vehicle.SEltank4, Waypoint.tanks3, 0, 0, constant.ORDER_NORMAL)
      DebugOut("Encounter 8 is green")
      TanksAttackedBazookas = true
      if IsDead(Ground_Vehicle.SEltank3) == false and IsDead(Ground_Vehicle.SEltank4) == false then
        PhoneMessage(17, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
    end
    EndFrame()
    if POW4attacked == false and 0 < NumItemsInArea(Map_Zone.behindPOWcamp2, flag.TYPE_ANGLO) and IsDead(Ground_Vehicle.SEhtank2) == false then
      FollowWaypoint(Ground_Vehicle.SEhtank2, Waypoint.tanks4, 0, 0, constant.ORDER_NORMAL)
      PhoneMessage(19, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DebugOut("Encounter 11 is green")
      POW4attacked = true
    end
    EndFrame()
    if POW4attacked == false and 0 < NumItemsInArea(Map_Zone.behindPOWcamp2a, flag.TYPE_ANGLO) and IsDead(Ground_Vehicle.SEhtank2) == false then
      FollowWaypoint(Ground_Vehicle.SEhtank2, Waypoint.tanks4a, 0, 0, constant.ORDER_NORMAL)
      PhoneMessage(19, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DebugOut("Encounter 12 is green")
      POW4attacked = true
    end
    EndFrame()
    if UnitsInCover == false and 0 < NumItemsInArea(Map_Zone.UnitsInCover1, flag.TYPE_ANGLO) then
      PhoneMessage(21, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DebugOut("Encounter 15 is green")
      UnitsInCover = true
    end
    EndFrame()
    if UnitsInCover == false and NumItemsInArea(Map_Zone.UnitsInCover1false, flag.TYPE_ANGLO) > 4 then
      DebugOut("Encounter 16 is green")
      DebugOut(NumItemsInArea(Map_Zone.UnitsInCover1false, flag.TYPE_ANGLO))
      UnitsInCover = true
    end
    EndFrame()
    if ApproachingCastle == false and 0 < NumItemsInArea(Map_Zone.CastleRamp, flag.TYPE_ANGLO) then
      GoToArea(Ground_Vehicle.SEltank5, -544, -109, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt30, -544, -109, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt31, -544, -109, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt32, -544, -109, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt33, -544, -109, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt38, -544, -109, 5, constant.ORDER_NORMAL)
      PhoneMessage(24, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      DebugOut("Encounter 17 is green")
      ApproachingCastle = true
    end
    EndFrame()
    if ApproachingCastleRamp == false and BazookasFree == false and 0 < NumItemsInArea(Map_Zone.RPGtowers, flag.TYPE_ANGLO) then
      PhoneMessage(46, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      ApproachingCastleRamp = true
    end
    EndFrame()
    if castleBergeracattacked == false and 0 < NumItemsInArea(Map_Zone.castleBergerac, flag.TYPE_ANGLO) and IsDead(Building.radar) == false then
      PhoneMessage(25, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      GoToArea(Troop.SEgrunt50, 19, -297, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt51, 19, -297, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt52, 19, -297, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt53, 19, -297, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt54, 19, -297, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEgrunt55, 19, -297, 5, constant.ORDER_NORMAL)
      WaitFor(5)
      GoToArea(Ground_Vehicle.SEhtank7, -796, -91, 5, constant.ORDER_NORMAL)
      WaitFor(5)
      GoToArea(Troop.SEbazooka12, -774, -120, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEbazooka13, -774, -120, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.SEbazooka14, -774, -120, 5, constant.ORDER_NORMAL)
      DebugOut("Encounter 18 is green")
      castleBergeracattacked = true
    end
    EndFrame()
    if IsDead(Building.radar) then
      SetObjectiveData(Objective_Marker.radar, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.radar, constant.OBJECTIVE_DATA_STATE, 1)
      DebugOut("Encounter 20 is green")
      radardestroyed = 1
      SetInvulnerable(flag.TYPE_ANGLO, 1)
    end
    EndFrame()
  until radardestroyed == 1
  SetObjectiveData(Objective_Marker.POWcamp, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.POWs, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.POWtank, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.POWtank, constant.OBJECTIVE_DATA_VISIBLE, 0)
  FreezePlayer(constant.PLAYER_ONE)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  MidCutscene1start = true
  Spawn(Troop.dummy)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.dummy, true)
  Despawn(Ground_Vehicle.AIhtank1)
  Despawn(Ground_Vehicle.AIhtank2)
  WaitFor(0.5)
  Kill(Building.Gate1)
  Spawn(Building.Gate2)
  Spawn(Air_Vehicle.AItransport1)
  Spawn(Air_Vehicle.AItransport2)
  LandAirUnit(Air_Vehicle.AItransport1, GetObjectXPosition(Waypoint.transport1), GetObjectZPosition(Waypoint.transport1), constant.ORDER_FORCED, 0, 10, 80)
  LandAirUnit(Air_Vehicle.AItransport2, GetObjectXPosition(Waypoint.transport2), GetObjectZPosition(Waypoint.transport2), constant.ORDER_FORCED, 0, 10, 80)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt1)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt2)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt3)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt4)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt5)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt6)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt7)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt8)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt9)
  AddToGroup(Unit_Group.AIGrunts, Troop.AIcontrolledgrunt10)
  WaitFor(0.5)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(midcutscene1)
      ClearMessageQueue()
      DebugOut("cutscene skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StoreSummaryMessage(constant.PLAYER_ONE, 29, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
      StoreSummaryMessage(constant.PLAYER_ONE, 28, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
      StoreSummaryMessage(constant.PLAYER_ONE, 30, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
      StoreSummaryMessage(constant.PLAYER_ONE, 31, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
      StoreSummaryMessage(constant.PLAYER_ONE, 32, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
      MidCutscene1Skipped = true
      AIControlledGruntsBegun = true
      MidCutscene1Ended = true
      EndFrame()
    else
    end
    EndFrame()
  until MidCutscene1Ended == true
  if MidCutscene1Skipped == true then
    ExitVehicle(Troop.AIcontrolledgrunt1, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt2, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt3, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt4, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt5, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt6, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt7, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt8, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt9, constant.ID_NONE)
    ExitVehicle(Troop.AIcontrolledgrunt10, constant.ID_NONE)
    Teleport(Troop.AIcontrolledgrunt1, -809.1, -105.8, 90, 5)
    Teleport(Troop.AIcontrolledgrunt2, -809.1, -105.8, 90, 5)
    Teleport(Troop.AIcontrolledgrunt3, -809.1, -105.8, 90, 5)
    Teleport(Troop.AIcontrolledgrunt4, -809.1, -105.8, 90, 5)
    Teleport(Troop.AIcontrolledgrunt5, -809.1, -105.8, 90, 5)
    Teleport(Troop.AIcontrolledgrunt6, -805.4, -123.9, 90, 5)
    Teleport(Troop.AIcontrolledgrunt7, -805.4, -123.9, 90, 5)
    Teleport(Troop.AIcontrolledgrunt8, -805.4, -123.9, 90, 5)
    Teleport(Troop.AIcontrolledgrunt9, -805.4, -123.9, 90, 5)
    Teleport(Troop.AIcontrolledgrunt10, -805.4, -123.9, 90, 5)
    GoToArea(Air_Vehicle.AItransport1, 830, -800, 0, constant.ORDER_FORCED)
    GoToArea(Air_Vehicle.AItransport2, 830, -800, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  Spawn(Air_Vehicle.AIbomber1)
  Spawn(Air_Vehicle.AIbomber2)
  Teleport(Air_Vehicle.AIbomber1, -951.5, 63.3, 45, 10)
  Teleport(Air_Vehicle.AIbomber2, -1011, 68.3, 45, 10)
  EndIntro()
  PauseTimerActive = 0
  EndFrame()
  AddToGroup(Unit_Group.AIarmy, Air_Vehicle.AIbomber1)
  AddToGroup(Unit_Group.AIarmy, Air_Vehicle.AIbomber2)
  ForceUnitTransfer(constant.PLAYER_ONE, Air_Vehicle.AIbomber1, true)
  EndFrame()
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Air_Vehicle.AIbomber2, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  Despawn(Troop.dummy)
  SetCamera(Camera.playercam)
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  MissionFlowPart2started = true
  FollowWaypoint(Unit_Group.AIGrunts, Waypoint.AIcontrolledGruntsWP, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  PhoneMessage(113, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until IsDead(Water_Vehicle.SEdreadnaught)
  dreadnaughtdead = 1
end
