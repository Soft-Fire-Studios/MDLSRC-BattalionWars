function CUTSCENE_INTRO_SKIP(owner)
  cutsceneabort = owner
  AddToGroup(Unit_Group.AIarmy, Ground_Vehicle.AIhtank1)
  AddToGroup(Unit_Group.AIarmy, Troop.AIgrunt1)
  AddToGroup(Unit_Group.AIarmy, Troop.AIgrunt2)
  AddToGroup(Unit_Group.AIarmy, Troop.AIgrunt3)
  AddToGroup(Unit_Group.AIarmy, Troop.AIgrunt4)
  AddToGroup(Unit_Group.AIarmy, Troop.AIassault1)
  AddToGroup(Unit_Group.AIarmy, Troop.AIassault2)
  AddToGroup(Unit_Group.AIarmy, Troop.AIassault3)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("cutscene skipped")
      cutsceneskipped = true
    else
      EndFrame()
    end
    EndFrame()
  until cutsceneskipped == true
  Kill(cutscene)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Water_Vehicle.cutsceneship1)
  GoToArea(Ground_Vehicle.SEltank5, -713.2, -99.9, 5, constant.ORDER_FORCED)
  EndIntro()
  StartScoringTimer()
  StoreSummaryMessage(constant.PLAYER_ONE, 0, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  StoreSummaryMessage(constant.PLAYER_ONE, 4, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  StoreSummaryMessage(constant.PLAYER_ONE, 6, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
  StoreSummaryMessage(constant.PLAYER_ONE, 5, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  StoreSummaryMessage(constant.PLAYER_ONE, 8, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Sad)
  StoreSummaryMessage(constant.PLAYER_ONE, 10, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
  SetCamera(Camera.playercam)
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
end
