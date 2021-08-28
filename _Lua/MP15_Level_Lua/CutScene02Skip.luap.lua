function CutScene02Skip(owner)
  repeat
    EndFrame()
  until aatowers == 3
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      cutscenefinished02 = 1
      DebugOut("*CutScene02Skip* - In split screen - killed cutscene 02")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.skip02 = 1
      DebugOut("*CutScene02Skip* - Player 1 Killed CutScene02")
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.skip02 = 1
      DebugOut("*CutScene02Skip* - Player 2 Killed CutScene02")
    end
    EndFrame()
  until netvariable.player1.skip02 == 1 and netvariable.player2.skip02 == 1 or cutscenefinished02 == 1
  Kill(cutscene02)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.Player1Cam, constant.PLAYER_ONE)
    StoreSummaryMessage(0, 28, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(0, 31, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(0, 27, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    StoreSummaryMessage(0, 35, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
    StoreSummaryMessage(0, 36, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Player2Cam, constant.PLAYER_TWO)
    StoreSummaryMessage(1, 28, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(1, 32, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
    StoreSummaryMessage(1, 27, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    StoreSummaryMessage(1, 35, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
    StoreSummaryMessage(1, 36, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  end
  Spawn(Air_Vehicle.WFFighter01)
  Spawn(Air_Vehicle.WFFighter02)
  Spawn(Air_Vehicle.WFFighter03)
  Spawn(Air_Vehicle.TundranFighter01)
  Spawn(Air_Vehicle.TundranFighter02)
  Spawn(Air_Vehicle.TundranFighter03)
  Spawn(Air_Vehicle.WFBomber01)
  Spawn(Air_Vehicle.WFBomber02)
  Spawn(Air_Vehicle.TundranBomber01)
  Spawn(Air_Vehicle.TundranBomber02)
  Spawn(Air_Vehicle.XylvanianFighter01)
  Spawn(Air_Vehicle.XylvanianFighter02)
  Spawn(Air_Vehicle.XylvanianFighter03)
  Spawn(Air_Vehicle.XylvanianFighter04)
  Spawn(Building.VladsBigDrill)
  Spawn(Building.SpiderGun01)
  Spawn(Building.SpiderGun02)
  Spawn(Building.SpiderGun03)
  Spawn(Building.SpiderGun04)
  Spawn(Water_Vehicle.XDreadnought01)
  Spawn(Water_Vehicle.XDreadnought02)
  Teleport(Air_Vehicle.WFBomber01, -127, 306, 210, 10)
  Teleport(Air_Vehicle.WFBomber02, -62, 340, 210, 10)
  Teleport(Air_Vehicle.WFFighter01, -126, 334, 210, 10)
  Teleport(Air_Vehicle.WFFighter02, -100, 334, 210, 10)
  Teleport(Air_Vehicle.WFFighter03, -75, 334, 210, 10)
  Teleport(Air_Vehicle.TundranBomber01, -210, 375, 210, 10)
  Teleport(Air_Vehicle.TundranBomber02, -247, 428, 210, 10)
  Teleport(Air_Vehicle.TundranFighter01, -260, 483, 210, 10)
  Teleport(Air_Vehicle.TundranFighter02, -220, 463, 210, 10)
  Teleport(Air_Vehicle.TundranFighter03, -240, 443, 210, 10)
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ForceUnitTransfer(constant.PLAYER_ONE, Air_Vehicle.TundranBomber01, true, true)
    SetCamera(Camera.Player1Cam, constant.PLAYER_ONE)
    EndFrame()
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Air_Vehicle.TundranFighter01, GetPlayerUnit(0), -1, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.TundranFighter02, GetPlayerUnit(0), -1, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.TundranFighter03, GetPlayerUnit(0), -1, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.TundranBomber02, GetPlayerUnit(0), -1, constant.ORDER_NORMAL)
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ForceUnitTransfer(constant.PLAYER_TWO, Air_Vehicle.WFBomber01, true, true)
    SetCamera(Camera.Player2Cam, constant.PLAYER_TWO)
    EndFrame()
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Air_Vehicle.WFFighter01, GetPlayerUnit(1), -1, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.WFFighter02, GetPlayerUnit(1), -1, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.WFFighter03, GetPlayerUnit(1), -1, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.WFBomber02, GetPlayerUnit(1), -1, constant.ORDER_NORMAL)
    end
  end
  Despawn(Troop.TundranCutSceneTroop)
  Despawn(Troop.WFCutSceneTroop)
  SetObjectiveData(Objective_Marker.VladsBigDrillMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.VladsBigDrill, constant.OBJECTIVE_DATA_VISIBLE, 1)
  if 1 > fuelstorage then
    SetObjectiveData(Objective_Marker.FuelDepotMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.FuelDepot01, constant.OBJECTIVE_DATA_VISIBLE, 0)
  end
  EndIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  PauseTimerActive = 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    UnfreezePlayer(0)
    SetInvulnerable(flag.TYPE_TUNDRAN, 0)
    SetInvulnerable(flag.TYPE_XYLVANIAN, 0)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    UnfreezePlayer(1)
    SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  end
  inacutscene = false
  aatowers = 1
  PhoneMessageWithObjective(30, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(30, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
end
