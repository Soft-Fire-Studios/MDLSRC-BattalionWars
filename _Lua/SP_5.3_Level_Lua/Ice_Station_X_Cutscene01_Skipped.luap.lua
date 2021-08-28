function Ice_Station_X_Cutscene01_Skipped(owner)
  local XNAntiAirTower01Dead = 0
  local XNAntiAirTower02Dead = 0
  local XNAntiAirTower03Dead = 0
  local XNAntiAirTower04Dead = 0
  local XNAntiAirTower05Dead = 0
  local XNAntiAirTower01DeadMessage = 0
  local XNAntiAirTower02DeadMessage = 0
  local XNAntiAirTower03DeadMessage = 0
  local XNAntiAirTower04DeadMessage = 0
  local XNAntiAirTower05DeadMessage = 0
  local BomberDeathWarning = 0
  AddToGroup(Unit_Group.PatrolGroup01, Troop.XN_AntiArmour04)
  AddToGroup(Unit_Group.PatrolGroup01, Troop.XN_AntiArmour05)
  AddToGroup(Unit_Group.PatrolGroup01, Troop.XN_AntiArmour06)
  AddToGroup(Unit_Group.PatrolGroup01, Troop.XN_Grunt04)
  AddToGroup(Unit_Group.PatrolGroup01, Troop.XN_Grunt05)
  AddToGroup(Unit_Group.PatrolGroup01, Troop.XN_Grunt06)
  AddToGroup(Unit_Group.PatrolGroup02, Troop.XN_AntiArmour01)
  AddToGroup(Unit_Group.PatrolGroup02, Troop.XN_AntiArmour02)
  AddToGroup(Unit_Group.PatrolGroup02, Troop.XN_AntiArmour03)
  AddToGroup(Unit_Group.PatrolGroup02, Troop.XN_Grunt01)
  AddToGroup(Unit_Group.PatrolGroup02, Troop.XN_Grunt02)
  AddToGroup(Unit_Group.PatrolGroup02, Troop.XN_Grunt03)
  Despawn(Ground_Vehicle.XN_Barrier_HeavyTank01)
  Despawn(Ground_Vehicle.XN_Barrier_HeavyTank02)
  repeat
    if Cutscene01Begun == 1 and GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(Cutscene01Dead)
      Cutscene01Finished = 1
    end
    EndFrame()
  until Cutscene01Finished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StoreSummaryMessage(constant.PLAYER_ONE, 0, constant.ARMY_TUNDRAN, SpriteID.CO_T_Ghost_Gorgi_Sad)
  StoreSummaryMessage(constant.PLAYER_ONE, 1, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 2, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 3, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Prison_Ubel_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 4, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 5, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
  EndIntro()
  Spawn(Ground_Vehicle.XN_Barrier_HeavyTank01)
  Spawn(Ground_Vehicle.XN_Barrier_HeavyTank02)
  Despawn(Air_Vehicle.XN_AirTransport01_Cutscene)
  Despawn(Air_Vehicle.XN_AirTransport02_Cutscene)
  Despawn(Air_Vehicle.XN_AirTransport03_Cutscene)
  Despawn(Ground_Vehicle.XN_LightTankCutscene)
  Despawn(Ground_Vehicle.XN_AAVehicle01_Cutscene)
  Despawn(Air_Vehicle.Cutscene01_Shot03_XN_AirTransport01)
  Despawn(Air_Vehicle.Cutscene01_Shot03_XN_AirTransport02)
  Despawn(Troop.Cutscene01_Shot03_XN_AirTransport01_Pilot01)
  Despawn(Troop.Cutscene01_Shot03_XN_AirTransport02_Pilot01)
  SetActive(Building.XN_AntiAirTower01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.XN_AntiAirTower02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.XN_AntiAirTower03, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.XN_AntiAirTower04, constant.ACTIVE, constant.ADJUST_WEAPON)
  Despawn(Troop.TT_Grunt01_Cutscene)
  Teleport(Ground_Vehicle.XN_Battlestation01, GetObjectXPosition(Waypoint.XN_Battlestation01), GetObjectZPosition(Waypoint.XN_Battlestation01), 0, 5)
  Despawn(Troop.XN_Grunt03, true)
  Despawn(Troop.XN_AntiArmour02, true)
  Despawn(Troop.XN_AntiArmour03, true)
  Despawn(Troop.XN_Chain01, true)
  Despawn(Troop.XN_Chain02, true)
  Despawn(Building.XN_AntiAirTower01, true)
  Despawn(Ground_Vehicle.XN_LightTank02, true)
  Despawn(Troop.XN_Chain13, true)
  Despawn(Troop.XN_Chain14, true)
  Despawn(Troop.XN_Grunt14, true)
  Despawn(Troop.XN_Grunt15, true)
  Despawn(Troop.XN_Grunt16, true)
  Despawn(Building.XN_AntiAirTower02, true)
  Despawn(Ground_Vehicle.XN_HeavyTank04, true)
  Despawn(Troop.XN_AntiArmour10, true)
  Despawn(Troop.XN_AntiArmour11, true)
  Despawn(Troop.XN_AntiArmour12, true)
  Despawn(Troop.XN_Grunt05, true)
  Despawn(Troop.XN_Grunt06, true)
  Despawn(Troop.XN_AntiArmour05, true)
  Despawn(Building.XN_AntiAirTower03, true)
  Despawn(Ground_Vehicle.XN_LightTank01, true)
  Despawn(Troop.XN_Grunt12, true)
  Despawn(Troop.XN_Grunt13, true)
  Despawn(Troop.XN_Grunt07, true)
  Despawn(Troop.XN_Grunt08, true)
  Despawn(Troop.XN_AntiArmour07, true)
  Despawn(Troop.XN_AntiArmour08, true)
  Despawn(Troop.XN_AntiArmour09, true)
  Despawn(Building.XN_AntiAirTower04, true)
  Despawn(Ground_Vehicle.XN_HeavyTank01, true)
  Despawn(Ground_Vehicle.XN_HeavyTank06, true)
  Despawn(Troop.XN_AntiArmour17, true)
  Despawn(Troop.XN_AntiArmour18, true)
  Despawn(Troop.XN_Grunt09, true)
  Despawn(Troop.XN_Grunt11, true)
  Despawn(Building.XN_IceStation_MGTower01, true)
  Despawn(Building.XN_IceStation_MGTower02, true)
  Despawn(Troop.XN_Grunt17, true)
  Despawn(Troop.XN_Grunt18, true)
  Despawn(Troop.XN_Chain15, true)
  Despawn(Troop.XN_AntiArmour26, true)
  Despawn(Troop.XN_Grunt19, true)
  Despawn(Troop.XN_Grunt20, true)
  Despawn(Troop.XN_Chain16, true)
  Despawn(Troop.XN_AntiArmour27, true)
  Despawn(Troop.XN_Grunt21, true)
  Despawn(Troop.XN_Grunt22, true)
  Despawn(Troop.XN_Grunt23, true)
  Despawn(Troop.XN_Grunt24, true)
  Despawn(Troop.XN_Grunt25, true)
  Despawn(Troop.XN_AntiArmour28, true)
  DespawnComplete = 1
  SetCamera(Camera.Player01Cam)
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  StartScoringTimer()
  ResetHealthAndScoreTotals()
  SetInvulnerable(flag.TYPE_TUNDRAN, 0)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 0)
  repeat
    if IsDead(Building.XN_AntiAirTower01) and XNAntiAirTower01Dead == 0 then
      DebugOut("XN AntiAirTower01 is dead")
      DeadXNAntiAirTowers = DeadXNAntiAirTowers + 1
      SetObjectiveData(Objective_Marker.XN_AntiAirTower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      XNAntiAirTower01Dead = 1
    end
    EndFrame()
    if IsDead(Building.XN_AntiAirTower02) and XNAntiAirTower02Dead == 0 then
      DebugOut("XN AntiAirTower02 is dead")
      DeadXNAntiAirTowers = DeadXNAntiAirTowers + 1
      SetObjectiveData(Objective_Marker.XN_AntiAirTower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      XNAntiAirTower02Dead = 1
    end
    EndFrame()
    if IsDead(Building.XN_AntiAirTower03) and XNAntiAirTower03Dead == 0 then
      DebugOut("XN AntiAirTower03 is dead")
      DeadXNAntiAirTowers = DeadXNAntiAirTowers + 1
      SetObjectiveData(Objective_Marker.XN_AntiAirTower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      XNAntiAirTower03Dead = 1
    end
    EndFrame()
    if IsDead(Building.XN_AntiAirTower04) and XNAntiAirTower04Dead == 0 then
      DebugOut("XN AntiAirTower04is dead")
      DeadXNAntiAirTowers = DeadXNAntiAirTowers + 1
      SetObjectiveData(Objective_Marker.XN_AntiAirTower04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      XNAntiAirTower04Dead = 1
    end
    EndFrame()
    if DeadXNAntiAirTowers == 1 and XNAntiAirTower01DeadMessage == 0 then
      ClearMessageQueue()
      PhoneMessage(54, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
      SetObjectiveData(Objective.Destroy_Xylvanian_AntiAir_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Xylvanian_AntiAir_1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      XNAntiAirTower01DeadMessage = 1
    end
    EndFrame()
    if DeadXNAntiAirTowers == 2 and XNAntiAirTower02DeadMessage == 0 then
      ClearMessageQueue()
      PhoneMessage(55, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      PhoneMessage(57, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
      PhoneMessage(51, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      SetObjectiveData(Objective.Destroy_Xylvanian_AntiAir_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Xylvanian_AntiAir_2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      XNAntiAirTower02DeadMessage = 1
    end
    EndFrame()
    if DeadXNAntiAirTowers == 3 and XNAntiAirTower03DeadMessage == 0 then
      ClearMessageQueue()
      PhoneMessage(56, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      PhoneMessage(53, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
      SetObjectiveData(Objective.Destroy_Xylvanian_AntiAir_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Xylvanian_AntiAir_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      XNAntiAirTower03DeadMessage = 1
    end
    EndFrame()
  until DeadXNAntiAirTowers == 4
  DebugOut("ALL XN AntiAir Towers Destroyed")
  DebugOut("Number of DEAD XN AA Towers =", DeadXNAntiAirTowers)
  SetObjectiveData(Objective.Destroy_Xylvanian_AntiAir_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Destroy_Xylvanian_AntiAir_4, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Destroy_Xylvanian_AntiAir_4, constant.OBJECTIVE_DATA_STATE, 1)
  ClearMessageQueue()
  PhoneMessageWithObjective(17, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  Cutscene02Ready = 1
  repeat
    EndFrame()
  until Cutscene02Complete == 1
  PhoneMessageWithObjective(68, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  repeat
    if (IsDead(Air_Vehicle.AI_Bomber01) or IsDead(Air_Vehicle.AI_Bomber02)) and BomberDeathWarning == 0 then
      PhoneMessage(38, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      BomberDeathWarning = 1
    end
    EndFrame()
    if IsDead(Air_Vehicle.AI_Bomber01) and IsDead(Air_Vehicle.AI_Bomber02) then
      SetInvulnerable(flag.TYPE_TUNDRAN, 1)
      SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(37, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      FreezePlayer(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(190)
    end
    EndFrame()
  until IsDead(Building.XN_ConcreteBarricade01)
  SetObjectiveData(Objective.Destroy_ConcreteBarricade, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.XN_ConcreteBarricade, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Destroy_IceStationX, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XN_IceStationX, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
end
