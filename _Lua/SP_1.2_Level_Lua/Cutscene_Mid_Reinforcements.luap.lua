function Cutscene_Mid_Reinforcements(owner)
  midcutscene2 = owner
  Despawn(Air_Vehicle.SEairtransport1)
  repeat
    EndFrame()
  until GetState(Capture_Point.flamevets) == flag.TYPE_SOLAR
  ReinforcementsCutscenePlaying = 1
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetObjectiveData(Objective_Marker.flamereenforcements, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.flamereenforcements, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.SEaatank, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.SEaatanks, constant.OBJECTIVE_DATA_VISIBLE, 1)
  ClearMessageQueue()
  FreezePlayer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  PauseTimerActive = 1
  Spawn(Air_Vehicle.SEairtransport1)
  Spawn(Ground_Vehicle.SEaatank2)
  SetActive(Ground_Vehicle.SEaatank2, constant.ACTIVE)
  PutUnitInVehicle(Ground_Vehicle.SEaatank2, Air_Vehicle.SEairtransport1, 6)
  if IsInArea(Ground_Vehicle.SEaatank1, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Ground_Vehicle.SEaatank1) == constant.ACTION_STATE_FOLLOWING then
      AAVehicleFollowing = 3
    end
    GoToArea(Ground_Vehicle.SEaatank1, GetObjectXPosition(Waypoint.TeleportAAVehicle), GetObjectZPosition(Waypoint.TeleportAAVehicle), 0, 0)
    TeleportSEAAVehicle01 = 1
  end
  if IsInArea(Troop.SEgrunt1, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEgrunt1) == constant.ACTION_STATE_FOLLOWING then
      SEGrunt01Following = 3
    end
    GoToArea(Troop.SEgrunt1, GetObjectXPosition(Waypoint.TeleportSEGrunt01), GetObjectZPosition(Waypoint.TeleportSEGrunt01), 0, 0)
    TeleportSEGrunt01 = 1
  end
  if IsInArea(Troop.SEgrunt2, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEgrunt2) == constant.ACTION_STATE_FOLLOWING then
      SEGrunt02Following = 3
    end
    GoToArea(Troop.SEgrunt2, GetObjectXPosition(Waypoint.TeleportSEGrunt02), GetObjectZPosition(Waypoint.TeleportSEGrunt02), 0, 0)
    TeleportSEGrunt02 = 1
  end
  if IsInArea(Troop.SEgrunt3, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEgrunt3) == constant.ACTION_STATE_FOLLOWING then
      SEGrunt03Following = 3
    end
    GoToArea(Troop.SEgrunt3, GetObjectXPosition(Waypoint.TeleportSEGrunt03), GetObjectZPosition(Waypoint.TeleportSEGrunt03), 0, 0)
    TeleportSEGrunt03 = 1
  end
  if IsInArea(Troop.SEgrunt4, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEgrunt4) == constant.ACTION_STATE_FOLLOWING then
      SEGrunt04Following = 3
    end
    GoToArea(Troop.SEgrunt4, GetObjectXPosition(Waypoint.TeleportSEGrunt04), GetObjectZPosition(Waypoint.TeleportSEGrunt04), 0, 0)
    TeleportSEGrunt04 = 1
  end
  if IsInArea(Troop.SEgrunt5, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEgrunt5) == constant.ACTION_STATE_FOLLOWING then
      SEGrunt05Following = 3
    end
    GoToArea(Troop.SEgrunt5, GetObjectXPosition(Waypoint.TeleportSEGrunt05), GetObjectZPosition(Waypoint.TeleportSEGrunt05), 0, 0)
    TeleportSEGrunt05 = 1
  end
  if IsInArea(Troop.SEflame1, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEflame1) == constant.ACTION_STATE_FOLLOWING then
      SEFlame01Following = 3
    end
    GoToArea(Troop.SEflame1, GetObjectXPosition(Waypoint.TeleportSEFlame01), GetObjectZPosition(Waypoint.TeleportSEFlame01), 0, 0)
    TeleportSEFlame01 = 1
  end
  if IsInArea(Troop.SEflame2, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEflame2) == constant.ACTION_STATE_FOLLOWING then
      SEFlame02Following = 3
    end
    GoToArea(Troop.SEflame2, GetObjectXPosition(Waypoint.TeleportSEFlame02), GetObjectZPosition(Waypoint.TeleportSEFlame02), 0, 0)
    TeleportSEFlame02 = 1
  end
  if IsInArea(Troop.SEflame7, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEflame7) == constant.ACTION_STATE_FOLLOWING then
      SEFlame07Following = 3
    end
    GoToArea(Troop.SEflame7, GetObjectXPosition(Waypoint.TeleportSEFlame07), GetObjectZPosition(Waypoint.TeleportSEFlame07), 0, 0)
    TeleportSEFlame07 = 1
  end
  if IsInArea(Troop.SEflame8, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEflame8) == constant.ACTION_STATE_FOLLOWING then
      SEFlame08Following = 3
    end
    GoToArea(Troop.SEflame8, GetObjectXPosition(Waypoint.TeleportSEFlame08), GetObjectZPosition(Waypoint.TeleportSEFlame08), 0, 0)
    TeleportSEFlame08 = 1
  end
  if IsInArea(Troop.SEflame9, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEflame9) == constant.ACTION_STATE_FOLLOWING then
      SEFlame09Following = 3
    end
    GoToArea(Troop.SEflame9, GetObjectXPosition(Waypoint.TeleportSEFlame09), GetObjectZPosition(Waypoint.TeleportSEFlame09), 0, 0)
    TeleportSEFlame09 = 1
  end
  if IsInArea(Troop.SEbazooka2, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEbazooka2) == constant.ACTION_STATE_FOLLOWING then
      SEBazooka02Following = 3
    end
    GoToArea(Troop.SEbazooka2, GetObjectXPosition(Waypoint.TeleportSEBazooka02), GetObjectZPosition(Waypoint.TeleportSEBazooka02), 0, 0)
    TeleportSEBazooka02 = 1
  end
  if IsInArea(Troop.SEbazooka3, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEbazooka3) == constant.ACTION_STATE_FOLLOWING then
      SEBazooka03Following = 3
    end
    GoToArea(Troop.SEbazooka3, GetObjectXPosition(Waypoint.TeleportSEBazooka03), GetObjectZPosition(Waypoint.TeleportSEBazooka03), 0, 0)
    TeleportSEBazooka03 = 1
  end
  if IsInArea(Troop.SEbazooka4, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEbazooka4) == constant.ACTION_STATE_FOLLOWING then
      SEBazooka04Following = 3
    end
    GoToArea(Troop.SEbazooka4, GetObjectXPosition(Waypoint.TeleportSEBazooka04), GetObjectZPosition(Waypoint.TeleportSEBazooka04), 0, 0)
    TeleportSEBazooka04 = 1
  end
  if IsInArea(Troop.SEbazooka5, Map_Zone.HelipadArea) then
    if GetPrimaryActionState(Troop.SEbazooka5) == constant.ACTION_STATE_FOLLOWING then
      SEBazooka05Following = 3
    end
    GoToArea(Troop.SEbazooka5, GetObjectXPosition(Waypoint.TeleportSEBazooka05), GetObjectZPosition(Waypoint.TeleportSEBazooka05), 0, 0)
    TeleportSEBazooka05 = 1
  end
  EndFrame()
  SETeleportHack = 1
  SetCamera(Camera.cutscenecam)
  CameraSetFOV(Camera.cutscenecam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraSetFOV(Camera.cutscenecam, 20, constant.SMOOTH, 1, constant.NO_WAIT)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.reinforcements)
  CameraSetTarget(Camera.cutscenecam, Ground_Vehicle.SEaatank2)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  BeginReinforcementCutscene = 1
  LandAirUnit(Air_Vehicle.SEairtransport1, 49, 109, constant.ORDER_FORCED, false, 5, 295)
  WaitFor(1)
  ClearMessageQueue()
  PhoneMessageWithObjective(27, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessage(43, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.SEairtransport1) == constant.MOVEMENT_STATE_ON_GROUND
  CameraSetFOV(Camera.cutscenecam, 20, constant.SMOOTH, 2, constant.NO_WAIT)
  WaitFor(1)
  CameraSetFOV(Camera.cutscenecam, 20, constant.SMOOTH, 2.5, constant.NO_WAIT)
  WaitFor(5)
  CameraSetFOV(Camera.cutscenecam, 20, constant.SMOOTH, 2, constant.NO_WAIT)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  MidCutsceneEnded2 = true
end
