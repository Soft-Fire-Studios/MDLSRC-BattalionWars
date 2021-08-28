function CutScene03(owner)
  cutscene03 = owner
  repeat
    EndFrame()
  until aatowers == 1
  SetHealthPercent(Building.VladsBigDrill, 100)
  while missionend == 0 do
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      repeat
        EndFrame()
      until 100 > GetHealthPercent(Building.VladsBigDrill)
      netvariable.player1.vladshealth = 1
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      repeat
        EndFrame()
      until netvariable.player1.vladshealth == 1
    end
    GoToArea(Water_Vehicle.XDreadnought01, -606, -56, 10, 0, constant.ORDER_FORCED)
    GoToArea(Water_Vehicle.XDreadnought02, -592, -222, 10, 0, constant.ORDER_FORCED)
    PhoneMessage(68, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad)
    PhoneMessage(70, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad)
    DebugOut("*Objective03VladsMiningSpider* - 3. (P1 & P2 DebugOut) - Mining Spider is less than 75%. Both players are told about it")
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      repeat
        EndFrame()
      until GetHealthPercent(Building.VladsBigDrill) < 50
      netvariable.player1.vladshealth = 2
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      repeat
        EndFrame()
      until netvariable.player1.vladshealth == 2
    end
    PhoneMessage(79, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad)
    DebugOut("*Objective03VladsMiningSpider* - 6. (P1 & P2 DebugOut) - Mining Spider is less than 50%. Both players are told about it")
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      repeat
        EndFrame()
      until GetHealthPercent(Building.VladsBigDrill) < 25
      netvariable.player1.vladshealth = 3
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      repeat
        EndFrame()
      until netvariable.player1.vladshealth == 3
    end
    PhoneMessage(80, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad)
    DebugOut("*Objective03VladsMiningSpider* - 9. (P1 & P2 DebugOut) - Mining Spider is less than 25%. Both players are told about it")
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      repeat
        EndFrame()
      until GetHealthPercent(Building.VladsBigDrill) < 10
      netvariable.player1.vladshealth = 4
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      repeat
        EndFrame()
      until netvariable.player1.vladshealth == 4
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and missionend == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      FreezePlayer(0)
      SetInvulnerable(flag.TYPE_TUNDRAN, 1)
      SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
      break
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and missionend == 0 then
      ClearMessageQueue(constant.PLAYER_TWO)
      FreezePlayer(1)
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      break
    end
    EndFrame()
  end
  inacutscene = true
  PauseTimerActive = 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.TundranCutSceneTroop)
  Spawn(Troop.WFCutSceneTroop)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ForceUnitTransfer(constant.PLAYER_ONE, Troop.TundranCutSceneTroop, true, true)
    SetCamera(Camera.CutScene03Player1Camera01, constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutScene03Player1Camera01, Waypoint.BigDrillTarget)
    CameraSetWaypoint(Camera.CutScene03Player1Camera01, Waypoint.Entity330105149)
    ClearMessageQueue(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ForceUnitTransfer(constant.PLAYER_TWO, Troop.WFCutSceneTroop, true, true)
    SetCamera(Camera.CutScene03Player2Camera01, constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutScene03Player2Camera01, Waypoint.BigDrillTarget)
    CameraSetWaypoint(Camera.CutScene03Player2Camera01, Waypoint.Entity330105149)
    ClearMessageQueue(constant.PLAYER_TWO)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  vladsbigdrill = 2
  PhoneMessageWithObjective(51, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(51, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  Kill(Building.SpiderGun01)
  Kill(Building.SpiderGun02)
  Kill(Building.SpiderGun03)
  Kill(Building.SpiderGun04)
  WaitFor(1)
  Kill(Building.VladsBigDrill)
  WaitFor(4)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Ground_Vehicle.XylvanianBattlestation01)
  Spawn(Ground_Vehicle.XylvanianBattlestation02)
  Spawn(Ground_Vehicle.XylvanianBattlestation03)
  Spawn(Ground_Vehicle.XylvanianBattlestation04)
  GoToArea(Ground_Vehicle.XylvanianBattlestation01, 502, 544, 10, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.XylvanianBattlestation02, 511, 486, 10, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.XylvanianBattlestation03, 411, 298, 10, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.XylvanianBattlestation04, 428, 300, 10, 0, constant.ORDER_FORCED)
  Teleport(Air_Vehicle.XylvanianFighter01, -146, 154, 20, 20)
  Teleport(Air_Vehicle.XylvanianFighter02, -126, 126, 20, 20)
  Teleport(Air_Vehicle.XylvanianFighter03, -106, 106, 20, 20)
  Teleport(Air_Vehicle.XylvanianFighter04, -73, 85, 20, 20)
  FollowUnit(Air_Vehicle.XylvanianFighter01, Ground_Vehicle.XylvanianBattlestation01, 30, constant.ORDER_NORMAL)
  FollowUnit(Air_Vehicle.XylvanianFighter02, Ground_Vehicle.XylvanianBattlestation02, 30, constant.ORDER_NORMAL)
  FollowUnit(Air_Vehicle.XylvanianFighter03, Ground_Vehicle.XylvanianBattlestation03, 30, constant.ORDER_NORMAL)
  FollowUnit(Air_Vehicle.XylvanianFighter04, Ground_Vehicle.XylvanianBattlestation04, 30, constant.ORDER_NORMAL)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ForceUnitTransfer(constant.PLAYER_ONE, Troop.TundranCutSceneTroop, true, true)
    SetCamera(Camera.CutScene03Player1Camera01, constant.PLAYER_ONE)
    CameraSetTarget(Camera.CutScene03Player1Camera01, Waypoint.Entity330106599)
    CameraSetWaypoint(Camera.CutScene03Player1Camera01, Waypoint.Entity330106595)
    ClearMessageQueue(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ForceUnitTransfer(constant.PLAYER_TWO, Troop.WFCutSceneTroop, true, true)
    SetCamera(Camera.CutScene03Player2Camera01, constant.PLAYER_TWO)
    CameraSetTarget(Camera.CutScene03Player2Camera01, Waypoint.Entity330106599)
    CameraSetWaypoint(Camera.CutScene03Player2Camera01, Waypoint.Entity330106595)
    ClearMessageQueue(constant.PLAYER_TWO)
  end
  Despawn(Air_Vehicle.WFFighter01)
  Despawn(Air_Vehicle.WFFighter02)
  Despawn(Air_Vehicle.WFFighter03)
  Despawn(Air_Vehicle.WFBomber01)
  Despawn(Air_Vehicle.WFBomber02)
  Despawn(Air_Vehicle.TundranFighter01)
  Despawn(Air_Vehicle.TundranFighter02)
  Despawn(Air_Vehicle.TundranFighter03)
  Despawn(Air_Vehicle.TundranBomber01)
  Despawn(Air_Vehicle.TundranBomber02)
  SetObjectiveData(Objective_Marker.VladsBigDrillMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.VladsBigDrill, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.BattlestationMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BattlestationMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BattlestationMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BattlestationMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Battlestation00, constant.OBJECTIVE_DATA_VISIBLE, 1)
  StartOutro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(43, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad)
  WaitFor(11)
  cutscenefinished03 = 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.skip03 = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.skip03 = 1
  end
end
