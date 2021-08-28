function CutsceneAbort(owner)
  cutsceneabort = owner
  FreezePlayer()
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED) then
        Kill(cutscene)
        cutscene = 1
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        DebugOut("Killed cutscene")
      end
      EndFrame()
    end
    EndFrame()
  until cutscene == 1
  ClearMessageQueue()
  StartScoringTimer()
  StoreSummaryMessage(0, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(37, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(36, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(38, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(1, 0, SpriteID.CO_WF_Herman_Happy)
  SetCamera(Camera.PlayerCam)
  WaitFor(0.5)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(2, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  PhoneMessage(46, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  PhoneMessage(50, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(51, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy)
  PhoneMessage(52, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad)
  PhoneMessage(53, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy)
  UnfreezePlayer()
  FollowWaypoint(Ground_Vehicle.XLightAttack1, Waypoint.LightAttack, 0, 0)
end
