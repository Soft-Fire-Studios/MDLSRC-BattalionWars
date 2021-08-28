function CutsceneSolarAssaultReinforcements(owner)
  scriptCutsceneSolarAssaultReinforcements = owner
  repeat
    if NumPassengersInUnit(Capture_Point.SolarAssault) == 1 and NumPassengersInUnit(Capture_Point.SolarRecon) == 1 then
      DebugOut("Naughty tester, ejecting unit from Recon capture point.")
      ExitVehicle(constant.ID_NONE, Capture_Point.SolarRecon)
    end
    EndFrame()
  until GetState(Capture_Point.SolarAssault) == flag.TYPE_SOLAR
  if gotrecon == 1 then
    Kill(scriptCutsceneSolarAssaultReinforcementsAbort)
    Spawn(Air_Vehicle.SolarAssaultChopper)
    StoreSummaryMessage(11, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    ExitVehicle(Troop.SolarAssault1, Air_Vehicle.SolarAssaultChopper)
    ExitVehicle(Troop.SolarAssault2, Air_Vehicle.SolarAssaultChopper)
    ExitVehicle(Troop.SolarAssault3, Air_Vehicle.SolarAssaultChopper)
    ExitVehicle(Troop.SolarAssault4, Air_Vehicle.SolarAssaultChopper)
    ExitVehicle(Troop.SolarAssault5, Air_Vehicle.SolarAssaultChopper)
    StopCapturePointSounds(Capture_Point.SolarAssault)
    Teleport(Troop.SolarAssault1, 183, 206, 270, 15)
    Teleport(Troop.SolarAssault2, 183, 206, 270, 15)
    Teleport(Troop.SolarAssault3, 183, 206, 270, 15)
    Teleport(Troop.SolarAssault4, 183, 206, 270, 15)
    Teleport(Troop.SolarAssault5, 183, 206, 270, 15)
    AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault1)
    AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault2)
    AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault3)
    AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault4)
    AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault5)
    AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault1)
    AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault2)
    AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault3)
    AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault4)
    AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault5)
    SetActive(Troop.SolarAssault1, constant.INACTIVE)
    SetActive(Troop.SolarAssault2, constant.INACTIVE)
    SetActive(Troop.SolarAssault3, constant.INACTIVE)
    SetActive(Troop.SolarAssault4, constant.INACTIVE)
    SetActive(Troop.SolarAssault5, constant.INACTIVE)
    Despawn(Air_Vehicle.SolarAssaultChopper)
    CutsceneSolarAssaultReinforcementsFinished = 1
    assaultvets = 1
    assaultvetreinforcements = 1
    return
  end
  assaultvetreinforcements = 1
  ClearMessageQueue()
  DebugOut("Solar have captured the Assault Vet reinforcements")
  SetObjectiveData(Objective.SolarAssault, constant.OBJECTIVE_DATA_STATE, 1)
  DebugOut("Sending Assault Chopper")
  PauseTimerActive = 1
  FreezePlayer(constant.PLAYER_ONE)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if GetActionState(Ground_Vehicle.SolarLightTank) == constant.ACTION_STATE_FOLLOWING_PLAYER then
    tankfollowing = 1
  end
  if IsInArea(Ground_Vehicle.SolarLightTank, Map_Zone.TankOnHelipad) then
    Teleport(Ground_Vehicle.SolarLightTank, 212, 618, 210, 5)
  end
  Spawn(Air_Vehicle.SolarAssaultChopper)
  WaitFor(0.2)
  LandAirUnit(Air_Vehicle.SolarAssaultChopper, 146, 614, constant.ORDER_FORCED, false, 5, 280)
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  CameraSetTarget(Camera.CutsceneCam, Air_Vehicle.SolarAssaultChopper)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.WaterfallCameraSpline)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  WaitFor(1)
  CutsceneSolarAssaultReinforcementsCanNowBeSkipped = 1
  while true do
    if GetMovementState(Air_Vehicle.SolarAssaultChopper) == constant.MOVEMENT_STATE_ON_GROUND then
      WaitFor(0.2)
      ExitVehicle(Troop.SolarAssault1, Air_Vehicle.SolarAssaultChopper)
      WaitFor(0.2)
      ExitVehicle(Troop.SolarAssault2, Air_Vehicle.SolarAssaultChopper)
      WaitFor(0.2)
      ExitVehicle(Troop.SolarAssault3, Air_Vehicle.SolarAssaultChopper)
      WaitFor(0.2)
      ExitVehicle(Troop.SolarAssault4, Air_Vehicle.SolarAssaultChopper)
      WaitFor(0.2)
      ExitVehicle(Troop.SolarAssault5, Air_Vehicle.SolarAssaultChopper)
      WaitFor(0.2)
      StopCapturePointSounds(Capture_Point.SolarAssault)
      WaitFor(0.2)
      DebugOut("Troops leaving chopper")
      break
    end
    EndFrame()
  end
  WaitFor(0.3)
  GoToArea(Troop.SolarAssault1, 193.5, 571.5, 5, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarAssault2, 193.5, 571.5, 5, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarAssault3, 193.5, 571.5, 5, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarAssault4, 193.5, 571.5, 5, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SolarAssault5, 193.5, 571.5, 5, 0, constant.ORDER_FORCED)
  WaitFor(1)
  CutsceneSolarAssaultReinforcementsFinished = 1
end
