function CutsceneMunitionsExpertAbort(owner)
  scriptCutsceneMunitionsExpertAbort = owner
  repeat
    EndFrame()
  until CutsceneMunitionsExpertCanNowBeSkipped == 1
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
      Kill(scriptCutsceneMunitionsExpert)
      CutsceneMunitionsExpertFinished = 1
      DebugOut("Killed recon cutscene")
    end
    EndFrame()
  until CutsceneMunitionsExpertFinished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  tellrecontostop = 0
  ExitVehicle(Troop.Admiral, constant.ID_NONE)
  Teleport(Ground_Vehicle.SolarRecon, -247, 237, 90, 5)
  PutUnitInVehicle(Troop.Admiral, Ground_Vehicle.SolarRecon, 1)
  Despawn(Capture_Point.RuinsRockets)
  SetUnitInvulnerable(Building.RuinsRockets, false)
  Kill(Building.RuinsRockets)
  Kill(Building.RuinsRocketsBomb)
  StoreSummaryMessage(76, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(29, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  repeat
    EndFrame()
  until IsPassengerInUnit(Troop.Admiral, Ground_Vehicle.SolarRecon)
  Teleport(Ground_Vehicle.SolarRecon, -243, 236, 90, 5)
  WaitFor(0.1)
  ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarRecon, true, true)
  Despawn(Troop.TransferMonkey)
  SetCamera(Camera.Player, constant.PLAYER_ONE)
  SetTimer(pausetimer)
  WaitFor(0.5)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  ShowTimer(1)
  UnfreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 0
  ClearMessageQueue()
  PhoneMessage(19, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  ruinsrockets = 1
end
