function CutScene03Skip(owner)
  local bs01 = 0
  local bs02 = 0
  local bs03 = 0
  repeat
    EndFrame()
  until vladsbigdrill == 2
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      cutscenefinished03 = 1
      DebugOut("*CutScene03Skip* - In split screen - killed cutscene 03")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.skip03 = 1
      DebugOut("*CutScene03Skip* - Player 1 Killed CutScene03")
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.skip03 = 1
      DebugOut("*CutScene03Skip* - Player 2 Killed CutScene03")
    end
    EndFrame()
  until netvariable.player1.skip03 == 1 and netvariable.player2.skip03 == 1 or cutscenefinished03 == 1
  Kill(cutscene03)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(0, 51, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(0, 43, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(1, 51, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(1, 43, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  end
  Spawn(Air_Vehicle.WFFighter01)
  Spawn(Air_Vehicle.WFFighter02)
  Spawn(Air_Vehicle.WFFighter03)
  Spawn(Air_Vehicle.WFBomber01)
  Spawn(Air_Vehicle.WFBomber02)
  Spawn(Air_Vehicle.TundranFighter01)
  Spawn(Air_Vehicle.TundranFighter02)
  Spawn(Air_Vehicle.TundranFighter03)
  Spawn(Air_Vehicle.TundranBomber01)
  Spawn(Air_Vehicle.TundranBomber02)
  repeat
    if IsReadyToRevive(Air_Vehicle.TundranFighter01) then
      ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TundranFighter01, -274, 313, 200, 50)
    end
    if IsReadyToRevive(Air_Vehicle.TundranFighter02) then
      ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TundranFighter02, -274, 313, 200, 50)
    end
    if IsReadyToRevive(Air_Vehicle.TundranFighter03) then
      ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TundranFighter03, -274, 313, 200, 50)
    end
    if IsReadyToRevive(Air_Vehicle.TundranBomber01) then
      ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TundranBomber01, -274, 313, 200, 50)
    end
    if IsReadyToRevive(Air_Vehicle.TundranBomber02) then
      ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TundranBomber02, -274, 313, 200, 50)
    end
    if IsReadyToRevive(Air_Vehicle.WFFighter01) then
      ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WFFighter01, -274, 313, 200, 50)
    end
    if IsReadyToRevive(Air_Vehicle.WFFighter02) then
      ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WFFighter02, -274, 313, 200, 50)
    end
    if IsReadyToRevive(Air_Vehicle.WFFighter03) then
      ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WFFighter03, -274, 313, 200, 50)
    end
    if IsReadyToRevive(Air_Vehicle.WFBomber01) then
      ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WFBomber01, -274, 313, 200, 50)
    end
    if IsReadyToRevive(Air_Vehicle.WFBomber02) then
      ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WFBomber02, -274, 313, 200, 50)
    end
    EndFrame()
  until IsDead(Air_Vehicle.TundranFighter01) == false and IsDead(Air_Vehicle.TundranFighter02) == false and IsDead(Air_Vehicle.TundranFighter03) == false and IsDead(Air_Vehicle.TundranBomber01) == false and IsDead(Air_Vehicle.TundranBomber02) == false and IsDead(Air_Vehicle.WFFighter01) == false and IsDead(Air_Vehicle.WFFighter02) == false and IsDead(Air_Vehicle.WFFighter03) == false and IsDead(Air_Vehicle.WFBomber01) == false and IsDead(Air_Vehicle.WFBomber02) == false
  SetHealthPercent(Air_Vehicle.WFFighter01, 100)
  SetHealthPercent(Air_Vehicle.WFFighter02, 100)
  SetHealthPercent(Air_Vehicle.WFFighter03, 100)
  SetHealthPercent(Air_Vehicle.WFBomber01, 100)
  SetHealthPercent(Air_Vehicle.WFBomber02, 100)
  SetHealthPercent(Air_Vehicle.TundranFighter01, 100)
  SetHealthPercent(Air_Vehicle.TundranFighter02, 100)
  SetHealthPercent(Air_Vehicle.TundranFighter03, 100)
  SetHealthPercent(Air_Vehicle.TundranBomber01, 100)
  SetHealthPercent(Air_Vehicle.TundranBomber02, 100)
  Teleport(Air_Vehicle.WFFighter01, -135, 352, 100, 10)
  Teleport(Air_Vehicle.TundranFighter01, -211, 417, 100, 10)
  Teleport(Air_Vehicle.WFBomber01, -127, 306, 100, 10)
  Teleport(Air_Vehicle.TundranBomber01, -210, 375, 100, 10)
  Teleport(Air_Vehicle.WFBomber02, -62, 340, 100, 20)
  Teleport(Air_Vehicle.WFFighter02, -100, 334, 100, 20)
  Teleport(Air_Vehicle.WFFighter03, -75, 334, 100, 20)
  Teleport(Air_Vehicle.TundranBomber02, -247, 428, 100, 20)
  Teleport(Air_Vehicle.TundranFighter02, -232, 463, 100, 20)
  Teleport(Air_Vehicle.TundranFighter03, -217, 443, 100, 20)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ForceUnitTransfer(constant.PLAYER_ONE, Air_Vehicle.TundranBomber01, true, true)
    SetCamera(Camera.Player1Cam, constant.PLAYER_ONE)
    EndFrame()
    ResetCommandBar()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ForceUnitTransfer(constant.PLAYER_TWO, Air_Vehicle.WFBomber01, true, true)
    SetCamera(Camera.Player2Cam, constant.PLAYER_TWO)
    EndFrame()
    ResetCommandBar()
  end
  WaitFor(1)
  Spawn(Ground_Vehicle.XylvanianBattlestation01)
  Spawn(Ground_Vehicle.XylvanianBattlestation02)
  Spawn(Ground_Vehicle.XylvanianBattlestation03)
  Spawn(Ground_Vehicle.XylvanianBattlestation04)
  GoToArea(Ground_Vehicle.XylvanianBattlestation01, 502, 544, 10, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.XylvanianBattlestation02, 511, 486, 10, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.XylvanianBattlestation03, 411, 298, 10, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.XylvanianBattlestation04, 428, 300, 10, 0, constant.ORDER_FORCED)
  Kill(Building.SpiderGun01)
  Kill(Building.SpiderGun02)
  Kill(Building.SpiderGun03)
  Kill(Building.SpiderGun04)
  Kill(Building.VladsBigDrill)
  SetObjectiveData(Objective_Marker.VladsBigDrillMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.VladsBigDrill, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.BattlestationMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BattlestationMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BattlestationMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BattlestationMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Battlestation00, constant.OBJECTIVE_DATA_VISIBLE, 1)
  Teleport(Air_Vehicle.XylvanianFighter01, -146, 154, 20, 20)
  Teleport(Air_Vehicle.XylvanianFighter02, -126, 126, 20, 20)
  Teleport(Air_Vehicle.XylvanianFighter03, -106, 106, 20, 20)
  Teleport(Air_Vehicle.XylvanianFighter04, -73, 85, 20, 20)
  GoToArea(Air_Vehicle.XylvanianFighter01, 511, 455, 10, 180, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.XylvanianFighter02, 511, 455, 10, 180, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.XylvanianFighter03, 511, 455, 10, 180, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.XylvanianFighter04, 511, 455, 10, 180, constant.ORDER_NORMAL)
  FollowUnit(Air_Vehicle.XylvanianFighter01, Ground_Vehicle.XylvanianBattlestation01, 30, constant.ORDER_NORMAL)
  FollowUnit(Air_Vehicle.XylvanianFighter02, Ground_Vehicle.XylvanianBattlestation02, 30, constant.ORDER_NORMAL)
  FollowUnit(Air_Vehicle.XylvanianFighter03, Ground_Vehicle.XylvanianBattlestation03, 30, constant.ORDER_NORMAL)
  FollowUnit(Air_Vehicle.XylvanianFighter04, Ground_Vehicle.XylvanianBattlestation04, 30, constant.ORDER_NORMAL)
  if IsNetworkPlayer(constant.PLAYER_ONE) and GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Air_Vehicle.TundranFighter01, GetPlayerUnit(0), -1, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.TundranFighter02, GetPlayerUnit(0), -1, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.TundranFighter03, GetPlayerUnit(0), -1, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.TundranBomber02, GetPlayerUnit(0), -1, constant.ORDER_NORMAL)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) and GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Air_Vehicle.WFFighter01, GetPlayerUnit(1), -1, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.WFFighter02, GetPlayerUnit(1), -1, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.WFFighter03, GetPlayerUnit(1), -1, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.WFBomber02, GetPlayerUnit(1), -1, constant.ORDER_NORMAL)
  end
  Despawn(Troop.TundranCutSceneTroop)
  Despawn(Troop.WFCutSceneTroop)
  EndIntro()
  cutscenefinished03 = 1
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  PauseTimerActive = 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_TUNDRAN, 0)
    SetInvulnerable(flag.TYPE_XYLVANIAN, 0)
    UnfreezePlayer(0)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_WFRONTIER, 0)
    UnfreezePlayer(1)
  end
  inacutscene = false
  vladsbigdrill = 1
  PhoneMessageWithObjective(50, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(50, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  while missionend == 0 do
    if bs01 == 0 and IsInRange(Ground_Vehicle.XylvanianBattlestation01, Building.TundranMausoleum, 120) then
      AttackTarget(Ground_Vehicle.XylvanianBattlestation01, Building.TundranMausoleum, constant.ORDER_FORCED)
      DebugOut("1")
      bs01 = 1
    end
    EndFrame()
    if bs02 == 0 and IsInRange(Ground_Vehicle.XylvanianBattlestation02, Building.TundranMausoleum, 105) then
      AttackTarget(Ground_Vehicle.XylvanianBattlestation02, Building.TundranMausoleum, constant.ORDER_FORCED)
      DebugOut("2")
      bs02 = 1
    end
    EndFrame()
    if bs03 == 0 and (IsInArea(Ground_Vehicle.XylvanianBattlestation03, Map_Zone.BSZone02) or IsInArea(Ground_Vehicle.XylvanianBattlestation04, Map_Zone.BSZone02)) then
      AttackTarget(Ground_Vehicle.XylvanianBattlestation03, Building.TundranMausoleum, constant.ORDER_FORCED)
      AttackTarget(Ground_Vehicle.XylvanianBattlestation04, Building.TundranMausoleum, constant.ORDER_FORCED)
      DebugOut("3")
      bs03 = 1
    end
    EndFrame()
  end
end
