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
    EndFrame()
  until netvariable.player1.cutsceneskipped == 1 and netvariable.player2.cutsceneskipped == 1
  Kill(cutscene)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  ResetHealthAndScoreTotals()
  CleanupSkipCutscene()
  StartScoringTimer()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(0, 1, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    StoreSummaryMessage(0, 3, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    StoreSummaryMessage(0, 5, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
    SetCamera(Camera.player1)
    EndFrame()
    ResetCommandBar()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_ONE)
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(1, 2, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
    StoreSummaryMessage(1, 4, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
    StoreSummaryMessage(1, 6, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
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
