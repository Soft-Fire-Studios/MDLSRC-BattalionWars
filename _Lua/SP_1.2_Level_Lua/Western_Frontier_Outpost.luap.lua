function Western_Frontier_Outpost(owner)
  WFOutpost = owner
  local GruntAttack = 0
  local TankAttack01 = 0
  local TankAttack02 = 0
  local BomberAttack = 0
  local MGNest01Gunner = 0
  local MGNest02Gunner = 0
  local mgnest01troop = 0
  local mgnest02troop = 0
  SetActive(Building.MGnest1, constant.INACTIVE)
  SetActive(Building.MGnest2, constant.INACTIVE)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.ShowBaseWaypoint03) and MidCutsceneEndedDocks == true
  Despawn(Water_Vehicle.AItransport2)
  Despawn(Water_Vehicle.AItransport3)
  Despawn(Water_Vehicle.AItransport4)
  Despawn(Water_Vehicle.AItransport5)
  SetActive(Building.MGnest1, constant.ACTIVE)
  SetActive(Building.MGnest2, constant.ACTIVE)
  SetActive(Troop.WFgrunt1, constant.ACTIVE)
  SetActive(Troop.WFgrunt2, constant.ACTIVE)
  SetActive(Troop.WFgrunt3, constant.ACTIVE)
  SetActive(Troop.WFgrunt4, constant.ACTIVE)
  SetActive(Troop.WFgrunt5, constant.ACTIVE)
  SetActive(Troop.WFgrunt6, constant.ACTIVE)
  SetActive(Troop.AIgruntA1, constant.ACTIVE)
  SetActive(Troop.AIgruntA2, constant.ACTIVE)
  SetActive(Troop.AIgruntA3, constant.ACTIVE)
  SetActive(Troop.AIgruntA4, constant.ACTIVE)
  WaitFor(4)
  GoToArea(Troop.AIgruntA1, GetObjectXPosition(Waypoint.AngloPath), GetObjectZPosition(Waypoint.AngloPath), 5, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  GoToArea(Troop.AIgruntA2, GetObjectXPosition(Waypoint.AngloPath), GetObjectZPosition(Waypoint.AngloPath), 5, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  GoToArea(Troop.AIgruntA3, GetObjectXPosition(Waypoint.AngloPath), GetObjectZPosition(Waypoint.AngloPath), 5, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  GoToArea(Troop.AIgruntA4, GetObjectXPosition(Waypoint.AngloPath), GetObjectZPosition(Waypoint.AngloPath), 5, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  WaitFor(12)
  PhoneMessage(25, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  GoToArea(Ground_Vehicle.AIlighttank3, GetObjectXPosition(Waypoint.AngloPath), GetObjectZPosition(Waypoint.AngloPath), 25, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  GoToArea(Ground_Vehicle.AIlighttank4, GetObjectXPosition(Waypoint.AngloPath), GetObjectZPosition(Waypoint.AngloPath), 25, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  WaitFor(9)
  CutsceneWFTankStart = 1
  WaitFor(3)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(CutsceneWFTank)
      DebugOut("WF Tank Cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      CutsceneWFTankEnd = 1
      EndFrame()
    else
    end
    EndFrame()
  until CutsceneWFTankEnd == 1
  Kill(CutsceneWFTank)
  ClearMessageQueue()
  StoreSummaryMessage(48, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  Teleport(Ground_Vehicle.WFlighttank1, GetObjectXPosition(Waypoint.WFLightTankPathEnd), GetObjectZPosition(Waypoint.WFLightTankPathEnd), 315, 5)
  SetCamera(Camera.player1cam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(UnfreezeDelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  PauseTimerActive = 0
  WFTankCutscenePlaying = 0
  WaitFor(4)
  Spawn(Air_Vehicle.AIbomber1)
  WaitFor(5)
  PhoneMessage(52, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until IsDead(Troop.AIgruntA1) and IsDead(Troop.AIgruntA2) and IsDead(Troop.AIgruntA3) and IsDead(Troop.AIgruntA4) and IsDead(Air_Vehicle.AIbomber1) and IsDead(Ground_Vehicle.AIlighttank3) and IsDead(Ground_Vehicle.AIlighttank4)
  FourthEncounterEnd = true
  WaitFor(0.5)
  if WFDeadStringPlayed == 0 then
    WFDeadStringPlayed = 1
    repeat
      EndFrame()
    until ReinforcementsCutscenePlaying == 0
    ClearMessageQueue()
    PhoneMessage(51, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
  end
  EndFrame()
end
