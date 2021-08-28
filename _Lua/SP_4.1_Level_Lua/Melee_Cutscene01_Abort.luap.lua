function Melee_Cutscene01_Abort(owner)
  Despawn(Ground_Vehicle.IL_Battlestation01)
  Despawn(Air_Vehicle.IL_Gunship01)
  Despawn(Troop.Cutscene01_SE_Mortar01)
  Despawn(Troop.Cutscene01_SE_Mortar02)
  Despawn(Troop.Cutscene01_SE_Mortar03)
  Despawn(Troop.SE_Gunship01_Pilot01)
  Despawn(Troop.SE_Gunship02_Pilot01)
  Despawn(Troop.SE_Gunship03_Pilot01)
  Despawn(Troop.SE_Gunship04_Pilot01)
  Despawn(Troop.SE_Gunship05_Pilot01)
  Despawn(Troop.SE_Gunship06_Pilot01)
  Despawn(Troop.SE_Gunship07_Pilot01)
  Despawn(Troop.SE_Gunship08_Pilot01)
  Despawn(Troop.SE_Gunship09_Pilot01)
  Despawn(Troop.SE_Gunship10_Pilot01)
  local TimeCheck = 0
  local AssaultTransport01Orders = 0
  local AssaultTransportLightTank01Orders = 0
  local AssaultTransport02Orders = 0
  local BattlestationHealth = 0
  SetDistortionEffect(false)
  StartIntro()
  FreezePlayer()
  WaitFor(1)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(cutkiller)
      DebugOut("cutscene skipped")
      cutscene = 1
    end
    EndFrame()
  end
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetObjectiveData(Objective.IL_Battlestation_Defend, constant.OBJECTIVE_DATA_VISIBLE, 1)
  StoreSummaryMessage(5, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  StoreSummaryMessage(6, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Prison_Ubel_Happy)
  StoreSummaryMessage(7, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  StoreSummaryMessage(8, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  StoreSummaryMessage(9, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  Despawn(Troop.Cutscene01_SE_Mortar01)
  Despawn(Troop.Cutscene01_SE_Mortar02)
  Despawn(Troop.Cutscene01_SE_Mortar03)
  Spawn(Air_Vehicle.IL_Gunship01)
  SetDistortionEffect(true)
  SetViewDistanceAdjustment(-1, 10)
  SetWaterRenderEnable(true)
  AddToGroup(Unit_Group.Player_Army, Air_Vehicle.IL_Gunship01)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Grunt01)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Grunt02)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Grunt03)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Grunt04)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Grunt05)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Grunt06)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_AntiAir05)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_AntiAir06)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Chain01)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Chain02)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Chain03)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Chain04)
  AddToGroup(Unit_Group.Player_Army, Troop.IL_Chain05)
  SetCamera(Camera.Player_Camera)
  EndFrame()
  ResetCommandBar()
  EndIntro()
  SepiaFade = true
  WaitFor(1)
  PlayEffect(Scripted_Effect.SepiaFade, 3, 0, 0, 0)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  DebugOut("player one is now unfrozen")
  UnfreezePlayer(constant.PLAYER_ONE)
  StartScoringTimer()
  ResetHealthAndScoreTotals()
  ReadyForSEAssault = 1
  PhoneMessageWithObjective(4, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  repeat
    EndFrame()
  until NumItemsInArea(Map_Zone.Start, flag.TYPE_UNDERWORLD, 1) ~= 14
  ClearMessageQueue(constant.PLAYER_ONE)
  StoreSummaryMessage(constant.PLAYER_ONE, 4, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
  SetObjectiveData(Objective.SE_Assault, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.IL_Battlestation_Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  PhoneMessage(12, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
  PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  ArrivedAtBattlestation = 1
  AssaultTransport01 = 1
  TimeCheck = GetTime()
  repeat
    EndFrame()
  until AssaultTransport01Landed == 1 and GetTime() > TimeCheck + 45 or AssaultTransport01ReadyToGo == 1 and IsDead(Troop.SE_Assault_Chain01) and IsDead(Troop.SE_Assault_Chain02) and IsDead(Troop.SE_Assault_Chain03) and IsDead(Troop.SE_Assault_Chain04) and IsDead(Troop.SE_Assault_Grunt01) and IsDead(Troop.SE_Assault_Grunt02) and IsDead(Troop.SE_Assault_Grunt03) and IsDead(Troop.SE_Assault_Grunt04) and IsDead(Troop.SE_Assault_Grunt05) and IsDead(Troop.SE_Assault_Grunt06)
  TimeCheck = GetTime()
  if IsDead(Air_Vehicle.SE_Gunship01) == false then
    Spawn(Air_Vehicle.SE_Gunship01)
    Spawn(Troop.SE_Gunship01_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship01_Pilot01, Air_Vehicle.SE_Gunship01, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship01) == 1
    GoToArea(Air_Vehicle.SE_Gunship01, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  if IsDead(Air_Vehicle.SE_Gunship02) == false then
    Spawn(Air_Vehicle.SE_Gunship02)
    Spawn(Troop.SE_Gunship02_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship02_Pilot01, Air_Vehicle.SE_Gunship02, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship02) == 1
    GoToArea(Air_Vehicle.SE_Gunship02, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  if IsDead(Air_Vehicle.SE_Gunship03) == false then
    Spawn(Air_Vehicle.SE_Gunship03)
    Spawn(Troop.SE_Gunship03_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship03_Pilot01, Air_Vehicle.SE_Gunship03, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship03) == 1
    GoToArea(Air_Vehicle.SE_Gunship03, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  if IsDead(Air_Vehicle.SE_Gunship04) == false then
    Spawn(Air_Vehicle.SE_Gunship04)
    Spawn(Troop.SE_Gunship04_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship04_Pilot01, Air_Vehicle.SE_Gunship04, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship04) == 1
    GoToArea(Air_Vehicle.SE_Gunship04, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  if IsDead(Air_Vehicle.SE_Gunship05) == false then
    Spawn(Air_Vehicle.SE_Gunship05)
    Spawn(Troop.SE_Gunship05_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship05_Pilot01, Air_Vehicle.SE_Gunship05, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship05) == 1
    GoToArea(Air_Vehicle.SE_Gunship05, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
  until (IsInArea(Air_Vehicle.SE_Gunship01, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship01)) and (IsInArea(Air_Vehicle.SE_Gunship02, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship02)) and (IsInArea(Air_Vehicle.SE_Gunship03, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship03)) and (IsInArea(Air_Vehicle.SE_Gunship04, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship04)) and (IsInArea(Air_Vehicle.SE_Gunship05, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship05))
  if IsDead(Air_Vehicle.SE_Gunship01) == false then
    AttackTarget(Air_Vehicle.SE_Gunship01, Building.IL_Battlestation01, constant.ORDER_NORMAL)
  end
  if IsDead(Air_Vehicle.SE_Gunship02) == false then
    GoToArea(Air_Vehicle.SE_Gunship02, GetObjectXPosition(Waypoint.SE_Gunship_Gather), GetObjectZPosition(Waypoint.SE_Gunship_Gather), 45, 0, constant.ORDER_NORMAL)
  end
  if IsDead(Air_Vehicle.SE_Gunship03) == false then
    GoToArea(Air_Vehicle.SE_Gunship03, GetObjectXPosition(Waypoint.SE_Gunship_Gather), GetObjectZPosition(Waypoint.SE_Gunship_Gather), 45, 0, constant.ORDER_NORMAL)
  end
  if IsDead(Air_Vehicle.SE_Gunship04) == false then
    GoToArea(Air_Vehicle.SE_Gunship04, GetObjectXPosition(Waypoint.SE_Gunship_Gather), GetObjectZPosition(Waypoint.SE_Gunship_Gather), 45, 0, constant.ORDER_NORMAL)
  end
  if IsDead(Air_Vehicle.SE_Gunship05) == false then
    GoToArea(Air_Vehicle.SE_Gunship05, GetObjectXPosition(Waypoint.SE_Gunship_Gather), GetObjectZPosition(Waypoint.SE_Gunship_Gather), 45, 0, constant.ORDER_NORMAL)
  end
  repeat
    EndFrame()
  until GetTime() > TimeCheck + 20 or IsDead(Air_Vehicle.SE_Gunship01) and IsDead(Air_Vehicle.SE_Gunship02) and IsDead(Air_Vehicle.SE_Gunship03) and IsDead(Air_Vehicle.SE_Gunship04) and IsDead(Air_Vehicle.SE_Gunship05)
  AssaultTransportLightTank01 = 1
  TimeCheck = GetTime()
  repeat
    EndFrame()
  until AssaultTransportLightTank01Landed == 1 and GetTime() > TimeCheck + 10 or AssaultTransportLightTank01ReadyToGo == 1 and IsDead(Ground_Vehicle.SE_Assault_LightTank01) and IsDead(Ground_Vehicle.SE_Assault_LightTank02)
  AssaultTransport02 = 1
  TimeCheck = GetTime()
  repeat
    EndFrame()
  until AssaultTransport02Landed == 1 and GetTime() > TimeCheck + 45 or AssaultTransport02ReadyToGo == 1 and IsDead(Troop.SE_Assault_AntiArmour01) and IsDead(Troop.SE_Assault_AntiArmour02) and IsDead(Troop.SE_Assault_AntiArmour03) and IsDead(Troop.SE_Assault_AntiArmour04) and IsDead(Troop.SE_Assault_Grunt07) and IsDead(Troop.SE_Assault_Grunt08) and IsDead(Troop.SE_Assault_Grunt09) and IsDead(Troop.SE_Assault_Grunt10)
  TimeCheck = GetTime()
  if IsDead(Air_Vehicle.SE_Gunship06) == false then
    Spawn(Air_Vehicle.SE_Gunship06)
    Spawn(Troop.SE_Gunship06_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship06_Pilot01, Air_Vehicle.SE_Gunship06, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship06) == 1
    GoToArea(Air_Vehicle.SE_Gunship06, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  if IsDead(Air_Vehicle.SE_Gunship07) == false then
    Spawn(Air_Vehicle.SE_Gunship07)
    Spawn(Troop.SE_Gunship07_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship07_Pilot01, Air_Vehicle.SE_Gunship07, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship07) == 1
    GoToArea(Air_Vehicle.SE_Gunship07, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  if IsDead(Air_Vehicle.SE_Gunship08) == false then
    Spawn(Air_Vehicle.SE_Gunship08)
    Spawn(Troop.SE_Gunship08_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship08_Pilot01, Air_Vehicle.SE_Gunship08, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship08) == 1
    GoToArea(Air_Vehicle.SE_Gunship08, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  if IsDead(Air_Vehicle.SE_Gunship09) == false then
    Spawn(Air_Vehicle.SE_Gunship09)
    Spawn(Troop.SE_Gunship09_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship09_Pilot01, Air_Vehicle.SE_Gunship09, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship09) == 1
    GoToArea(Air_Vehicle.SE_Gunship09, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  if IsDead(Air_Vehicle.SE_Gunship10) == false then
    Spawn(Air_Vehicle.SE_Gunship10)
    Spawn(Troop.SE_Gunship10_Pilot01)
    repeat
      PutUnitInVehicle(Troop.SE_Gunship10_Pilot01, Air_Vehicle.SE_Gunship10, 0)
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.SE_Gunship10) == 1
    GoToArea(Air_Vehicle.SE_Gunship10, GetObjectXPosition(Waypoint.SE_Gunship_Prepare), GetObjectZPosition(Waypoint.SE_Gunship_Prepare), 15, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
  until (IsInArea(Air_Vehicle.SE_Gunship06, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship06)) and (IsInArea(Air_Vehicle.SE_Gunship07, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship07)) and (IsInArea(Air_Vehicle.SE_Gunship08, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship08)) and (IsInArea(Air_Vehicle.SE_Gunship09, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship09)) and (IsInArea(Air_Vehicle.SE_Gunship10, Map_Zone.SE_Gunship_Prepare) or IsDead(Air_Vehicle.SE_Gunship10))
  if IsDead(Air_Vehicle.SE_Gunship06) == false then
    AttackTarget(Air_Vehicle.SE_Gunship06, Building.IL_Battlestation01, constant.ORDER_NORMAL)
  end
  if IsDead(Air_Vehicle.SE_Gunship07) == false then
    AttackTarget(Air_Vehicle.SE_Gunship07, Building.IL_Battlestation01, constant.ORDER_NORMAL)
  end
  if IsDead(Air_Vehicle.SE_Gunship08) == false then
    GoToArea(Air_Vehicle.SE_Gunship08, GetObjectXPosition(Waypoint.SE_Gunship_Gather), GetObjectZPosition(Waypoint.SE_Gunship_Gather), 45, 0, constant.ORDER_NORMAL)
  end
  if IsDead(Air_Vehicle.SE_Gunship09) == false then
    GoToArea(Air_Vehicle.SE_Gunship09, GetObjectXPosition(Waypoint.SE_Gunship_Gather), GetObjectZPosition(Waypoint.SE_Gunship_Gather), 45, 0, constant.ORDER_NORMAL)
  end
  if IsDead(Air_Vehicle.SE_Gunship10) == false then
    GoToArea(Air_Vehicle.SE_Gunship10, GetObjectXPosition(Waypoint.SE_Gunship_Gather), GetObjectZPosition(Waypoint.SE_Gunship_Gather), 45, 0, constant.ORDER_NORMAL)
  end
  repeat
    EndFrame()
  until GetTime() > TimeCheck + 20 or IsDead(Air_Vehicle.SE_Gunship06) and IsDead(Air_Vehicle.SE_Gunship07) and IsDead(Air_Vehicle.SE_Gunship08) and IsDead(Air_Vehicle.SE_Gunship09) and IsDead(Air_Vehicle.SE_Gunship10)
  TimeCheck = GetTime()
  ArtilleryAdvance = 1
  repeat
    EndFrame()
  until GetTime() > TimeCheck + 180 or IsDead(Troop.SE_Assault_Chain01) and IsDead(Troop.SE_Assault_Chain02) and IsDead(Troop.SE_Assault_Chain03) and IsDead(Troop.SE_Assault_Chain04) and IsDead(Troop.SE_Assault_Grunt01) and IsDead(Troop.SE_Assault_Grunt02) and IsDead(Troop.SE_Assault_Grunt03) and IsDead(Troop.SE_Assault_Grunt04) and IsDead(Troop.SE_Assault_Grunt05) and IsDead(Troop.SE_Assault_Grunt06) and IsDead(Air_Vehicle.SE_Gunship01) and IsDead(Air_Vehicle.SE_Gunship02) and IsDead(Air_Vehicle.SE_Gunship03) and IsDead(Air_Vehicle.SE_Gunship04) and IsDead(Air_Vehicle.SE_Gunship05) and IsDead(Ground_Vehicle.SE_Assault_LightTank01) and IsDead(Ground_Vehicle.SE_Assault_LightTank02) and IsDead(Troop.SE_Assault_AntiArmour01) and IsDead(Troop.SE_Assault_AntiArmour02) and IsDead(Troop.SE_Assault_AntiArmour03) and IsDead(Troop.SE_Assault_AntiArmour04) and IsDead(Troop.SE_Assault_Grunt07) and IsDead(Troop.SE_Assault_Grunt08) and IsDead(Troop.SE_Assault_Grunt09) and IsDead(Troop.SE_Assault_Grunt10) and IsDead(Air_Vehicle.SE_Gunship06) and IsDead(Air_Vehicle.SE_Gunship07) and IsDead(Air_Vehicle.SE_Gunship08) and IsDead(Air_Vehicle.SE_Gunship09) and IsDead(Air_Vehicle.SE_Gunship10) and IsDead(Ground_Vehicle.SE_Assault_Artillery01) and IsDead(Ground_Vehicle.SE_Assault_Artillery02)
  SetUnitInvulnerable(Building.IL_Battlestation01, true)
  SetObjectiveData(Objective.SE_Assault, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.IL_Battlestation_Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  if GetTime() > TimeCheck + 180 then
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(19, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
    repeat
      EndFrame()
    until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  end
  WaitFor(2)
  BattlestationDefenceComplete = 1
  BattlestationHealth = GetHealthPercent(Building.IL_Battlestation01)
  DebugOut("Assault Completed")
  FreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 1
  ClearMessageQueue()
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StartOutro()
  Kill(Destroyable_Object.IL_Sandbag01)
  Kill(Destroyable_Object.IL_Sandbag02)
  Kill(Destroyable_Object.IL_Sandbag03)
  Spawn(Troop.CutsceneDummy)
  SetUnitInvulnerable(Troop.CutsceneDummy, true)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.CutsceneDummy, true, true)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == Troop.CutsceneDummy
  if NumPassengersInUnit(Building.IL_RPGTower01) == 1 then
    ExitVehicle(GetUnitInSeat(Building.IL_RPGTower01, 0), Building.IL_RPGTower01)
  end
  if NumPassengersInUnit(Building.IL_RPGTower02) == 1 then
    ExitVehicle(GetUnitInSeat(Building.IL_RPGTower02, 0), Building.IL_RPGTower02)
  end
  if NumPassengersInUnit(Building.IL_AATower01) == 1 then
    ExitVehicle(GetUnitInSeat(Building.IL_AATower01, 0), Building.IL_AATower01)
  end
  if NumPassengersInUnit(Building.IL_AATower02) == 1 then
    ExitVehicle(GetUnitInSeat(Building.IL_AATower02, 0), Building.IL_AATower02)
  end
  repeat
    EndFrame()
  until NumPassengersInUnit(Building.IL_RPGTower01) == 0 and NumPassengersInUnit(Building.IL_RPGTower02) == 0 and NumPassengersInUnit(Building.IL_AATower01) == 0 and NumPassengersInUnit(Building.IL_AATower02) == 0
  if IsDead(Troop.IL_Chain01) == false then
    Teleport(Troop.IL_Chain01, GetObjectXPosition(Waypoint.IL_Chain01), GetObjectZPosition(Waypoint.IL_Chain01), 0, 0)
    StopAndGuard(Troop.IL_Chain01)
  end
  if IsDead(Troop.IL_Chain02) == false then
    Teleport(Troop.IL_Chain02, GetObjectXPosition(Waypoint.IL_Chain02), GetObjectZPosition(Waypoint.IL_Chain02), 0, 0)
    StopAndGuard(Troop.IL_Chain02)
  end
  if IsDead(Troop.IL_Chain03) == false then
    Teleport(Troop.IL_Chain03, GetObjectXPosition(Waypoint.IL_Chain03), GetObjectZPosition(Waypoint.IL_Chain03), 0, 0)
    StopAndGuard(Troop.IL_Chain03)
  end
  if IsDead(Troop.IL_Chain04) == false then
    Teleport(Troop.IL_Chain04, GetObjectXPosition(Waypoint.IL_Chain04), GetObjectZPosition(Waypoint.IL_Chain04), 0, 0)
    StopAndGuard(Troop.IL_Chain04)
  end
  if IsDead(Troop.IL_Chain05) == false then
    Teleport(Troop.IL_Chain05, GetObjectXPosition(Waypoint.IL_Chain05), GetObjectZPosition(Waypoint.IL_Chain05), 0, 0)
    StopAndGuard(Troop.IL_Chain05)
  end
  if IsDead(Troop.IL_Grunt01) == false then
    Teleport(Troop.IL_Grunt01, GetObjectXPosition(Waypoint.IL_Grunt01), GetObjectZPosition(Waypoint.IL_Grunt01), 0, 0)
    StopAndGuard(Troop.IL_Grunt01)
  end
  if IsDead(Troop.IL_Grunt02) == false then
    Teleport(Troop.IL_Grunt02, GetObjectXPosition(Waypoint.IL_Grunt02), GetObjectZPosition(Waypoint.IL_Grunt02), 0, 0)
    StopAndGuard(Troop.IL_Grunt02)
  end
  if IsDead(Troop.IL_Grunt03) == false then
    Teleport(Troop.IL_Grunt03, GetObjectXPosition(Waypoint.IL_Grunt03), GetObjectZPosition(Waypoint.IL_Grunt03), 0, 0)
    StopAndGuard(Troop.IL_Grunt03)
  end
  if IsDead(Troop.IL_Grunt04) == false then
    Teleport(Troop.IL_Grunt04, GetObjectXPosition(Waypoint.IL_Grunt04), GetObjectZPosition(Waypoint.IL_Grunt04), 0, 0)
    StopAndGuard(Troop.IL_Grunt04)
  end
  if IsDead(Troop.IL_Grunt05) == false then
    Teleport(Troop.IL_Grunt04, GetObjectXPosition(Waypoint.IL_Grunt05), GetObjectZPosition(Waypoint.IL_Grunt05), 0, 0)
    StopAndGuard(Troop.IL_Grunt05)
  end
  if IsDead(Troop.IL_Grunt06) == false then
    Teleport(Troop.IL_Grunt06, GetObjectXPosition(Waypoint.IL_Grunt06), GetObjectZPosition(Waypoint.IL_Grunt06), 0, 0)
    StopAndGuard(Troop.IL_Grunt06)
  end
  if IsDead(Troop.IL_AntiAir05) == false then
    Teleport(Troop.IL_AntiAir05, GetObjectXPosition(Waypoint.IL_AntiAir05), GetObjectZPosition(Waypoint.IL_AntiAir05), 0, 0)
    StopAndGuard(Troop.IL_AntiAir05)
  end
  if IsDead(Troop.IL_AntiAir06) == false then
    Teleport(Troop.IL_AntiAir06, GetObjectXPosition(Waypoint.IL_AntiAir06), GetObjectZPosition(Waypoint.IL_AntiAir06), 0, 0)
    StopAndGuard(Troop.IL_AntiAir06)
  end
  if IsDead(Air_Vehicle.IL_Gunship01) == false then
    Teleport(Air_Vehicle.IL_Gunship01, GetObjectXPosition(Waypoint.IL_Gunship01), GetObjectZPosition(Waypoint.IL_Gunship01), 0, 0)
    StopAndGuard(Air_Vehicle.IL_Gunship01)
  end
  ReadyForCutscene02 = 1
  repeat
    EndFrame()
  until Cutscene02Complete == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 0)
  Kill(Cutscene02Dead)
  Despawn(Building.IL_Battlestation01)
  DebugOut("IL Battlestation01 building despawned")
  Spawn(Ground_Vehicle.IL_Battlestation01)
  DebugOut("IL Battlestation01 vehicle spawned")
  AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.IL_Battlestation01)
  SetHealthPercent(Ground_Vehicle.IL_Battlestation01, BattlestationHealth)
  Teleport(Ground_Vehicle.IL_Battlestation01, GetObjectXPosition(Waypoint.IL_Battlestation01), GetObjectZPosition(Waypoint.IL_Battlestation01), 0, 0)
  ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.IL_Battlestation01, true, true)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == Ground_Vehicle.IL_Battlestation01
  SetUnitInvulnerable(Troop.CutsceneDummy, false)
  Despawn(Troop.CutsceneDummy)
  BattlestationSwap = 1
  if NumPassengersInUnit(Building.IL_RPGTower01) == 1 then
    ExitVehicle(GetUnitInSeat(Building.IL_RPGTower01, 0), Building.IL_RPGTower01)
  end
  if NumPassengersInUnit(Building.IL_RPGTower02) == 1 then
    ExitVehicle(GetUnitInSeat(Building.IL_RPGTower02, 0), Building.IL_RPGTower02)
  end
  repeat
    EndFrame()
  until NumPassengersInUnit(Building.IL_RPGTower01) == 0 and NumPassengersInUnit(Building.IL_RPGTower02) == 0
  if IsDead(Troop.IL_Chain01) == false then
    Teleport(Troop.IL_Chain01, GetObjectXPosition(Waypoint.IL_Chain01), GetObjectZPosition(Waypoint.IL_Chain01), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Chain01, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Chain02) == false then
    Teleport(Troop.IL_Chain02, GetObjectXPosition(Waypoint.IL_Chain02), GetObjectZPosition(Waypoint.IL_Chain02), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Chain02, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Chain03) == false then
    Teleport(Troop.IL_Chain03, GetObjectXPosition(Waypoint.IL_Chain03), GetObjectZPosition(Waypoint.IL_Chain03), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Chain03, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Chain04) == false then
    Teleport(Troop.IL_Chain04, GetObjectXPosition(Waypoint.IL_Chain04), GetObjectZPosition(Waypoint.IL_Chain04), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Chain04, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Chain05) == false then
    Teleport(Troop.IL_Chain05, GetObjectXPosition(Waypoint.IL_Chain05), GetObjectZPosition(Waypoint.IL_Chain05), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Chain05, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Grunt01) == false then
    Teleport(Troop.IL_Grunt01, GetObjectXPosition(Waypoint.IL_Grunt01), GetObjectZPosition(Waypoint.IL_Grunt01), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Grunt01, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Grunt02) == false then
    Teleport(Troop.IL_Grunt02, GetObjectXPosition(Waypoint.IL_Grunt02), GetObjectZPosition(Waypoint.IL_Grunt02), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Grunt02, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Grunt03) == false then
    Teleport(Troop.IL_Grunt03, GetObjectXPosition(Waypoint.IL_Grunt03), GetObjectZPosition(Waypoint.IL_Grunt03), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Grunt03, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Grunt04) == false then
    Teleport(Troop.IL_Grunt04, GetObjectXPosition(Waypoint.IL_Grunt04), GetObjectZPosition(Waypoint.IL_Grunt04), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Grunt04, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Grunt05) == false then
    Teleport(Troop.IL_Grunt05, GetObjectXPosition(Waypoint.IL_Grunt05), GetObjectZPosition(Waypoint.IL_Grunt05), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Grunt05, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_Grunt06) == false then
    Teleport(Troop.IL_Grunt06, GetObjectXPosition(Waypoint.IL_Grunt06), GetObjectZPosition(Waypoint.IL_Grunt06), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_Grunt06, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_AntiAir05) == false then
    Teleport(Troop.IL_AntiAir05, GetObjectXPosition(Waypoint.IL_AntiAir05), GetObjectZPosition(Waypoint.IL_AntiAir05), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_AntiAir05, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Troop.IL_AntiAir06) == false then
    Teleport(Troop.IL_AntiAir06, GetObjectXPosition(Waypoint.IL_AntiAir06), GetObjectZPosition(Waypoint.IL_AntiAir06), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.IL_AntiAir06, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  if IsDead(Air_Vehicle.IL_Gunship01) == false then
    Teleport(Air_Vehicle.IL_Gunship01, GetObjectXPosition(Waypoint.IL_Gunship01), GetObjectZPosition(Waypoint.IL_Gunship01), 0, 0)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Air_Vehicle.IL_Gunship01, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
    end
  end
  Despawn(Air_Vehicle.CutsceneSEGunship03)
  Despawn(Air_Vehicle.CutsceneSEGunship04)
  Despawn(Air_Vehicle.CutsceneSEGunship05)
  Despawn(Air_Vehicle.CutsceneSEGunship06)
  Despawn(Troop.CutsceneSEGunship03Pilot)
  Despawn(Troop.CutsceneSEGunship04Pilot)
  Despawn(Troop.CutsceneSEGunship05Pilot)
  Despawn(Troop.CutsceneSEGunship06Pilot)
  Spawn(Building.SE_HeavyTank_Grounded04_HeavyTank01)
  Spawn(Building.SE_HeavyTank_Grounded04_HeavyTank02)
  Spawn(Building.SE_HeavyTank_Grounded04_HeavyTank03)
  Spawn(Building.SE_HeavyTank_Grounded04_HeavyTank04)
  Spawn(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank01)
  Spawn(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank02)
  DespawnTheLot = 1
  if SolarPanelCount == 0 then
    SetObjectiveData(Objective.SE_SolarPanels_06, constant.OBJECTIVE_DATA_VISIBLE, 1)
    SetObjectiveData(Objective_Marker.SE_Main_Base, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  end
  ClearMessageQueue()
  StoreSummaryMessage(22, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
  StoreSummaryMessage(21, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
  StoreSummaryMessage(53, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
  SetCamera(Camera.Player_Camera)
  EndFrame()
  ResetCommandBar()
  if WestCampPOWsFree == 0 then
    SetObjectiveData(Objective.SE_West_Base, constant.OBJECTIVE_DATA_VISIBLE, 1)
    SetObjectiveData(Objective_Marker.SE_West_Base, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  end
  if EastCampPOWsFree == 0 then
    SetObjectiveData(Objective.SE_East_Base, constant.OBJECTIVE_DATA_VISIBLE, 1)
    SetObjectiveData(Objective_Marker.SE_East_Base, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  end
  EndIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 0
  Cutscene02Ended = 1
  DebugOut("West Base now visible")
  PhoneMessage(20, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
  PhoneMessageWithObjective(56, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  if WestCampPOWsFree + EastCampPOWsFree ~= 2 then
    PhoneMessageWithObjective(57, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  end
end
