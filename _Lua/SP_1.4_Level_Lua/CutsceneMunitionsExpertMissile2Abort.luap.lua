function CutsceneMunitionsExpertMissile2Abort(owner)
  scriptCutsceneMunitionsExpertSilo2Abort = owner
  repeat
    EndFrame()
  until CutsceneMunitionsExpertSilo2CanNowBeSkipped == 1
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
      Kill(scriptCutsceneMunitionsExpertSilo2)
      CutsceneMunitionsExpertSilo2Finished = 1
      DebugOut("Killed recon cutscene 2")
    end
    EndFrame()
  until CutsceneMunitionsExpertSilo2Finished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  tophillrockets = 1
  Despawn(Capture_Point.TopHillRockets)
  ExitVehicle(Troop.Admiral, constant.ID_NONE)
  PutUnitInVehicle(Troop.Admiral, Ground_Vehicle.SolarRecon, 1)
  Teleport(Ground_Vehicle.SolarRecon, -74.7, 586.4, 0, 5)
  WaitFor(0.1)
  ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarRecon, true, true)
  SetCamera(Camera.Player, constant.PLAYER_ONE)
  Despawn(Troop.TransferMonkey)
  SetTimer(pausetimer)
  WaitFor(0.5)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  ShowTimer(1)
  PauseTimerActive = 0
  UnfreezePlayer(constant.PLAYER_ONE)
  ClearMessageQueue()
  PhoneMessage(18, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(1)
  Spawn(Building.TopHillRocketsBomb)
  Despawn(Building.TopHillRocketsBombDupe)
  SetUnitInvulnerable(Building.TopHillRocketsBomb, true)
  DestroyablePlayAnim(Building.TopHillRocketsBomb, 1, 2)
  DestroyablePlayAnim(Destroyable_Object.TopHillPortcullis, 1, 2)
  ResetPathBlocking(Destroyable_Object.TopHillPortcullis)
  WaitFor(5)
  SetUnitInvulnerable(Building.TopHillRockets, false)
  SetUnitInvulnerable(Building.TopHillRocketsBomb, false)
  Kill(Building.TopHillRockets)
  Kill(Building.TopHillRocketsBomb)
  ClearMessageQueue()
  PhoneMessage(20, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
end
