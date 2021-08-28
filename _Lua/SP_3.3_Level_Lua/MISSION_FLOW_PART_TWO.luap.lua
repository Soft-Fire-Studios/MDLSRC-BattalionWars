function MISSION_FLOW_PART_TWO(owner)
  local missionend = false
  local TroopTimer1Set = false
  local TroopTimer2Set = false
  repeat
    EndFrame()
  until radardestroyed == 1
  AttackTarget(Ground_Vehicle.SEartillery1, Building.ArtilleryTarget, constant.ORDER_FORCED)
  AttackTarget(Ground_Vehicle.SEartillery2, Building.ArtilleryTarget, constant.ORDER_FORCED)
  WaitFor(0.5)
  AttackTarget(Ground_Vehicle.SEartillery3, Building.ArtilleryTarget, constant.ORDER_FORCED)
  WaitFor(0.5)
  AttackTarget(Ground_Vehicle.SEartillery4, Building.ArtilleryTarget, constant.ORDER_FORCED)
  WaitFor(0.5)
  AttackTarget(Ground_Vehicle.SEartillery5, Building.ArtilleryTarget, constant.ORDER_FORCED)
  WaitFor(0.5)
  AttackTarget(Ground_Vehicle.SEartillery6, Building.ArtilleryTarget, constant.ORDER_FORCED)
  ArtilleryOrdered = true
  repeat
    EndFrame()
  until MissionFlowPart2started == true
  repeat
    if TroopOrder1 == false and TroopTimer1Set == false and (IsInArea(Troop.AIcontrolledgrunt1, Map_Zone.TroopsReachedBridge) or IsInArea(Troop.AIcontrolledgrunt2, Map_Zone.TroopsReachedBridge) or IsInArea(Troop.AIcontrolledgrunt3, Map_Zone.TroopsReachedBridge) or IsInArea(Troop.AIcontrolledgrunt4, Map_Zone.TroopsReachedBridge) or IsInArea(Troop.AIcontrolledgrunt5, Map_Zone.TroopsReachedBridge) or IsInArea(Troop.AIcontrolledgrunt6, Map_Zone.TroopsReachedBridge) or IsInArea(Troop.AIcontrolledgrunt7, Map_Zone.TroopsReachedBridge) or IsInArea(Troop.AIcontrolledgrunt8, Map_Zone.TroopsReachedBridge) or IsInArea(Troop.AIcontrolledgrunt9, Map_Zone.TroopsReachedBridge) or IsInArea(Troop.AIcontrolledgrunt10, Map_Zone.TroopsReachedBridge)) then
      SetTimer(17)
      TroopTimer1Set = true
    end
    EndFrame()
    if TroopTimer1Set == true and TroopOrder1 == false and 1 > GetTimeLeft() then
      PhoneMessage(114, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      FollowWaypoint(Unit_Group.AIGrunts, Waypoint.AIcontrolledGruntsWP2, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SolarTankArmyOrdered = true
      TroopOrder1 = true
      EndFrame()
      if TanksDead == false then
        PhoneMessage(36, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        PhoneMessageWithObjective(37, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
    end
    EndFrame()
    if ArtilleryDead == true and TroopOrder1 == false then
      ArtilleryDeadMessage = true
      TroopTimer1Set = true
      PhoneMessageWithObjective(35, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      FollowWaypoint(Unit_Group.AIGrunts, Waypoint.AIcontrolledGruntsWP2, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
      SetObjectiveData(Objective.SEtanks0, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SolarTankArmyOrdered = true
      TroopOrder1 = true
      EndFrame()
      if TanksDead == false then
        PhoneMessage(36, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        PhoneMessageWithObjective(37, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
    end
    EndFrame()
    if TroopOrder2 == false and TroopTimer2Set == false and (IsInArea(Troop.AIcontrolledgrunt1, Map_Zone.TroopsReachedTanks) or IsInArea(Troop.AIcontrolledgrunt2, Map_Zone.TroopsReachedTanks) or IsInArea(Troop.AIcontrolledgrunt3, Map_Zone.TroopsReachedTanks) or IsInArea(Troop.AIcontrolledgrunt4, Map_Zone.TroopsReachedTanks) or IsInArea(Troop.AIcontrolledgrunt5, Map_Zone.TroopsReachedTanks) or IsInArea(Troop.AIcontrolledgrunt6, Map_Zone.TroopsReachedTanks) or IsInArea(Troop.AIcontrolledgrunt7, Map_Zone.TroopsReachedTanks) or IsInArea(Troop.AIcontrolledgrunt8, Map_Zone.TroopsReachedTanks) or IsInArea(Troop.AIcontrolledgrunt9, Map_Zone.TroopsReachedTanks) or IsInArea(Troop.AIcontrolledgrunt10, Map_Zone.TroopsReachedTanks)) then
      SetTimer(12)
      TroopTimer2Set = true
    end
    EndFrame()
    if TroopTimer2Set == true and TroopOrder2 == false and 1 > GetTimeLeft() then
      PhoneMessage(115, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      FollowWaypoint(Unit_Group.AIGrunts, Waypoint.AIcontrolledGruntsWP3, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
      TroopOrder2 = true
      BattleshipOrder1 = true
      EndFrame()
      if battleshipsdead == false then
        PhoneMessageWithObjective(118, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
    end
    EndFrame()
    if TanksDead == true and TroopOrder2 == false then
      TanksDeadMessage = true
      PhoneMessageWithObjective(116, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      FollowWaypoint(Unit_Group.AIGrunts, Waypoint.AIcontrolledGruntsWP3, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
      TroopOrder2 = true
      BattleshipOrder1 = true
      EndFrame()
      if battleshipsdead == false then
        PhoneMessageWithObjective(125, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
    end
    EndFrame()
    if CutsceneStatueTriggered == false and numgruntsdead < 10 and 0 < NumItemsInArea(Map_Zone.StatueArea, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_ANGLO), 1) then
      SquadArrived = true
      Kill(KillGruntScript)
      SetObjectiveData(Objective_Marker.Grunt1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.AIGrunt, constant.OBJECTIVE_DATA_STATE, 1)
      DreadnoughtTime = true
    elseif CutsceneStatueTriggered == false and 0 < GetGroupHealth(Unit_Group.AIGrunts) and TanksDead == true and battleshipsdead == true and ArtilleryDead == true then
      BattleshipsDeadMessage = true
      Kill(KillGruntScript)
      SetObjectiveData(Objective_Marker.Grunt1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Grunt10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt6, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt7, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt8, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt9, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AIGrunt, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.AIGrunt, constant.OBJECTIVE_DATA_STATE, 1)
      DreadnoughtTime = true
    end
    EndFrame()
    if DreadnoughtTime == true then
      SetInvulnerable(flag.TYPE_ANGLO, 1)
      FreezePlayer(constant.PLAYER_ONE)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      CutsceneStatueTriggered = true
      WaitFor(1)
      Spawn(Building.SolarNavalProject)
      repeat
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          Kill(midcutscene2)
          ClearMessageQueue()
          DebugOut("cutscene skipped")
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          StoreSummaryMessage(constant.PLAYER_ONE, 41, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
          StoreSummaryMessage(constant.PLAYER_ONE, 42, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Sad)
          MidCutscene2Ended = true
          EndFrame()
        else
        end
        EndFrame()
      until MidCutscene2Ended == true
      EndIntro()
      PauseTimerActive = 0
      SetObjectiveData(Objective_Marker.destroydreadnaught, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.destroydreadnaught, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetCamera(Camera.playercam)
      EndFrame()
      Spawn(Water_Vehicle.SEdreadnaught)
      Teleport(Water_Vehicle.SEdreadnaught, 500, 190, 270, 5)
      GoToArea(Water_Vehicle.SEdreadnaught, 390, 190, constant.ORDER_FORCED)
      Despawn(Building.SolarNavalProject)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_ANGLO, 0)
    end
    EndFrame()
  until MidCutscene2Ended == true
  PhoneMessageWithObjective(43, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  repeat
    EndFrame()
    WaitFor(0.3)
  until GetHealthPercent(Building.Statue) <= 50
  PhoneMessage(123, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
    WaitFor(0.3)
  until GetHealthPercent(Building.Statue) <= 25
  PhoneMessage(124, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
end
