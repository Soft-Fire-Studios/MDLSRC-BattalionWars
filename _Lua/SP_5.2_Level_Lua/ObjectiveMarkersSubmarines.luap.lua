function ObjectiveMarkersSubmarines(owner)
  scriptObjectiveMarkerSubmarines = owner
  local currentobjectivemarker = 0
  local oldobjectivemarker = Objective_Marker.Frigate3
  while true do
    local closestDist = 100000
    local TempDist = 0
    local closestobjectivemarker = 0
    if submarineobjective == 1 then
      SetObjectiveData(currentobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(oldobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      break
    end
    if IsDead(Water_Vehicle.Submarine1) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Submarine1)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Submarine1
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Submarine2) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Submarine2)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Submarine2
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Submarine3) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Submarine3)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Submarine3
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Submarine4) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Submarine4)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Submarine4
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Submarine5) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Submarine5)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Submarine5
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Submarine6) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Submarine6)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Submarine6
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Submarine7) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Submarine7)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Submarine7
        closestDist = TempDist
      end
    end
    if closestobjectivemarker ~= oldobjectivemarker then
      currentobjectivemarker = closestobjectivemarker
      DebugOut("Closest objective has changed. Now - ", currentobjectivemarker)
      SetObjectiveData(oldobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(currentobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      oldobjectivemarker = currentobjectivemarker
    end
    WaitFor(1)
    EndFrame()
  end
end
