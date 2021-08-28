function Objective01FuelStorage(owner)
  repeat
    EndFrame()
  until IsDead(Building.XAmmoDump01)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessageWithObjective(19, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(20, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_TWO, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  if IsInArea(Ground_Vehicle.XylvanianFuelStationHeavyTank01, Map_Zone.FuelStationBoundary) then
    Kill(Ground_Vehicle.XylvanianFuelStationHeavyTank01)
  end
  EndFrame()
  if IsInArea(Ground_Vehicle.XylvanianFuelStationHeavyTank02, Map_Zone.FuelStationBoundary) then
    Kill(Ground_Vehicle.XylvanianFuelStationHeavyTank02)
  end
  EndFrame()
  if IsInArea(Ground_Vehicle.XylvanianFuelStationHeavyTank03, Map_Zone.FuelStationBoundary) then
    Kill(Ground_Vehicle.XylvanianFuelStationHeavyTank03)
  end
  EndFrame()
  if IsInArea(Ground_Vehicle.XylvanianFuelStationHeavyTank04, Map_Zone.FuelStationBoundary) then
    Kill(Ground_Vehicle.XylvanianFuelStationHeavyTank04)
  end
  EndFrame()
  if IsInArea(Ground_Vehicle.XylvanianFuelStationHeavyTank05, Map_Zone.FuelStationBoundary) then
    Kill(Ground_Vehicle.XylvanianFuelStationHeavyTank05)
  end
  EndFrame()
  if IsInArea(Ground_Vehicle.XylvanianFuelStationHeavyTank06, Map_Zone.FuelStationBoundary) then
    Kill(Ground_Vehicle.XylvanianFuelStationHeavyTank06)
  end
  EndFrame()
  Kill(Building.RPGTower03)
  Kill(Building.RPGTower04)
  SetObjectiveData(Objective_Marker.FuelDepotMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.FuelDepot01, constant.OBJECTIVE_DATA_STATE, 1)
  PhoneMessage(21, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad)
  fuelstorage = 1
  PowerObjectivesCompleted = PowerObjectivesCompleted + 1
end
