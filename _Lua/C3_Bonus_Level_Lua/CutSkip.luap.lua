function CutSkip(owner)
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) then
      Kill(cutscene)
      cutscene = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  until cutscene == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Camera0001)
  Despawn(Ground_Vehicle.SHeavyTank1)
  Despawn(Ground_Vehicle.SHeavyTank2)
  Despawn(Ground_Vehicle.SHeavyTank3)
  EndFrame()
  Spawn(Ground_Vehicle.SHeavyTank1)
  Spawn(Ground_Vehicle.SHeavyTank2)
  Spawn(Ground_Vehicle.SHeavyTank3)
  UnfreezePlayer()
  StoreSummaryMessage(0, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Sad)
  StoreSummaryMessage(1, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Sad)
  StoreSummaryMessage(2, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Happy)
  StoreSummaryMessage(3, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Happy)
  StoreSummaryMessage(4, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Happy)
  StoreSummaryMessage(5, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Happy)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  StartScoringTimer()
  LevelState = 1
end
