function CUTSCENE_SKIP(owner)
  cutsceneabort = owner
  FreezePlayer(constant.PLAYER_ONE)
  FreezePlayer(constant.PLAYER_TWO)
  WaitFor(1)
  DebugOut("players frozen")
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.cutsceneskipped = 1
      DebugOut("Killed cutscene player1")
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.cutsceneskipped = 1
      DebugOut("Killed cutscene player2")
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        Kill(cutscene)
        netvariable.player1.cutsceneskipped = 1
        netvariable.player2.cutsceneskipped = 1
        DebugOut(" In split screen - killed cutscene")
      end
      EndFrame()
    end
  until netvariable.player1.cutsceneskipped == 1 and netvariable.player2.cutsceneskipped == 1
  Kill(cutscene)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Troop.TTintroTroop1)
  Despawn(Troop.TTintroTroop2)
  Despawn(Troop.TTintroTroop3)
  Despawn(Troop.TTintroTroop4)
  Despawn(Troop.TTintroTroop5)
  Despawn(Troop.TTintroTroop6)
  Despawn(Troop.TTintroTroop7)
  Despawn(Troop.TTintroTroop8)
  Despawn(Troop.TTintroTroop9)
  Despawn(Troop.WFintroTroop1)
  Despawn(Troop.WFintroTroop2)
  Despawn(Troop.WFintroTroop3)
  Despawn(Troop.WFintroTroop4)
  Despawn(Troop.WFintroTroop5)
  Despawn(Troop.WFintroTroop6)
  Despawn(Troop.WFintroTroop7)
  Despawn(Troop.WFintroTroop8)
  Despawn(Troop.WFintroTroop9)
  Spawn(Troop.WFgrunt1)
  Spawn(Troop.WFgrunt2)
  Spawn(Troop.WFgrunt3)
  Spawn(Troop.WFgrunt4)
  Spawn(Troop.WFgrunt5)
  Spawn(Troop.WFAA1)
  Spawn(Troop.WFBazooka1)
  Spawn(Troop.WFBazooka2)
  Spawn(Troop.Tgrunt1)
  Spawn(Troop.Tgrunt2)
  Spawn(Troop.Tgrunt3)
  Spawn(Troop.Tgrunt4)
  Spawn(Troop.Tgrunt5)
  Spawn(Troop.TAA1)
  Spawn(Troop.TBazooka1)
  Spawn(Troop.TBazooka2)
  EndFrame()
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.WFAA1, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.TAA1, true, true)
  Despawn(Troop.Player1TransferUnit)
  Despawn(Troop.Player2TransferUnit)
  EndIntro()
  ResetHealthAndScoreTotals()
  CleanupSkipCutscene()
  StartScoringTimer()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(0, 1, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Sad)
    StoreSummaryMessage(0, 5, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Sad)
    StoreSummaryMessage(0, 3, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Sad)
    StoreSummaryMessage(0, 7, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Sad)
    SetCamera(Camera.Player1)
    EndFrame()
    ResetCommandBar()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_ONE)
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(1, 2, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Sad)
    StoreSummaryMessage(1, 6, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Sad)
    StoreSummaryMessage(1, 4, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Sad)
    StoreSummaryMessage(1, 8, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Sad)
    SetCamera(Camera.Player2)
    EndFrame()
    ResetCommandBar()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_TWO)
  end
  EndFrame()
  SetTimer(480)
  ShowTimer(1)
  TimerStarted = true
end
