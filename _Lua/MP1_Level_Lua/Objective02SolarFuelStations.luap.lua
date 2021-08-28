function Objective02SolarFuelStations(owner)
  local bigfuelstation01 = 0
  local bigfuelstation02 = 0
  local bigfuelstation03 = 0
  local bigfuelstationobjective01 = 0
  local bigfuelstationobjective02 = 0
  local bigfuelstationobjective03 = 0
  while missionend == 0 do
    if bigfuelstation01 == 0 and IsDead(Building.BigFuelStation01) then
      SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(Building.S01B01)
      Kill(Building.S01B02)
      Kill(Building.S01B03)
      EndFrame()
      Kill(Building.S01B04)
      Kill(Building.S01B05)
      Kill(Building.S01B06)
      bigfuelstation01 = 1
      fuelstations = fuelstations + 1
      DebugOut("*FuelStationObjective01* - FuelStation01 is dead")
    end
    EndFrame()
    if bigfuelstation02 == 0 and IsDead(Building.BigFuelStation02) then
      SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(Building.S02B01)
      Kill(Building.S02B02)
      Kill(Building.S02B03)
      EndFrame()
      Kill(Building.S02B04)
      Kill(Building.S02B05)
      Kill(Building.S02B06)
      bigfuelstation02 = 1
      fuelstations = fuelstations + 1
      DebugOut("*FuelStationObjective01* - FuelStation02 is dead")
    end
    EndFrame()
    if bigfuelstation03 == 0 and IsDead(Building.BigFuelStation03) then
      SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(Building.S03B01)
      Kill(Building.S03B02)
      Kill(Building.S03B03)
      EndFrame()
      Kill(Building.S03B04)
      Kill(Building.S03B05)
      Kill(Building.S03B06)
      bigfuelstation03 = 1
      fuelstations = fuelstations + 1
      DebugOut("*FuelStationObjective01* - FuelStation03 is dead")
    end
    EndFrame()
    if fuelstations == 1 and bigfuelstationobjective01 == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(20, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(33, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.AttackSolarFuelStationObjective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AttackSolarFuelStationObjective01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      bigfuelstationobjective01 = 1
      DebugOut("*FuelStationObjective01* - 1 FuelStation has been destroyed")
    end
    EndFrame()
    if fuelstations == 2 and bigfuelstationobjective02 == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(21, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(34, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.AttackSolarFuelStationObjective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AttackSolarFuelStationObjective01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AttackSolarFuelStationObjective02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      bigfuelstationobjective02 = 1
      DebugOut("*FuelStationObjective01* - 2 FuelStations have been destroyed")
    end
    EndFrame()
    if fuelstations == 3 and bigfuelstationobjective03 == 0 then
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectivesResult(true, true, false)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectivesResult(false, false, true)
      end
      SetObjectiveData(Objective.AttackSolarFuelStationObjective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AttackSolarFuelStationObjective01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AttackSolarFuelStationObjective02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AttackSolarFuelStationObjective03, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective0, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.AttackSolarFuelStationObjective03, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.DefendSolarFuelStationObjective0, constant.OBJECTIVE_DATA_STATE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessageWithObjective(22, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessageWithObjective(35, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
      Despawn(Building.DummyCP)
      Spawn(Capture_Point.SolarHQCapturePoint01)
      SetObjectiveData(Objective_Marker.SolarHQ01ObjectiveMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.DefendSolarHQ01ObjectiveMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      WaitFor(0.2)
      SetObjectiveData(Objective.AttackSolarHQ01Objective, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DefendSolarHQ01Objective, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.LegionSpawnZoneMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SolarSpawnZoneMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.LegionSpawnZoneMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SolarSpawnZoneMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.LegionSpawnZone02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SolarSpawnZone02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.LegionSpawnZone03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SolarSpawnZone03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      CurrentPlayer1SpawnX = -20
      CurrentPlayer1SpawnZ = -27
      CurrentPlayer1Dir = 120
      CurrentPlayer2SpawnX = 46
      CurrentPlayer2SpawnZ = -449
      CurrentPlayer2Dir = 30
      fuelstations = 13
      DebugOut("*FuelStationObjective01* - The Fuel Station objective has been completed. All 3 Fuel Stations are destroyed")
      bigfuelstationobjective03 = 1
      break
    end
    EndFrame()
  end
end
