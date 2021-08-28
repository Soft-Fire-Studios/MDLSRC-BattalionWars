function CutsceneRecon(owner)
  scriptCutsceneSolarReconReinforcements = owner
  Despawn(Ground_Vehicle.SolarRecon)
  repeat
    EndFrame()
  until CutsceneIntroFinished == 1
  while true do
    if NumItemsInArea(Map_Zone.RuinsWestPerimeter, flag.TYPE_SOLAR) > 0 then
      if IsDead(Ground_Vehicle.SolarLightTank) == false then
        ClearMessageQueue()
        PhoneMessage(27, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      WaitFor(15)
      DebugOut("Player sighted near West ruins")
      break
    end
    if 0 < NumItemsInArea(Map_Zone.RuinsNorthPerimeter, flag.TYPE_SOLAR) then
      ClearMessageQueue()
      if IsDead(Ground_Vehicle.SolarLightTank) == false then
        ClearMessageQueue()
        PhoneMessage(27, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      GoToArea(Troop.RuinsBazooka1, 274, 205, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.RuinsBazooka1, 274, 206, 5, 0, constant.ORDER_NORMAL)
      WaitFor(15)
      GoToArea(Troop.RuinsGrunt1, 297, 197, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.RuinsGrunt2, 297, 198, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.RuinsGrunt3, 297, 199, 5, 0, constant.ORDER_NORMAL)
      DebugOut("Player sighted near North ruins")
      break
    end
    if GetState(Capture_Point.SolarRecon) == flag.TYPE_SOLAR then
      break
    end
    EndFrame()
  end
  repeat
    EndFrame()
    if NumPassengersInUnit(Capture_Point.SolarRecon) == 1 and NumPassengersInUnit(Capture_Point.SolarAssault) == 1 then
      DebugOut("Naughty tester, ejecting unit from Assault capture point.")
      ExitVehicle(constant.ID_NONE, Capture_Point.SolarAssault)
    end
  until GetState(Capture_Point.SolarRecon) == flag.TYPE_SOLAR
  PauseTimerActive = 1
  gotrecon = 1
  StartIntro()
  SetObjectiveData(Objective.SolarRecon, constant.OBJECTIVE_DATA_STATE, 1)
  FreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.TransferMonkey)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.TransferMonkey, true, true)
  ClearMessageQueue()
  Spawn(Air_Vehicle.SolarReconChopper)
  WaitFor(0.2)
  LandAirUnit(Air_Vehicle.SolarReconChopper, 209, 171, constant.ORDER_FORCED, 1, 5, 270)
  WaitFor(0.5)
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  CameraSetTarget(Camera.CutsceneCam, Air_Vehicle.SolarReconChopper)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.Cam1Spline)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(10, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  WaitFor(1)
  CutsceneReconCanNowBeSkipped = 1
  WaitFor(5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetTarget(Camera.CutsceneCam, Ground_Vehicle.TransportRecon)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.Cam2Spline)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(12, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  DebugOut("Solar Empire have captured the Anglo Ruins")
  while true do
    if GetMovementState(Air_Vehicle.SolarReconChopper) == constant.MOVEMENT_STATE_ON_GROUND then
      ExitVehicle(Ground_Vehicle.TransportRecon, constant.ID_NONE)
      StopCapturePointSounds(Capture_Point.SolarRecon)
      break
    end
    EndFrame()
  end
  DebugOut("Recon Chopper has landed")
  SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  GoToArea(Air_Vehicle.SolarReconChopper, 545, 446, 30, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.TransportRecon, 243.5, 166.8, 5, 0, constant.ORDER_FORCED)
  WaitFor(5.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CameraSetTarget(Camera.CutsceneCam, Troop.Admiral)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.Cam3Spline)
  SetHealthPercent(Ground_Vehicle.SolarRecon, 100)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(40, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(3.5)
  WaitFor(5)
  CutsceneReconFinished = 1
end
