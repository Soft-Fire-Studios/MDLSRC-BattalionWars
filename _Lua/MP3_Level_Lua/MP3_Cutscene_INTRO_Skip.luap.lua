function MP3_Cutscene_INTRO_Skip(owner)
  local EndCutscene = function()
    DebugOut("Killed cutscene", cutscene)
    if cutscene >= 2 then
      Kill(cutscene)
    end
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    CleanupSkipCutscene()
    SetObjectiveData(Objective_Marker.P1Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.P2Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.P1tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.P1tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.P1tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.P2tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.P2tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.P2tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.P1HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.P2HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    Despawn(Air_Vehicle.IntroWFFighter01)
    Despawn(Air_Vehicle.IntroWFFighter02)
    Despawn(Air_Vehicle.IntroTTFighter01)
    Despawn(Air_Vehicle.IntroTTFighter02)
    Despawn(Air_Vehicle.IntroTTFighter03)
    Despawn(Air_Vehicle.IntroTTFighter04)
    SetUnitInvulnerable(Air_Vehicle.TBlimp01, false)
    SetUnitInvulnerable(Air_Vehicle.TBlimp02, false)
    SetUnitInvulnerable(Air_Vehicle.TBlimp03, false)
    SetUnitInvulnerable(Air_Vehicle.TBlimp04, false)
    SetUnitInvulnerable(Air_Vehicle.TBlimp05, false)
    SetUnitInvulnerable(Air_Vehicle.TBlimp06, false)
    SetUnitInvulnerable(Air_Vehicle.TBlimp07, false)
    Spawn(Air_Vehicle.WFfighter2)
    Teleport(Air_Vehicle.WFfighter2, WFfighter2XLandingCoord, WFfighter2ZLandingCoord, 180, 0)
    Spawn(Air_Vehicle.TTfighter2)
    Teleport(Air_Vehicle.TTfighter2, TTfighter2XLandingCoord, TTfighter2ZLandingCoord, 0, 0)
    Spawn(Air_Vehicle.WFfighter1)
    Teleport(Air_Vehicle.WFfighter1, WFfighter1XLandingCoord, WFfighter1ZLandingCoord, 180, 0)
    Spawn(Air_Vehicle.TTfighter1)
    Teleport(Air_Vehicle.TTfighter1, TTfighter1XLandingCoord, TTfighter1ZLandingCoord, 0, 0)
    EndIntro()
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      SetCamera(Camera.player2cam, constant.PLAYER_TWO)
      ForceUnitTransfer(constant.PLAYER_TWO, Air_Vehicle.TTfighter1, true)
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      SetCamera(Camera.player1cam, constant.PLAYER_ONE)
      ForceUnitTransfer(constant.PLAYER_ONE, Air_Vehicle.WFfighter1, true)
    end
    WaitFor(0.1)
    SetActive(Troop.WFextra01, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    SetActive(Troop.TTextra01, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    WaitFor(0.1)
    Kill(Troop.WFextra01)
    Kill(Troop.TTextra01)
    Kill(Troop.TTextra02)
    Kill(Troop.TTextra03)
    Kill(Troop.TTextra04)
    Kill(Troop.TTextra05)
    Kill(Troop.TTextra06)
    Despawn(Capture_Point.HQ)
    Spawn(Building.CapturePointDummy)
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      StoreSummaryMessage(constant.PLAYER_ONE, 1, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
      StoreSummaryMessage(constant.PLAYER_ONE, 3, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
      StoreSummaryMessage(constant.PLAYER_ONE, 2, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
      StoreSummaryMessage(constant.PLAYER_ONE, 4, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      StoreSummaryMessage(constant.PLAYER_TWO, 51, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Happy)
      StoreSummaryMessage(constant.PLAYER_TWO, 53, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Happy)
      StoreSummaryMessage(constant.PLAYER_TWO, 52, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Happy)
      StoreSummaryMessage(constant.PLAYER_TWO, 54, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Happy)
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      netvariable.player2.cutsceneskipped = 1
      ClearMessageQueue(constant.PLAYER_TWO)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(60, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
      PhoneMessage(61, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
      ResetCommandBar()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      netvariable.player1.cutsceneskipped = 1
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      PhoneMessage(11, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      ResetCommandBar()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      SetTimer(480)
      ShowTimer(1)
      TimerShown = 1
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      ResetCommandBar()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      SetTimer(480)
      ShowTimer(1)
      TimerShown = 1
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_TWO)
      ResetCommandBar()
    end
    cutsceneStart = 1
    StartScoringTimer()
  end
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.cutsceneskipped = 1
      DebugOut("Killed cutscene player1")
      EndCutscene()
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Air_Vehicle.WFfighter2, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.cutsceneskipped = 1
      DebugOut("Killed cutscene player2")
      EndCutscene()
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Air_Vehicle.TTfighter2, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
      end
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and IsNetworkPlayer(constant.PLAYER_TWO) and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or netvariable.player2.cutsceneskipped == 1 or netvariable.player1.cutsceneskipped == 1) then
      netvariable.player1.cutsceneskipped = 1
      netvariable.player2.cutsceneskipped = 1
      DebugOut("Killed cutscene player1&2 - split screen")
      EndCutscene()
    end
    EndFrame()
  until cutsceneStart == 1
end
