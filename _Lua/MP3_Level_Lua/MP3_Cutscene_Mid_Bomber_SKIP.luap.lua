function MP3_Cutscene_Mid_Bomber_SKIP(owner)
  local EndCutscene = function()
    DebugOut("Killed cutscene", cutsceneMidBomberID)
    if cutsceneMidBomberID >= 2 then
      Kill(cutsceneMidBomberID)
    end
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    CleanupSkipCutscene()
    Despawn(Air_Vehicle.WFbomberCutscene01)
    Spawn(Air_Vehicle.WFbomber01)
    EndOutro()
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      StoreSummaryMessage(constant.PLAYER_TWO, 101, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Sad)
      ClearMessageQueue(constant.PLAYER_TWO)
      SetCamera(Camera.player2cam, constant.PLAYER_TWO)
      PhoneMessageWithObjective(63, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      StoreSummaryMessage(constant.PLAYER_ONE, 100, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
      ClearMessageQueue(constant.PLAYER_ONE)
      SetCamera(Camera.player1cam, constant.PLAYER_ONE)
      PhoneMessageWithObjective(13, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
    end
    WaitFor(FreezeDelay)
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      UnfreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_WFRONTIER, false)
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      UnfreezePlayer(constant.PLAYER_TWO)
      SetInvulnerable(flag.TYPE_TUNDRAN, false)
    end
    PauseTimerActive = 0
    SetTimer(MissionTimeLeft)
    ShowTimer(1)
    TimerShown = 1
    CutsceneMidBomber = 1
  end
  repeat
    EndFrame()
  until Blimp7DeadObjective == 1
  WaitFor(2)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.cutscenemidbomberskipped = 1
      DebugOut("Killed cutscene mid player1")
      EndCutscene()
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Air_Vehicle.WFbomber01, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.cutscenemidbomberskipped = 1
      DebugOut("Killed cutscene mid player2")
      EndCutscene()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and IsNetworkPlayer(constant.PLAYER_TWO) and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or netvariable.player2.cutscenemidbomberskipped == 1 or netvariable.player1.cutscenemidbomberskipped == 1) then
      netvariable.player1.cutscenemidbomberskipped = 1
      netvariable.player2.cutscenemidbomberskipped = 1
      DebugOut("Killed mid level cutscene player1&2 - split screen")
      EndCutscene()
    end
    EndFrame()
  until CutsceneMidBomber == 1
end
