function MP3_Towers(owner)
  local Turbine01IsDead = 0
  local Turbine02IsDead = 0
  local Turbine03IsDead = 0
  local RefuelStation01DeadObjective = 0
  local RefuelStation02DeadObjective = 0
  local RefuelStation03DeadObjective = 0
  SetUnitInvulnerable(Building.Turbine01, true)
  SetUnitInvulnerable(Building.Turbine02, true)
  SetUnitInvulnerable(Building.Turbine03, true)
  SetActive(Capture_Point.Helipad01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Capture_Point.Helipad02, constant.INACTIVE, constant.ADJUST_WEAPON)
  while true do
    if IsDead(Building.Turbine01) and Turbine01IsDead == 0 then
      Turbine01IsDead = 1
      NumberOfRefuelStationDead = NumberOfRefuelStationDead + 1
      DebugOut("Number of Refuel Stations Destroyed = ", NumberOfRefuelStationDead)
      SetObjectiveData(Objective_Marker.P1tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.P2tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Building.Turbine02) and Turbine02IsDead == 0 then
      Turbine02IsDead = 1
      NumberOfRefuelStationDead = NumberOfRefuelStationDead + 1
      DebugOut("Number of Refuel Stations Destroyed = ", NumberOfRefuelStationDead)
      SetObjectiveData(Objective_Marker.P1tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.P2tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Building.Turbine03) and Turbine03IsDead == 0 then
      Turbine03IsDead = 1
      NumberOfRefuelStationDead = NumberOfRefuelStationDead + 1
      DebugOut("Number of Refuel Stations Destroyed = ", NumberOfRefuelStationDead)
      SetObjectiveData(Objective_Marker.P1tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.P2tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if NumberOfRefuelStationDead == 1 and RefuelStation01DeadObjective == 0 then
      RefuelStation01DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(22, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        SetObjectiveData(Objective.P1Refuel, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1Refuel01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(72, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        SetObjectiveData(Objective.P2Refuel, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2Refuel01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if NumberOfRefuelStationDead == 2 and RefuelStation02DeadObjective == 0 then
      RefuelStation02DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(23, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        SetObjectiveData(Objective.P1Refuel01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1Refuel02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(73, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        SetObjectiveData(Objective.P2Refuel01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2Refuel02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if NumberOfRefuelStationDead == 3 and RefuelStation03DeadObjective == 0 then
      RefuelStation03DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectiveData(Objective.P1Refuel02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1Refuel03, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.P1Refuel03, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectiveData(Objective.P2Refuel02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2RefuelFailed, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.P2RefuelFailed, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      SetActive(Capture_Point.Helipad01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Capture_Point.Helipad02, constant.ACTIVE, constant.ADJUST_WEAPON)
    end
    EndFrame()
  end
end
