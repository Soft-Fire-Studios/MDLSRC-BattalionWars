function CutScene01Skip(owner)
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      cutscenefinished01 = 1
      DebugOut("*CutScene01Skip* - In split screen - killed cutscene")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.skip01 = 1
      DebugOut("*CutScene01Skip* - Player 1 Killed CutScene01")
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.skip01 = 1
      DebugOut("*CutScene01Skip* - Player 2 Killed CutScene01")
    end
    EndFrame()
  until netvariable.player1.skip01 == 1 and netvariable.player2.skip01 == 1 or cutscenefinished01 == 1
  Kill(cutscene01)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  EndIntro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.Player1Cam, constant.PLAYER_ONE)
    StoreSummaryMessage(0, 5, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(0, 6, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(0, 8, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(0, 9, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(0, 10, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.TundranBattlestation01, true, true)
    EndFrame()
    ResetCommandBar()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Player2Cam, constant.PLAYER_TWO)
    StoreSummaryMessage(1, 5, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 7, constant.ARMY_ANGLO, SpriteID.CO_WF_Betty_Sad)
    StoreSummaryMessage(1, 8, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 9, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 10, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    ForceUnitTransfer(constant.PLAYER_TWO, Troop.WFBazookaVet05, true, true)
    EndFrame()
    ResetCommandBar()
  end
  Despawn(Troop.TundranCutSceneTroop)
  Despawn(Troop.WFCutSceneTroop)
  Teleport(Ground_Vehicle.XylvanianFuelStationHeavyTank01, 432, -12, 10, 10)
  GoToArea(Ground_Vehicle.XylvanianFuelStationHeavyTank01, 490, 152, 5, 0, constant.ORDER_NORMAL)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  ResetHealthAndScoreTotals()
  StartScoringTimer()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    UnfreezePlayer(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    UnfreezePlayer(constant.PLAYER_TWO)
  end
  inacutscene = false
  GoToArea(Troop.XAssaultVet09, 526, 246, 5)
  GoToArea(Troop.XAssaultVet10, 526, 246, 5)
  GoToArea(Troop.XAssaultVet11, 526, 246, 5)
  GoToArea(Troop.XAssaultVet12, 526, 246, 5)
  PhoneMessage(13, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy)
  WaitFor(15)
  if IsDead(Air_Vehicle.XylvanianGunship01) == false and IsDead(Air_Vehicle.XylvanianGunship02) == false then
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      GoToArea(Air_Vehicle.XylvanianGunship01, GetObjectXPosition(Ground_Vehicle.TundranBattlestation01), GetObjectZPosition(Ground_Vehicle.TundranBattlestation01), 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.XylvanianGunship02, GetObjectXPosition(Ground_Vehicle.TundranBattlestation01), GetObjectZPosition(Ground_Vehicle.TundranBattlestation01), 10, 0, constant.ORDER_NORMAL)
    end
    PhoneMessage(59, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad)
  end
end
