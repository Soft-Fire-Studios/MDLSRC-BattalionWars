function CutsceneIntroAbort(owner)
  cutsceneabort = owner
  scriptCutsceneIntroAbort = owner
  WaitFor(1)
  PrepareSkipCutscene()
  CoopSetup(Objective_Marker.WFFlag, Objective_Marker.SFlag, 225)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        Kill(cutscene)
        cutscenefinished = 1
        DebugOut(" In split screen - killed cutscene")
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if CheckSkipCutscene() then
        Kill(cutscene)
        netvariable.player1.skippedintro = 1
        DebugOut("Killed cutscene")
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if CheckSkipCutscene() then
        Kill(cutscene)
        netvariable.player2.skippedintro = 1
        DebugOut("Killed cutscene")
      end
      EndFrame()
    end
    EndFrame()
  until netvariable.player1.skippedintro == 1 and netvariable.player2.skippedintro == 1 or cutscenefinished == 1
  CleanupSkipCutscene()
  Kill(cutscene)
  DebugOut("Killed cutscene")
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Capture_Point.Escape)
  cutscenefinished = 1
  PauseTimerActive = 0
  EndIntro()
  StartScoringTimer()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.PlayerCam, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Player2Cam, constant.PLAYER_TWO)
  end
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    UnfreezePlayer(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    UnfreezePlayer(constant.PLAYER_TWO)
  end
  FollowWaypoint(Ground_Vehicle.XLightAttack1, Waypoint.LightAttack, 0, 0)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(constant.PLAYER_ONE, 0, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 37, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 36, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 38, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 1, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(constant.PLAYER_TWO, 0, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
    StoreSummaryMessage(constant.PLAYER_TWO, 37, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
    StoreSummaryMessage(constant.PLAYER_TWO, 36, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
    StoreSummaryMessage(constant.PLAYER_TWO, 38, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
    StoreSummaryMessage(constant.PLAYER_TWO, 1, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
  end
  SetObjectiveData(Objective.JailGrunts, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.JailGrunts, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  PhoneMessage(66, 0, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  PhoneMessage(66, 0, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_TWO)
  PhoneMessage(67, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
  PhoneMessage(67, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO)
end
