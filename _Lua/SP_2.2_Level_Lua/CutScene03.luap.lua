function CutScene03(owner)
  AbortCutscene03 = owner
  repeat
    EndFrame()
  until Objective02 == 1
  playerincutscene = true
  FreezePlayer(0)
  SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  PauseTimerActive = 1
  StartOutro()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsInArea(Ground_Vehicle.TundranHeavyTank05, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Ground_Vehicle.TundranHeavyTank05, 50, -597, 180, 20)
  end
  if IsInArea(Troop.TundranBazookaVet14, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.TundranBazookaVet14, 50, -597, 180, 20)
  end
  if IsInArea(Troop.TundranBazookaVet15, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.TundranBazookaVet15, 50, -597, 180, 20)
  end
  if IsInArea(Troop.TundranBazookaVet16, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.TundranBazookaVet16, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFAAVet05, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFAAVet05, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFAAVet08, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFAAVet08, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFAAVet07, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFAAVet07, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFAAVet06, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFAAVet06, 50, -597, 180, 20)
  end
  if IsInArea(Troop.Entity330103992, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.Entity330103992, 50, -597, 180, 20)
  end
  if IsInArea(Troop.Entity330103991, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.Entity330103991, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFGrunt05, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFGrunt05, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFGrunt06, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFGrunt06, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFGrunt01, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFGrunt01, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFGrunt02, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFGrunt02, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFGrunt03, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFGrunt03, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFGrunt04, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFGrunt04, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFGrunt05, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFGrunt05, 50, -597, 180, 20)
  end
  if IsInArea(Troop.WFGrunt06, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Troop.WFGrunt06, 50, -597, 180, 20)
  end
  if IsInArea(Ground_Vehicle.WFArtillery01, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Ground_Vehicle.WFArtillery01, 50, -597, 180, 20)
  end
  if IsInArea(Ground_Vehicle.WFArtillery02, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Ground_Vehicle.WFArtillery02, 50, -597, 180, 20)
  end
  if IsInArea(Ground_Vehicle.WFArtillery03, Map_Zone.CutSceneTeleportMapZone) then
    Teleport(Ground_Vehicle.WFArtillery03, 50, -597, 180, 20)
  end
  SetObjectiveData(Objective.CaptureAirbase, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.CaptureAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.FreePowsInTheAirbase, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.FreePowsInTheAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  ClearMessageQueue()
  SetCamera(Camera.IntroductionCutsceneCamera04)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  StartedCutscene03 = 1
  PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  WaitFor(1)
  Kill(Destroyable_Object.ElectroMagneticGate01)
  Kill(Destroyable_Object.ElectroMagneticGate02)
  Kill(Destroyable_Object.ElectroMagneticGate03)
  Kill(Destroyable_Object.ElectroMagneticGate04)
  WaitFor(1)
  DestroyablePlayAnim(Destroyable_Object.ElectroMagneticGateFall01, 1, 2)
  DestroyablePlayAnim(Destroyable_Object.ElectroMagneticGateFall02, 1, 2)
  DestroyablePlayAnim(Destroyable_Object.ElectroMagneticGateFall03, 1, 2)
  DestroyablePlayAnim(Destroyable_Object.ElectroMagneticGateFall04, 1, 2)
  CameraShake(Camera.IntroductionCutsceneCamera04, 0.5)
  Kill(Building.Entity570014595)
  Kill(Building.Entity570014596)
  WaitFor(1)
  CameraShake(Camera.IntroductionCutsceneCamera04, 0.5)
  Kill(Building.Entity570014236)
  Kill(Building.Entity570014247)
  WaitFor(0.5)
  CameraShake(Camera.IntroductionCutsceneCamera04, 0.5)
  Kill(Building.Entity570014235)
  Kill(Building.Entity570014246)
  WaitFor(0.5)
  CameraShake(Camera.IntroductionCutsceneCamera04, 0.5)
  Kill(Building.Entity570014234)
  Kill(Building.Entity570014245)
  WaitFor(0.5)
  CameraShake(Camera.IntroductionCutsceneCamera04, 0.5)
  Kill(Building.Entity570014238)
  Kill(Building.Entity570014248)
  WaitFor(0.5)
  CameraShake(Camera.IntroductionCutsceneCamera04, 0.5)
  Kill(Building.Unknown01)
  Kill(Building.Entity570014250)
  WaitFor(3)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  SetCamera(Camera.IntroductionCutsceneCamera)
  CameraSetFOV(Camera.IntroductionCutsceneCamera, 60, constant.IMMEDIATE, 100, constant.NO_WAIT)
  CameraSetWaypoint(Camera.IntroductionCutsceneCamera, Waypoint.Entity330104671)
  CameraSetTarget(Camera.IntroductionCutsceneCamera, Waypoint.IntroductionCutscene03Target01)
  Spawn(Troop.TundranFlamer01)
  Spawn(Troop.TundranFlamer02)
  Spawn(Troop.TundranFlamer03)
  Spawn(Troop.TundranFlamer04)
  Spawn(Troop.TundranAntiAirVet01)
  Spawn(Troop.TundranAntiAirVet02)
  Spawn(Troop.TundranAntiAirVet03)
  Spawn(Troop.TundranAntiAirVet04)
  Spawn(Troop.TundranChainVet01)
  Spawn(Troop.TundranChainVet02)
  Spawn(Troop.TundranChainVet03)
  Spawn(Troop.TundranChainVet04)
  GoToArea(Troop.TundranAntiAirVet01, 131, -85, 5, 0, constant.ORDER_FORCED)
  GoToArea(Troop.TundranAntiAirVet02, 121, -84, 5, 0, constant.ORDER_FORCED)
  GoToArea(Troop.TundranAntiAirVet03, 112, -84, 5, 0, constant.ORDER_FORCED)
  GoToArea(Troop.TundranAntiAirVet04, 100, -85, 5, 0, constant.ORDER_FORCED)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(72, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  PhoneMessageWithObjective(73, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  GoToArea(Air_Vehicle.TundranGunship01, 121, 25, 5, 0, constant.ORDER_FORCED)
  WaitFor(7)
  Spawn(Troop.TGunship03Occupant01)
  PutUnitInVehicle(Troop.TGunship03Occupant01, Air_Vehicle.TundranGunship03, 0)
  GoToArea(Air_Vehicle.TundranGunship03, 88, -155, 15, 0, constant.ORDER_NORMAL)
  WaitFor(1)
  Spawn(Troop.TGunship02Occupant01)
  PutUnitInVehicle(Troop.TGunship02Occupant01, Air_Vehicle.TundranGunship02, 0)
  GoToArea(Air_Vehicle.TundranGunship02, 88, -155, 15, 0, constant.ORDER_NORMAL)
  WaitFor(6)
  EndCutscene03 = 1
end
