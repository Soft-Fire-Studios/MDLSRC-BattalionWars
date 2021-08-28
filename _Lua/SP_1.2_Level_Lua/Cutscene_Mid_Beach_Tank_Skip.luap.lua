function Cutscene_Mid_Beach_Tank_Skip(owner)
  repeat
    EndFrame()
  until CutsceneBeachTankStart == 1
  WaitFor(2)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(CutsceneBeachTank)
      DebugOut("Beach Tank Cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      CutsceneBeachTankEnd = 1
      EndFrame()
    else
    end
    EndFrame()
  until CutsceneBeachTankEnd == 1
  Kill(CutsceneBeachTank)
  GoToArea(Water_Vehicle.AItransport1, GetObjectXPosition(Waypoint.AITransport1Despawn), GetObjectZPosition(Waypoint.AITransport1Despawn), 1, 0, constant.ORDER_FORCED)
  ClearMessageQueue()
  StoreSummaryMessage(95, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Sad)
  SetCamera(Camera.player1cam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(UnfreezeDelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  PauseTimerActive = 0
  PhoneMessage(55, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
end
