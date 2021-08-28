function Cutscene_Mid_Beach_Skip(owner)
  repeat
    EndFrame()
  until MidCutsceneBeachStart == 1
  WaitFor(3)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(MidCutsceneBeach)
      DebugOut("Beach Cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      MidCutsceneBeachEnd = 1
      EndFrame()
    else
    end
    EndFrame()
  until MidCutsceneBeachEnd == 1
  Kill(MidCutsceneBeach)
  ClearMessageQueue()
  if PlayAltBeachCutsceneString == 1 then
    StoreSummaryMessage(55, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Sad)
    StoreSummaryMessage(71, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Sad)
  else
    StoreSummaryMessage(14, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
    StoreSummaryMessage(70, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
  end
  HideHUD = 0
  EndFrame()
  SetHudState(constant.PLAYER_ONE, constant.HUD_COMMANDBAR, constant.HUD_ITEM_ON)
  SetHudState(constant.PLAYER_ONE, constant.HUD_PLAYERICON, constant.HUD_ITEM_ON)
  SetCamera(Camera.PlayerCam, constant.PLAYER_ONE)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  EndIntro()
  WaitFor(UnfreezeDelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 0
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 0)
  CutsceneIsPlaying = 0
  NavalGunsStart = 1
end
