function RAT_Gameflow(owner)
  WesternFrontier = FriendlyArmy
  Tundra = FriendlyArmy
  AngloIsles = FriendlyArmy
  Xylvania = EnemyArmy
  MinLevelTime = 660
  MaxLevelTime = 1320
  TechniqueObjectives = 2
  TechniqueWeighting = 20
  local timer = 0
  local loop = 0
  local MidBattlestationCutsceneDone = 0
  local MidWayDone = 0
  StartIntro()
  FreezePlayer()
  WaitFor(1)
  SetObjectiveData(Objective_Marker.Gulag_East_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Gulag_East_S_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  Despawn(Ground_Vehicle.X_Heavy_Tank_3)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      ClearMessageQueue()
      DebugOut("cutscene skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
    end
    EndFrame()
  end
  SetObjectiveData(Objective_Marker.Gulag_East_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Gulag_East_S_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  Spawn(Ground_Vehicle.X_Heavy_Tank_3)
  Despawn(Troop.Entity550038880)
  Despawn(Troop.Entity550038881)
  Despawn(Ground_Vehicle.CutsceneTank)
  Despawn(Air_Vehicle.X_Fighter_2)
  Despawn(Air_Vehicle.X_Fighter_3)
  Teleport(Troop.Tmissile01, -296.824, -250.979, 0, 2)
  Teleport(Troop.Tmissile02, -284.78, -255.333, 0, 2)
  Teleport(Troop.Tmissile03, -304.1, -260.691, 0, 2)
  Kill(cutkiller)
  StoreSummaryMessage(1, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  StoreSummaryMessage(20, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  StoreSummaryMessage(2, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  StoreSummaryMessage(3, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Prison_Ubel_Happy)
  StoreSummaryMessage(5, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  StoreSummaryMessage(21, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  StoreSummaryMessage(7, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  StartScoringTimer()
  SetCamera(Camera.Player_Camera)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  ResetCommandBar()
  DebugOut("player one is now unfrozen")
  UnfreezePlayer(constant.PLAYER_ONE)
  PhoneMessageWithObjective(8, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  DebugOut("Mission End checks now active")
  cutscene = 0
  wave = 6
  while missionend == 0 do
    if IsInArea(GetPlayerUnit(), Map_Zone.BattlestationGunship) and MidBattlestationCutsceneDone == 0 then
      MidBattlestationCutsceneDone = 1
      CutsceneMidBattlestationStart = 1
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.GE_Middle) and MidWayDone == 0 then
      MidWayDone = 1
      SetObjectiveData(Objective.MidWay, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.MidWay, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.MidWay, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Drill, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Drill, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      PhoneMessage(71, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
    end
    if missioncomplete == 1 then
      break
    elseif IsDead(Ground_Vehicle.T_Battlestation) then
      DebugOut("the player has lost the Tundran Battlestation")
      missionend = 1
      Kill(scriptGulagEastCamp)
      Kill(scriptGulagEastCamp1P)
      Kill(scriptGulagEastCamp2S)
      Kill(scriptGulagEastDefences)
      Kill(scriptGulagWestCampS)
      FreezePlayer(constant.PLAYER_ONE)
      WaitFor(0.5)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(77, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      FreezePlayer(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(189)
    elseif AllPlayerUnitsDead(0) then
      DebugOut("the player has lost all of their units")
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(76, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(131)
    elseif IsDead(Building.Vlad) then
      missionend = 1
      if 5 > GetHealthPercent(Ground_Vehicle.T_Battlestation) then
        SetHealthPercent(Ground_Vehicle.T_Battlestation, 5)
      end
      FreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_TUNDRAN, true)
      StopScoringTimer()
      Teleport(Building.ExplosionCamera01, GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 0, 10)
      Kill(Building.ExplosionCamera01)
      Kill(Building.Gun01)
      Kill(Building.Gun02)
      Kill(Building.Gun03)
      Kill(Building.Gun04)
      Spawn(Building.EndSmoke04)
      Kill(Building.Explosion15)
      WaitFor(0.8)
      WaitFor(0.35)
      WaitFor(0.25)
      Teleport(Building.ExplosionCamera03, GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 0, 10)
      Kill(Building.ExplosionCamera03)
      WaitFor(0.5)
      WaitFor(0.5)
      Kill(Building.EndSmoke04)
      WaitFor(0.25)
      WaitFor(0.35)
      CutsceneEndStart = 1
      break
    else
      EndFrame()
    end
  end
end
