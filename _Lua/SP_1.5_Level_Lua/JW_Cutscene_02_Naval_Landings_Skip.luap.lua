function JW_Cutscene_02_Naval_Landings_Skip(owner)
  repeat
    EndFrame()
  until transports == 2
  Teleport(Water_Vehicle.WesternFrontierSeaTransport02, -515, -20, 90)
  Teleport(Water_Vehicle.WesternFrontierSeaTransport01, -510, -65, 90)
  EndFrame()
  BeachWaterUnit(Water_Vehicle.WesternFrontierSeaTransport02, -479, -20, 90, 1)
  BeachWaterUnit(Water_Vehicle.WesternFrontierSeaTransport01, -465, -65, 90, 1)
  repeat
    EndFrame()
  until TransportLandingCutsceneEnd == 1
  WaitFor(1)
  SetObjectiveData(Objective_Marker.PrimaryObjectEscortTransport01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectEscortTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectEscortTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierSeaTransport, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierSeaTransport1, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierSeaTransport2, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveLandWesternFrontierSeaTransport, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveLandWesternFrontierSeaTransport1, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveLandWesternFrontierSeaTransport2, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveLandWesternFrontierSeaTransport3, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveLandWesternFrontierSeaTransport4, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierSeaTransport, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierSeaTransport1, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierSeaTransport2, constant.OBJECTIVE_DATA_VISIBLE, 0)
  if GetObjectXPosition(Water_Vehicle.SEBattleship01) < -475 then
    Teleport(Water_Vehicle.SEBattleship01, -1400, -250, 90)
  end
  if -475 > GetObjectXPosition(Water_Vehicle.SEBattleship02) then
    Teleport(Water_Vehicle.SEBattleship02, -1300, -250, 90)
  end
  if -475 > GetObjectXPosition(Water_Vehicle.SEFrigate01) then
    Teleport(Water_Vehicle.SEFrigate01, -1200, -250, 90)
  end
  if -475 > GetObjectXPosition(Water_Vehicle.SEFrigate02) then
    Teleport(Water_Vehicle.SEFrigate02, -1100, -250, 90)
  end
  StopAndGuard(Water_Vehicle.SEBattleship01)
  StopAndGuard(Water_Vehicle.SEBattleship02)
  StopAndGuard(Water_Vehicle.SEFrigate01)
  StopAndGuard(Water_Vehicle.SEFrigate02)
  EnableWeapon(Water_Vehicle.SEBattleship01, 1)
  EnableWeapon(Water_Vehicle.SEBattleship02, 1)
  EnableWeapon(Water_Vehicle.SEFrigate01, 1)
  EnableWeapon(Water_Vehicle.SEFrigate02, 1)
  Teleport(Water_Vehicle.SEBattleship01, LandingTeleport04X, LandingTeleport04Z, 90)
  Teleport(Water_Vehicle.SEBattleship02, LandingTeleport05X, LandingTeleport05Z, 90)
  Teleport(Water_Vehicle.SEFrigate01, LandingTeleport06X, LandingTeleport06Z, 90)
  Teleport(Water_Vehicle.SEFrigate02, LandingTeleport07X, LandingTeleport07Z, 90)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Water_Vehicle.SEBattleship01, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Water_Vehicle.SEBattleship02, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Water_Vehicle.SEFrigate01, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Water_Vehicle.SEFrigate02, GetPlayerUnit(), 15, constant.ORDER_FORCED)
  end
  Despawn(Ground_Vehicle.NavalCutsceneTank01)
  Despawn(Ground_Vehicle.NavalCutsceneTank02)
  Spawn(Air_Vehicle.AngloBomber06)
  DebugOut("Checking for Transports to die or be empty")
  repeat
    EndFrame()
  until (NumPassengersInUnit(Water_Vehicle.WesternFrontierSeaTransport01) < 6 or IsDead(Water_Vehicle.WesternFrontierSeaTransport01)) and (NumPassengersInUnit(Water_Vehicle.WesternFrontierSeaTransport02) < 6 or IsDead(Water_Vehicle.WesternFrontierSeaTransport02))
  DebugOut("Removing Transports, spawning in Fake ones")
  EndFrame()
  Teleport(Troop.WesternFrontierGrunt01, -460, -65, 90, 7)
  Teleport(Troop.WesternFrontierGrunt02, -460, -65, 90, 7)
  Teleport(Troop.WesternFrontierGrunt03, -460, -65, 90, 7)
  Teleport(Troop.WesternFrontierGrunt04, -460, -65, 90, 7)
  Teleport(Troop.WesternFrontierGrunt05, -460, -65, 90, 7)
  Teleport(Troop.WesternFrontierGrunt06, -460, -65, 90, 7)
  Teleport(Troop.WesternFrontierGrunt07, -465, -35, 90, 7)
  Teleport(Troop.WesternFrontierGrunt08, -465, -35, 90, 7)
  Teleport(Troop.WesternFrontierGrunt09, -465, -35, 90, 7)
  Teleport(Troop.WesternFrontierGrunt10, -465, -35, 90, 7)
  Teleport(Troop.WesternFrontierGrunt11, -465, -35, 90, 7)
  Teleport(Troop.WesternFrontierGrunt12, -465, -35, 90, 7)
  Despawn(Troop.WesternFrontierSeaTransport01Occupant)
  Despawn(Troop.WesternFrontierSeaTransport02Occupant)
  if IsDead(Water_Vehicle.WesternFrontierSeaTransport01) == false then
    Despawn(Water_Vehicle.WesternFrontierSeaTransport01)
    Spawn(Building.WesternFrontierSeaTransportBeached02)
  end
  if IsDead(Water_Vehicle.WesternFrontierSeaTransport02) == false then
    Despawn(Water_Vehicle.WesternFrontierSeaTransport02)
    Spawn(Building.WesternFrontierSeaTransportBeached01)
  end
  TransportLandingCutsceneEnd = 2
end
