function CutsceneMunitionsExpertMissile3Abort(owner)
  scriptCutsceneMunitionsExpertSilo3Abort = owner
  repeat
    EndFrame()
  until CutsceneMunitionsExpertSilo3CanNowBeSkipped == 1
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
      Kill(scriptCutsceneMunitionsExpertSilo3)
      CutsceneMunitionsExpertSilo3Finished = 1
      DebugOut("Killed recon cutscene 3")
    end
    EndFrame()
  until CutsceneMunitionsExpertSilo3Finished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  tellrecontostop = 0
  SetCamera(Camera.Player, constant.PLAYER_ONE)
  Teleport(Ground_Vehicle.SolarRecon, 471.8, 800, 150, 5)
  ExitVehicle(Troop.Admiral, constant.ID_NONE)
  PutUnitInVehicle(Troop.Admiral, Ground_Vehicle.SolarRecon, 1)
  WaitFor(0.1)
  ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarRecon, true, true)
  Despawn(Troop.TransferMonkey)
  SetTimer(pausetimer)
  WaitFor(0.5)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  PauseTimerActive = 0
  UnfreezePlayer(constant.PLAYER_ONE)
  ClearMessageQueue()
  PhoneMessage(18, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(1)
  Spawn(Building.OuterIslandRocketsBomb)
  Despawn(Building.OuterIslandRocketsBombDupe)
  SetUnitInvulnerable(Building.OuterIslandRocketsBomb, true)
  DestroyablePlayAnim(Building.OuterIslandRocketsBomb, 1, 2)
  Despawn(Capture_Point.OuterIslandRockets)
  SetUnitInvulnerable(Building.OuterIslandRocketsBomb, true)
  WaitFor(5)
  SetUnitInvulnerable(Building.OuterIslandRockets, false)
  SetUnitInvulnerable(Building.OuterIslandRocketsBomb, false)
  Kill(Building.OuterIslandRockets)
  Kill(Building.OuterIslandRocketsBomb)
  ClearMessageQueue()
  bottomhillrockets = 1
  SetObjectiveData(Objective_Marker.EscortAdmiral, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.EscortAdmiral, constant.OBJECTIVE_DATA_VISIBLE, 1)
end
