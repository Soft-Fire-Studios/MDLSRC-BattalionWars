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
  Despawn(Troop.CutsceneWFTroop1)
  Despawn(Troop.CutsceneWFTroop2)
  Despawn(Troop.CutsceneWFTroop3)
  Despawn(Troop.CutsceneWFTroop4)
  Despawn(Troop.CutsceneWFTroop5)
  Despawn(Troop.CutsceneWFTroop6)
  Despawn(Troop.CutsceneWFTroop7)
  Despawn(Troop.CutsceneWFTroop8)
  Despawn(Troop.CutsceneWFTroop10)
  Despawn(Troop.CutsceneWFTroop11)
  Despawn(Troop.CutsceneAITroop1)
  Despawn(Troop.CutsceneAITroop2)
  Despawn(Troop.CutsceneAITroop3)
  Despawn(Troop.CutsceneAITroop4)
  Despawn(Troop.CutsceneAITroop5)
  Despawn(Troop.CutsceneAITroop6)
  Despawn(Troop.CutsceneAITroop7)
  Despawn(Troop.CutsceneAITroop9)
  Despawn(Troop.CutsceneAITroop10)
  Despawn(Troop.CutsceneAITroop12)
  Spawn(Troop.WF_Player)
  Spawn(Troop.WFbazooka1)
  Spawn(Troop.WFbazooka2)
  Spawn(Troop.WFbazooka3)
  Spawn(Troop.WF_AAvet1)
  Spawn(Troop.WF_Grunt1)
  Spawn(Troop.WF_Grunt2)
  Spawn(Troop.WF_Grunt3)
  Spawn(Troop.WF_Grunt4)
  Spawn(Troop.WF_Grunt5)
  Spawn(Troop.AI_Player)
  Spawn(Troop.AIbazooka1)
  Spawn(Troop.AIbazooka2)
  Spawn(Troop.AIbazooka3)
  Spawn(Troop.AI_AA_vet1)
  Spawn(Troop.AI_Grunt1)
  Spawn(Troop.AI_Grunt2)
  Spawn(Troop.AI_Grunt3)
  Spawn(Troop.AI_Grunt4)
  Spawn(Troop.AI_Grunt5)
  EndFrame()
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.WF_Player, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.AI_Player, true, true)
  Despawn(Troop.Player1TransferUnit)
  Despawn(Troop.Player2TransferUnit)
  EndIntro()
  ResetHealthAndScoreTotals()
  CleanupSkipCutscene()
  StartScoringTimer()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(0, 3, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    StoreSummaryMessage(0, 5, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    StoreSummaryMessage(0, 7, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    SetCamera(Camera.player1)
    EndFrame()
    ResetCommandBar()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_ONE)
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(1, 4, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
    StoreSummaryMessage(1, 6, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
    StoreSummaryMessage(1, 8, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
    SetCamera(Camera.player2)
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
