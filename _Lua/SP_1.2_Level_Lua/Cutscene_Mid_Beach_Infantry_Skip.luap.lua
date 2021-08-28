function Cutscene_Mid_Beach_Infantry_Skip(owner)
  repeat
    EndFrame()
  until CutsceneBeachInfantryStart == 1
  WaitFor(2)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(CutsceneBeachInfantry)
      DebugOut("Beach Infantry Cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      CutsceneBeachInfantryEnd = 1
      EndFrame()
    else
    end
    EndFrame()
  until CutsceneBeachInfantryEnd == 1
  Kill(CutsceneBeachInfantry)
  GoToArea(Water_Vehicle.AItransport2, GetObjectXPosition(Waypoint.AITransport2Despawn), GetObjectZPosition(Waypoint.AITransport2Despawn), 1, 0, constant.ORDER_FORCED)
  ClearMessageQueue()
  StoreSummaryMessage(67, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
  SetCamera(Camera.player1cam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(UnfreezeDelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  PauseTimerActive = 0
  PhoneMessage(68, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
end
