function Cutscene_Mid_Artillery_Objective(owner)
  MidCutsceneArtilleryObjective = owner
  repeat
    EndFrame()
  until ArtilleryJoined == 1
  if NavalGunsStart == 0 then
    SetObjectiveData(Objective.RescueArtillery22, constant.OBJECTIVE_DATA_VISIBLE, 1)
    MidCutsceneArtilleryObjectiveStart = 1
    CutsceneIsPlaying = 1
    HideHUD = 1
    FreezePlayer(constant.PLAYER_ONE)
    SetInvulnerable(flag.TYPE_SOLAR, 1)
    SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
    PauseTimerActive = 1
    StartIntro()
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    SetWaterRenderEnable(false)
    SetViewDistanceAdjustment(300, 5)
    SetActive(Ground_Vehicle.ILArtillery01, constant.ACTIVE, constant.ADJUST_WEAPON)
    AddToGroup(Unit_Group.PlayerUnits, Ground_Vehicle.ILArtillery01)
    SetActive(Ground_Vehicle.ILArtillery02, constant.ACTIVE, constant.ADJUST_WEAPON)
    AddToGroup(Unit_Group.PlayerUnits, Ground_Vehicle.ILArtillery02)
    SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
    CameraSetWaypoint(Camera.CutsceneCam, Waypoint.MidCutsceneArtilleryObjectiveShot1Spline)
    CameraSetTarget(Camera.CutsceneCam, Waypoint.MidCutsceneArtilleryObjectiveShot1Target)
    CameraSetFOV(Camera.CutsceneCam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetFOV(Camera.CutsceneCam, 0, constant.SMOOTH, 3, constant.NO_WAIT)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    ClearMessageQueue()
    PhoneMessageWithObjective(9, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
    WaitFor(4.5)
    if IsDead(Air_Vehicle.SEGunship01) and IsReadyToRevive(Air_Vehicle.SEGunship01) and IsReadyToRevive(Troop.SEGunship01Pilot) then
      ReviveDeadUnit(Air_Vehicle.SEGunship01, -95.252, 27.418, 50, 0)
      repeat
        EndFrame()
      until IsDead(Air_Vehicle.SEGunship01) == false
      ReviveDeadUnit(Troop.SEGunship01Pilot, 425, 1250, 0, 10)
      EndFrame()
      PutUnitInVehicle(Troop.SEGunship01Pilot, Air_Vehicle.SEGunship01, 0)
    else
      Teleport(Air_Vehicle.SEGunship01, -95.252, 27.418, 50, 0)
      SetHealthPercent(Air_Vehicle.SEGunship01, 100)
    end
    EndFrame()
    FollowWaypoint(Air_Vehicle.SEGunship01, Waypoint.SEGunship05Path, 0, 0, constant.ORDER_FORCED)
    WaitFor(1)
    if IsDead(Air_Vehicle.SEGunship02) and IsReadyToRevive(Air_Vehicle.SEGunship02) and IsReadyToRevive(Troop.SEGunship02Pilot) then
      ReviveDeadUnit(Air_Vehicle.SEGunship02, -95.252, 27.418, 50, 0)
      repeat
        EndFrame()
      until IsDead(Air_Vehicle.SEGunship02) == false
      ReviveDeadUnit(Troop.SEGunship02Pilot, 425, 1250, 0, 10)
      EndFrame()
      PutUnitInVehicle(Troop.SEGunship02Pilot, Air_Vehicle.SEGunship02, 0)
    else
      Teleport(Air_Vehicle.SEGunship02, -95.252, 27.418, 50, 0)
      SetHealthPercent(Air_Vehicle.SEGunship02, 100)
    end
    EndFrame()
    FollowWaypoint(Air_Vehicle.SEGunship02, Waypoint.SEGunship08Path, 0, 0, constant.ORDER_FORCED)
    repeat
      EndFrame()
    until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    MidCutsceneArtilleryObjectiveEnd = 1
  else
    PhoneMessage(11, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
    SetObjectiveData(Objective.POWArtillery, constant.OBJECTIVE_DATA_STATE, 1)
    SetObjectiveData(Objective_Marker.POWArtillery, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetActive(Ground_Vehicle.ILArtillery01, constant.ACTIVE, constant.ADJUST_WEAPON)
    AddToGroup(Unit_Group.PlayerUnits, Ground_Vehicle.ILArtillery01)
    SetActive(Ground_Vehicle.ILArtillery02, constant.ACTIVE, constant.ADJUST_WEAPON)
    AddToGroup(Unit_Group.PlayerUnits, Ground_Vehicle.ILArtillery02)
    SetUnitInvulnerable(Ground_Vehicle.ILArtillery01, false)
    SetUnitInvulnerable(Ground_Vehicle.ILArtillery02, false)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Ground_Vehicle.ILArtillery01, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
      FollowUnit(Ground_Vehicle.ILArtillery02, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
    end
  end
end
