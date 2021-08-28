function CUTSCENE_SKIP(owner)
  cutsceneabort = owner
  FreezePlayer(constant.PLAYER_ONE)
  FreezePlayer(constant.PLAYER_TWO)
  SetReflectionRenderObjects(false)
  WaitFor(1)
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
  Despawn(Ground_Vehicle.CutsceneSolartank1)
  Despawn(Troop.CutsceneSolarTroop1)
  Despawn(Troop.CutsceneSolarTroop2)
  Despawn(Troop.CutsceneSolarTroop3)
  Despawn(Troop.CutsceneSolarTroop4)
  Despawn(Troop.CutsceneSolarTroop5)
  Despawn(Troop.CutsceneSolarTroop6)
  Despawn(Troop.CutsceneSolarTroop7)
  Despawn(Ground_Vehicle.CutsceneLegiontank1)
  Despawn(Troop.CutsceneLegionTroop1)
  Despawn(Troop.CutsceneLegionTroop2)
  Despawn(Troop.CutsceneLegionTroop3)
  Despawn(Troop.CutsceneLegionTroop4)
  Despawn(Troop.CutsceneLegionTroop5)
  Despawn(Troop.CutsceneLegionTroop6)
  Despawn(Troop.CutsceneLegionTroop7)
  Spawn(Troop.IL_Player)
  Spawn(Troop.ILGrunt1)
  Spawn(Troop.ILGrunt2)
  Spawn(Troop.ILGrunt3)
  Spawn(Troop.ILFlame1)
  Spawn(Troop.ILBazooka1)
  Spawn(Troop.ILBazooka2)
  Spawn(Ground_Vehicle.ILhTank)
  Spawn(Troop.SE_Player)
  Spawn(Troop.SEGrunt1)
  Spawn(Troop.SEGrunt2)
  Spawn(Troop.SEGrunt3)
  Spawn(Troop.SEFlame1)
  Spawn(Troop.SEBazooka1)
  Spawn(Troop.SEBazooka2)
  Spawn(Ground_Vehicle.SEhTank)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.SE_Player, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.IL_Player, true, true)
  Despawn(Troop.Player1TransferUnit)
  Despawn(Troop.Player2TransferUnit)
  EndIntro()
  ResetHealthAndScoreTotals()
  CleanupSkipCutscene()
  StartScoringTimer()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(0, 1, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
    StoreSummaryMessage(0, 3, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
    StoreSummaryMessage(0, 5, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
    SetCamera(Camera.Player1, constant.PLAYER_ONE)
    EndFrame()
    ResetCommandBar()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_ONE)
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(1, 2, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
    StoreSummaryMessage(1, 4, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
    StoreSummaryMessage(1, 6, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
    SetCamera(Camera.Player2, constant.PLAYER_TWO)
    EndFrame()
    ResetCommandBar()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_TWO)
  end
  EndFrame()
  SetTimer(240)
  ShowTimer(1)
  TimerStarted = true
end
