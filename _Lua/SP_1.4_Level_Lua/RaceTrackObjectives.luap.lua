function RaceTrackObjectives(owner)
  scriptRaceTrackObjectives = owner
  local route = 1
  local updateobjectives = 0
  repeat
    EndFrame()
  until gotrecon == 1
  while route < 14 do
    while route < 2 do
      if IsInRange(Objective_Marker.RaceRoute1, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Ground_Vehicle.SolarRecon, Map_Zone.RaceRoute1) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        updateobjectives = 1
        route = 2
      end
      EndFrame()
    end
    while route < 3 do
      if IsInRange(Objective_Marker.RaceRoute2, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Ground_Vehicle.SolarRecon, Map_Zone.RaceRoute2) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        route = 3
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 4 do
      if IsInRange(Objective_Marker.RaceRoute3, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Ground_Vehicle.SolarRecon, Map_Zone.RaceRoute3) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        route = 4
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 5 do
      if IsInRange(Objective_Marker.RaceRoute4, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Ground_Vehicle.SolarRecon, Map_Zone.RaceRoute4) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Admiral, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Admiral, constant.OBJECTIVE_DATA_VISIBLE, 1)
        route = 5
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 6 do
      if IsInRange(Objective_Marker.RaceRoute5, GetPlayerUnit(constant.PLAYER_ONE), 5) or admiralinjeep == 1 then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        route = 6
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 7 do
      if IsInRange(Objective_Marker.RaceRoute6, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Troop.Admiral, Map_Zone.RaceRoute6) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RuinsRockets, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        repeat
          EndFrame()
        until ruinsrockets == 1
        SetObjectiveData(Objective_Marker.RuinsRockets, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RuinsRockets, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        route = 7
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 8 do
      if IsInRange(Objective_Marker.RaceRoute7, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Troop.Admiral, Map_Zone.RaceRoute7) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        route = 8
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 9 do
      if IsInRange(Objective_Marker.RaceRoute8, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Troop.Admiral, Map_Zone.RaceRoute8) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        ClearMessageQueue()
        PhoneMessage(66, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        SetObjectiveData(Objective_Marker.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        route = 9
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 10 do
      if IsInRange(Objective_Marker.RaceRoute9, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Troop.Admiral, Map_Zone.RaceRoute9) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TopHillRockets, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        repeat
          EndFrame()
        until tophillrockets == 1
        SetObjectiveData(Objective_Marker.TopHillRockets, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.TopHillRockets, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        route = 10
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 11 do
      if IsInRange(Objective_Marker.RaceRoute10, GetPlayerUnit(constant.PLAYER_ONE), 20) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        route = 11
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 12 do
      if IsInRange(Objective_Marker.RaceRoute11, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Troop.Admiral, Map_Zone.RaceRoute11) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        route = 12
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 13 do
      if IsInRange(Objective_Marker.RaceRoute12, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Troop.Admiral, Map_Zone.RaceRoute12) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute13, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RaceRoute13, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        route = 13
        updateobjectives = 1
      end
      EndFrame()
    end
    while route < 14 do
      if IsInRange(Objective_Marker.RaceRoute13, GetPlayerUnit(constant.PLAYER_ONE), 5) or IsInArea(Troop.Admiral, Map_Zone.RaceRoute13) then
        SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RaceRoute13, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute13, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.BottomHillRockets, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.BottomHillRockets, constant.OBJECTIVE_DATA_VISIBLE, 0)
        route = 14
        updateobjectives = 1
      end
      EndFrame()
    end
    EndFrame()
    if updateobjectives == 1 then
      SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      if route > 2 then
        SetObjectiveData(Objective_Marker.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 3 then
        SetObjectiveData(Objective_Marker.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 4 then
        SetObjectiveData(Objective_Marker.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 5 then
        SetObjectiveData(Objective_Marker.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 6 then
        SetObjectiveData(Objective_Marker.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 7 then
        SetObjectiveData(Objective_Marker.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 8 then
        SetObjectiveData(Objective_Marker.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 9 then
        SetObjectiveData(Objective_Marker.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 10 then
        SetObjectiveData(Objective_Marker.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 11 then
        SetObjectiveData(Objective_Marker.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 12 then
        SetObjectiveData(Objective_Marker.RaceRoute12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if route > 13 then
        SetObjectiveData(Objective_Marker.RaceRoute13, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RaceRoute13, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      updateobjectives = 0
    end
  end
end
